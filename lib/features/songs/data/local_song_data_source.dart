import 'dart:collection';
import 'dart:typed_data';

import 'package:phantom/core/data/database/database.dart';
import 'package:phantom/core/data/database/database_table.dart';
import 'package:phantom/core/models/song/song.dart';
import 'package:phantom/core/models/songs_container/songs_container.dart';

enum SongSortType {
  songName,
  artistName,
  dateAdded,
}
enum SongOrderType {
  asc,
  desc,
}

abstract class LocalSongDataSource {
  const LocalSongDataSource();

  /// Query songs from the database.
  /// * [songSortType] based on what the sort will be.
  /// * [songOrderType] the order type [ASC] or [DESC].
  /// * [limit] set a limit of how many songs to query from database.
  /// * [offset] specifies the starting index.
  ///
  /// Returns [SongsContainer] contain list of [Song] and map of album artworks,
  /// where each song correspond to one or none artwork based on their album id.
  Future<SongsContainer> querySongsFromLocalDatabase({
    SongSortType songSortType = SongSortType.songName,
    SongOrderType songOrderType = SongOrderType.asc,
    int? limit,
    int? offset,
  });
}

class LocalSongDataSourceImp extends LocalSongDataSource {
  const LocalSongDataSourceImp();

  @override
  Future<SongsContainer> querySongsFromLocalDatabase({
    SongSortType songSortType = SongSortType.songName,
    SongOrderType songOrderType = SongOrderType.asc,
    int? limit,
    int? offset,
  }) async {
    final db = await LocalDatabase.openLocalDatabase();

    final songs = await db.rawQuery(
      _songsQueryBuilder(
        limit: limit,
        offset: offset,
        songOrderType: songOrderType,
        songSortType: songSortType,
      ),
    );
    // query artworks separately DO NOT use any join between tables it will drop
    // the performance.
    // tested using left join and the query execution time was 4000~MS NO Good
    // If we query each thing separately the execution time for both <= 500~MS.
    final artworks = await db.rawQuery(_artworkQueryBuilder(songs));

    final Map<int, Uint8List?> tempAlbumArtworkBuffer = {};
    final tempSongsBuffer = <Song>[];

    for (var song in songs) {
      // if a song do not has album id then it do not has artwork
      if (song[SongTable.albumId] != null) {
        // get the corresponding artwork for this song
        final artworkRow = artworks.firstWhere((artRow) =>
            artRow[ArtworkTable.albumId] == song[SongTable.albumId]);

        final artwork = artworkRow[ArtworkTable.albumArtwork] as Uint8List?;
        final artworkAlbumId = artworkRow[ArtworkTable.albumId] as int;

        // by checking that the art is not empty we avoid a bug in flutter
        // the bug happens specifically for android 5.1 api level 23, causing
        // the app to crash immediately when flutter try to paint the image.

        // we should report the bug but still cannot find a way to reproduce it
        // without database because the db give us the uing8list (_Uint8ArrayList)
        // with some wrong bytes perhaps or some bug in the actual _Uint8ArrayList,
        // sill cannot find a way to reproduce the same bytes!.
        if (artwork != null && artwork.isNotEmpty) {
          tempAlbumArtworkBuffer.putIfAbsent(artworkAlbumId, () => artwork);
        }
      }

      tempSongsBuffer.add(Song.fromJson(song));
    }

    return SongsContainer(
        albumArtwork: tempAlbumArtworkBuffer,
        songs: UnmodifiableListView(tempSongsBuffer));
  }

  String _convertSongOrderTypeToColumnName(SongSortType sortType) {
    var columnName = SongTable.title;
    switch (sortType) {
      case SongSortType.songName:
        columnName = SongTable.title;
        break;
      case SongSortType.artistName:
        columnName = SongTable.artist;
        break;
      case SongSortType.dateAdded:
        columnName = SongTable.dateAdded;
        break;
    }
    return columnName;
  }

  String _songsQueryBuilder({
    SongSortType songSortType = SongSortType.songName,
    SongOrderType songOrderType = SongOrderType.asc,
    int? limit,
    int? offset,
  }) {
    final orderByColumn = _convertSongOrderTypeToColumnName(songSortType);

    final orderType = songOrderType == SongOrderType.asc ? 'ASC' : 'DESC';

    var rawQuery = '''SELECT * FROM ${SongTable.tableName}
     ORDER BY song.$orderByColumn $orderType 
     ''';

    if (limit != null) {
      rawQuery = rawQuery + ' LIMIT $limit ';
    }
    if (offset != null) {
      rawQuery = rawQuery + ' OFFSET $offset ';
    }
    return rawQuery;
  }

  String _artworkQueryBuilder(List<Map<String, Object?>> songs) {
    final albumIds = songs
        .where((e) => e[SongTable.albumId] != null)
        .map((e) => e[SongTable.albumId] as int)
        .toSet();
    final rawQuery = '''SELECT * FROM ${ArtworkTable.tableName}
          WHERE ${ArtworkTable.albumId} IN (${albumIds.join(',')})
        ''';

    return rawQuery;
  }
}
