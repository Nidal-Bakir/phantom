import 'dart:typed_data';

import 'package:phantom/core/data/database/database.dart';
import 'package:phantom/core/data/database/database_table.dart';
import 'package:phantom/core/models/song/song.dart';
import 'package:sqflite/sqflite.dart';

abstract class LocalSyncSongDataSource {
  const LocalSyncSongDataSource();

  /// add new songs to songs table
  Future<void> addSongs(List<Song> newSongs);

  /// delete songs from songs table
  Future<void> deleteSongs(List<Song> songs);

  /// delete songs from songs table using songs ids
  Future<void> deleteSongsUsingId(Set<int> songs);

  /// get all songs ids from songs table
  Future<Set<int>> getAllSongsIds();

  /// get all albums ids from artwork table
  Future<Set<int>> getAllAlbumIds();

  /// add new album artworks to artwork  table
  Future<void> addAlbumArtworks(Map<int, Uint8List?> newAlbumArtworks);

  /// delete all artworks not referenced by any songs in songs table
  /// that's happened when deleting songs from database and all songs that use
  /// an artwork deleted, this method to clean that up.
  Future<void> deleteArtworksNotReferencedByAnySong();

  /// Query songs from database sorted by a [columnToSortBasedOn]
  Future<List<Song>> getAllSongsSortedBy(String columnToSortBasedOn);

  /// Update a list of songs in the database with new songs info [songsToUpdate]
  Future<void> updateSongs(List<Song> songsToUpdate);
}

class LocalSyncSongDataSourceImp extends LocalSyncSongDataSource
    implements SongTable {
  const LocalSyncSongDataSourceImp();

  @override
  Future<void> addSongs(List<Song> newSongs) async {
    final db = await LocalDatabase.openLocalDatabase();

    final batch = db.batch();
    for (Song song in newSongs) {
      batch.insert(SongTable.tableName, song.toJson(),
          conflictAlgorithm: ConflictAlgorithm.abort);
    }
    await batch.commit(noResult: true);
  }

  @override
  Future<void> deleteSongs(List<Song> songs) async {
    await deleteSongsUsingId(songs.map((e) => e.id).toSet());
  }

  @override
  Future<void> deleteSongsUsingId(Set<int> songs) async {
    final db = await LocalDatabase.openLocalDatabase();
    final batch = db.batch();
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
    final db = await LocalDatabase.openLocalDatabase();
    // get ids for all local songs
    final localIdSongsMap =
        await db.query(SongTable.tableName, columns: [SongTable.id]);

    return localIdSongsMap.map((e) => e[SongTable.id] as int).toSet();
  }

  @override
  Future<void> addAlbumArtworks(Map<int, Uint8List?> newAlbumArtworks) async {
    final db = await LocalDatabase.openLocalDatabase();
    final batch = db.batch();
    newAlbumArtworks.forEach((albumId, artwork) {
      batch.insert(
        ArtworkTable.tableName,
        {
          ArtworkTable.albumId: albumId,
          ArtworkTable.albumArtwork: artwork,
        },
      );
    });
    await batch.commit(noResult: true);
  }

  @override
  Future<Set<int>> getAllAlbumIds() async {
    final db = await LocalDatabase.openLocalDatabase();
    final albumsIds = await db.query(
      ArtworkTable.tableName,
      columns: [ArtworkTable.albumId],
      where: '${ArtworkTable.albumId} IS NOT NULL',
    );
    return albumsIds.map((e) => e[ArtworkTable.albumId] as int).toSet();
  }

  @override
  Future<void> deleteArtworksNotReferencedByAnySong() async {
    final db = await LocalDatabase.openLocalDatabase();
    db.rawQuery(''' DELETE FROM ${ArtworkTable.tableName} WHERE 
    ${ArtworkTable.albumId} NOT IN 
      (SELECT ${SongTable.albumId} FROM ${SongTable.tableName} WHERE
           ${SongTable.albumId} IS NOT NULL)
     ''');
  }

  @override
  Future<List<Song>> getAllSongsSortedBy(String columnToSortBasedOn) async {
    final db = await LocalDatabase.openLocalDatabase();
    final songs =
        await db.query(SongTable.tableName, orderBy: columnToSortBasedOn);
    return songs.map((e) => Song.fromJson(e)).toList();
  }

  @override
  Future<void> updateSongs(List<Song> songsToUpdate) async {
    final db = await LocalDatabase.openLocalDatabase();
    final batch = db.batch();
    for (var song in songsToUpdate) {
      batch.update(
        SongTable.tableName,
        song.toJson(),
        where: '${SongTable.id} = ?',
        whereArgs: [song.id],
      );
    }
    await batch.commit(noResult: true);
  }
}
