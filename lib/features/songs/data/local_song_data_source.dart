import 'package:phantom/core/data/database/database.dart';
import 'package:phantom/core/data/database/database_table.dart';
import 'package:phantom/core/util/sort.dart';

abstract class LocalSongDataSource {
  const LocalSongDataSource();

  /// Query songs from the database.
  /// * [sort]:
  ///   * [songSortType] based on what the sort will be.
  ///   * [songOrderType] the order type [ASC] or [DESC].
  /// * [limit] set a limit of how many songs to query from database.
  /// * [offset] specifies the starting index.
  ///
  /// Returns raw result from the database (list of map) contain list of songs
  Future<List<Map<String, Object?>>> querySongsFromLocalDatabase({
    Sort sort = const Sort(
      orderType: SongOrderType.asc,
      sortType: SongSortType.songName,
    ),
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
  Future<List<Map<String, Object?>>> queryArtworksForAllSongs();
}

class LocalSongDataSourceImp extends LocalSongDataSource {
  const LocalSongDataSourceImp();


  @override
  Future<List<Map<String, Object?>>> querySongsFromLocalDatabase({
    Sort sort = const Sort(
      orderType: SongOrderType.asc,
      sortType: SongSortType.songName,
    ),
    int? limit,
    int? offset,
  }) async {
    final db = await LocalDatabase.openLocalDatabase();

    return await db.rawQuery(
      _songsQueryBuilder(
        limit: limit,
        offset: offset,
        sort: sort,
      ),
    );
  }

  String _songsQueryBuilder({
    required Sort sort,
    int? limit,
    int? offset,
  }) {
    final orderByColumn = _convertSongOrderTypeToColumnName(sort.sortType);

    final orderType = sort.orderType == SongOrderType.asc ? 'ASC' : 'DESC';

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

  @override
  Future<List<Map<String, Object?>>> queryArtworksForAllSongs() async {
    final db = await LocalDatabase.openLocalDatabase();

    return db.query(ArtworkTable.tableName);
  }
}
