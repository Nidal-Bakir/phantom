import 'dart:developer';

import 'package:phantom/core/data/database/database.dart';
import 'package:phantom/core/data/database/database_table.dart';

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
  /// Returns raw result from the database (list of map) contain list of songs
  Future<List<Map<String, Object?>>> querySongsFromLocalDatabase({
    SongSortType songSortType = SongSortType.songName,
    SongOrderType songOrderType = SongOrderType.asc,
    int? limit,
    int? offset,
  });

  /// Returns raw result from the database (list of map) contain list of
  /// `{album_id : artwork}` where each song correspond to one or Zero artwork
  /// based on their album id.
  ///
  /// Query artworks separately DO NOT use any join between tables it will drop
  /// the performance.
  /// Tested using left join and the query execution time was `4000~ MS` NO Good!.
  /// If we query each thing separately the execution time for both <= `500~ MS`.
  Future<List<Map<String, Object?>>> queryArtworksForSongsAlbumIds(
      Set<int> songsAlbumIds);
}

class LocalSongDataSourceImp extends LocalSongDataSource {
  const LocalSongDataSourceImp();

  @override
  Future<List<Map<String, Object?>>> queryArtworksForSongsAlbumIds(
      Set<int> songsAlbumIds) async {
    final db = await LocalDatabase.openLocalDatabase();

    final rawQuery = '''SELECT * FROM ${ArtworkTable.tableName}
          WHERE ${ArtworkTable.albumId} IN (${songsAlbumIds.join(',')})
        ''';

    return await db.rawQuery(rawQuery);
  }

  @override
  Future<List<Map<String, Object?>>> querySongsFromLocalDatabase({
    SongSortType songSortType = SongSortType.songName,
    SongOrderType songOrderType = SongOrderType.asc,
    int? limit,
    int? offset,
  }) async {
    final db = await LocalDatabase.openLocalDatabase();

    return await db.rawQuery(
      _songsQueryBuilder(
        limit: limit,
        offset: offset,
        songOrderType: songOrderType,
        songSortType: songSortType,
      ),
    );
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
