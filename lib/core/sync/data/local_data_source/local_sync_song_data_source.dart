import 'package:phantom/core/data/database/database.dart';
import 'package:phantom/core/data/database/database_table.dart';
import 'package:phantom/core/models/song/song.dart';
import 'package:sqflite/sqflite.dart';

abstract class LocalSyncSongDataSource {
  const LocalSyncSongDataSource();

  /// add new songs to local database
  Future<void> addSongs(List<Song> newSongs);

  /// delete songs from local db
  Future<void> deleteSongs(List<Song> songs);

  /// delete songs from local db using there ids
  Future<void> deleteSongsUsingId(Set<int> songs);

  /// get all songs ids from local database
  Future<Set<int>> getAllSongsIds();
}

class LocalSongDataSourceImp extends LocalSyncSongDataSource implements SongTable {
  const LocalSongDataSourceImp();
  @override
  Future<void> addSongs(List<Song> newSongs) async {
    var db = await LocalDatabase.openLocalDatabase();

    var batch = db.batch();
    for (Song song in newSongs) {
      batch.insert(SongTable.tableName, song.toJson(),
          conflictAlgorithm: ConflictAlgorithm.abort);
    }
    await batch.commit(
      noResult: true,
    );
  }

  @override
  Future<void> deleteSongs(List<Song> songs) async {
    await deleteSongsUsingId(songs.map((e) => e.id).toSet());
  }

  @override
  Future<void> deleteSongsUsingId(Set<int> songs) async {
    var db = await LocalDatabase.openLocalDatabase();
    var batch = db.batch();
    for (int songId in songs) {
      batch.delete(
        SongTable.tableName,
        where: '${SongTable.id} = ?',
        whereArgs: [songId],
      );
    }
    await batch.commit(noResult: true);
  }

  @override
  Future<Set<int>> getAllSongsIds() async {
    var db = await LocalDatabase.openLocalDatabase();
    // get ids for all local songs
    var localIdSongsMap =
        await db.query(SongTable.tableName, columns: [SongTable.id]);

    return localIdSongsMap.map((e) => e[SongTable.id] as int).toSet();
  }
}
