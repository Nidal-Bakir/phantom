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

    final orderByColumn = _convertSongOrderTypeToColumnName(songSortType);

    final orderType = songOrderType == SongOrderType.asc ? 'ASC' : 'DESC';

    // get songs with their artwork if they have one
    var rawQuery = '''SELECT * FROM ${SongTable.tableName} AS song
     LEFT JOIN ${ArtworkTable.tableName} AS art ON
     song.${SongTable.albumId} = art.${ArtworkTable.albumId}
     ORDER BY song.$orderByColumn $orderType 
     ''';

    if (limit != null) {
      rawQuery = rawQuery + ' LIMIT $limit ';
    }
    if (offset != null) {
      rawQuery = rawQuery + ' OFFSET $offset ';
    }
    final songs = await db.rawQuery(rawQuery);

    final Map<int, Uint8List?> tempAlbumArtworkBuffer = {};
    final tempSongsBuffer = <Song>[];

    for (var song in songs) {
      // if a song do not has album id then it do not has artwork
      if (song[SongTable.albumId] != null) {
        tempAlbumArtworkBuffer.putIfAbsent(song[ArtworkTable.albumId] as int,
            () => song[ArtworkTable.albumArtwork] as Uint8List?);
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
}
