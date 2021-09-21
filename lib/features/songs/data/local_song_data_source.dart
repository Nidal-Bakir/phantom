import 'package:phantom/core/data/database/database.dart';
import 'package:phantom/core/data/database/database_table.dart';
import 'package:phantom/core/models/song/song.dart';

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
  /// Query songs from the database.
  /// * [songSortType] the orderBy column when query the songs.
  /// * [songOrderType] the order type [ASC] or [DESC].
  /// * [limit] set a limit of how many songs to query from database.
  ///
  /// Returns Stream of [Song]s from the database.
  Stream<Song> querySongsFromLocalDatabase({
    SongSortType songSortType = SongSortType.songName,
    SongOrderType songOrderType = SongOrderType.asc,
    int? limit,
    int? offset,
  });
}

class LocalSongDataSourceImp extends LocalSongDataSource {
  @override
  Stream<Song> querySongsFromLocalDatabase({
    SongSortType songSortType = SongSortType.songName,
    SongOrderType songOrderType = SongOrderType.asc,
    int? limit,
    int? offset,
  }) async* {
    var db = await LocalDatabase.openLocalDatabase();

    var orderByColumn = _convertSongOrderTypeToColumnName(songSortType);

    var orderType = songOrderType == SongOrderType.asc ? 'ASC' : 'DESC';

    yield* db
        .query(
          SongTable.tableName,
          limit: limit,
          offset: offset,
          orderBy: '"$orderByColumn" $orderType',
        )
        .asStream()
        .expand((element) => element)
        .map((event) => Song.fromJson(event));
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
