import 'package:phantom/core/data/database/database.dart';
import 'package:phantom/core/data/database/database_table.dart';
import 'package:phantom/core/models/song/song.dart';
import 'package:sqflite/utils/utils.dart';
import 'package:sqflite_common/sqlite_api.dart';

abstract class QueueDataSource {
  Future<void> setQueue(Iterable<Song> queueSong);

  /// Returns raw result from the database (list of map) contain list of
  /// `{album_id : artwork}` for this [songsAlbumIds], where each song correspond
  ///  to one or Zero artwork based on their album id.
  ///
  /// Query artworks separately DO NOT use any join between tables it will drop
  /// the performance.
  /// Tested using left join and the query execution time was `4000~ MS` NO Good!.
  /// If we query each thing separately the execution time for both <= `500~ MS`.
  ///
  /// ``coped from [LocalSongDataSource.queryArtworksForAllSongs]``
  Future<List<Map<String, Object?>>> queryArtworksForSongsAlbumIds(
      Set<int> songsAlbumIds);

  Future<List<Map<String, Object?>>> queryQueueSongs();

  Future<void> removeSongFromQueue(int songOrder);

  Future<void> addToPlayNext(List<Song> songs, Song addAfterThisSong);

  Future<void> clearQueue(Song currentlyPlayingSong);
}

class QueueDataSourceImp extends QueueDataSource {
  @override
  Future<List<Map<String, Object?>>> queryArtworksForSongsAlbumIds(
      Set<int> songsAlbumIds) async {
    final db = await LocalDatabase.openLocalDatabase();

    final rawQuery = '''SELECT * FROM ${ArtworkTable.tableName}
          WHERE ${ArtworkTable.albumId} IN (${songsAlbumIds.join(',')})
        ''';

    return db.rawQuery(rawQuery);
  }

  @override
  Future<List<Map<String, Object?>>> queryQueueSongs() async {
    final db = await LocalDatabase.openLocalDatabase();
    final rawQuery = '''
      SELECT * FROM ${QueueTable.tableName} AS queue
       JOIN ${SongTable.tableName} AS songs
       ON queue.${QueueTable.songId}=songs.${SongTable.id} 
       ORDER BY queue.${QueueTable.order}
    ''';
    return db.rawQuery(rawQuery);
  }

  @override
  Future<void> setQueue(Iterable<Song> queueSong) async {
    final db = await LocalDatabase.openLocalDatabase();
    await db.delete(QueueTable.tableName);
    final batch = db.batch();
    for (int i = 0; i < queueSong.length; i++) {
      batch.insert(QueueTable.tableName, {
        QueueTable.songId: queueSong.elementAt(i).id,
        QueueTable.order: i,
      });
    }
    await batch.commit(noResult: true);
  }

  @override
  Future<void> addToPlayNext(List<Song> songs, Song addAfterThisSong) async {
    final db = await LocalDatabase.openLocalDatabase();

    await db.transaction((txn) async {
      int addAfterThisSongOrder = await _getSongOrder(txn, addAfterThisSong);

      await txn.rawQuery(''' UPDATE ${QueueTable.tableName} 
          SET ${QueueTable.order} = ${QueueTable.order} + ${songs.length} 
          WHERE ${QueueTable.order} > $addAfterThisSongOrder ''');

      final batch = txn.batch();
      for (int i = 0; i < songs.length; i++) {
        batch.insert(
          QueueTable.tableName,
          {
            QueueTable.songId: songs[i].id,
            QueueTable.order: addAfterThisSongOrder + i + 1,
          },
        );
      }
      await batch.commit(noResult: true);
    });
  }

  Future<int> _getSongOrder(DatabaseExecutor db, Song addAfterThisSong) async {
    final addAfterThisSongOrderListOfMap = await db.query(QueueTable.tableName,
        columns: [QueueTable.order],
        where: '${QueueTable.songId} = ?',
        whereArgs: [addAfterThisSong.id]);

    final addAfterThisSongOrder =
        firstIntValue(addAfterThisSongOrderListOfMap)!;
    return addAfterThisSongOrder;
  }

  @override
  Future<void> removeSongFromQueue(int songOrder) async {
    final db = await LocalDatabase.openLocalDatabase();
    await db.delete(QueueTable.tableName,
        where: '${QueueTable.order} = ? ', whereArgs: [songOrder]);
  }

  @override
  Future<void> clearQueue(Song currentlyPlayingSong) async {
    final db = await LocalDatabase.openLocalDatabase();
    await db.delete(QueueTable.tableName,
        where: '${QueueTable.songId} != ?',
        whereArgs: [currentlyPlayingSong.id]);
  }
}
