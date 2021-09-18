import 'package:phantom/core/data/database/database.dart';
import 'package:phantom/core/models/song/song.dart';
import 'package:sqflite/sqflite.dart';

abstract class _SongTable {
  // song table columns names
  static const tableName = 'song';
  static const id = '_id';
  static const title = 'title';
  static const displayName = '_display_name';
  static const albumId = 'album_id';
  static const album = 'album';
  static const artist = 'artist';
  static const artistId = 'artist_id';
  static const displayNameWithOutExtension = '_display_name_wo_ext';
  static const composer = 'composer';
  static const data = '_data';
  static const uri = '_uri';
  static const size = '_size';
  static const bookmark = 'bookmark';
  static const dateAdded = 'date_added';
  static const dateModified = 'date_modified';
  static const fileExtension = 'file_extension';
  static const songArtwork = 'song_artwork';
  static const favorite = 'favorite';
}

class SongOperations implements _SongTable {
  static const tableCreation = '''CREATE TABLE ${_SongTable.tableName} (
        ${_SongTable.id} INTEGER PRIMARY KEY,
        ${_SongTable.title} TEXT NOT NULL,
        ${_SongTable.displayName} TEXT NOT NULL,
        ${_SongTable.displayNameWithOutExtension} TEXT NOT NULL,
        ${_SongTable.albumId} INTEGER,
        ${_SongTable.album} TEXT,
        ${_SongTable.artist} TEXT,
        ${_SongTable.artistId} INTEGER,
        ${_SongTable.composer} TEXT,
        ${_SongTable.data} TEXT NOT NULL UNIQUE,
        ${_SongTable.uri} TEXT,
        ${_SongTable.size} INTEGER NOT NULL,
        ${_SongTable.bookmark} INTEGER,
        ${_SongTable.dateAdded} INTEGER NOT NULL,
        ${_SongTable.dateModified} INTEGER NOT NULL,
        ${_SongTable.fileExtension} TEXT NOT NULL,
        ${_SongTable.songArtwork} BLOB
        ${_SongTable.favorite} INTEGER
             )''';

  /// add new songs to local database based on all songs form the device [songsFromDevice]
  static Future<void> addSongs(List<Song> songsFromDevice) async {
    var db = await LocalDatabase.openLocalDatabase();

    var newSongs = await _getNewSongs(db, songsFromDevice);
    // start adding
    var batch = db.batch();
    for (Song song in newSongs) {
      batch.insert(_SongTable.tableName, song.toJson(),
          conflictAlgorithm: ConflictAlgorithm.abort);
    }
    await batch.commit(
      noResult: true,
    );
  }

  static Future<List<Song>> _getNewSongs(
      Database db, List<Song> songsFromDevice) async {
    // get all songs ids in local db
    var localIdSongsMap =
        await db.query(_SongTable.tableName, columns: [_SongTable.id]);

    // get ids for all local songs
    var localIdSongsSet =
        localIdSongsMap.map((e) => e[_SongTable.id] as int).toSet();

    // get ids for all device songs
    var deviceIdSongsSet = songsFromDevice.map((e) => e.id).toSet();

    // get all songs ids from the device songs list but not exist in local songs list
    var newSongsIds = deviceIdSongsSet.difference(localIdSongsSet);

    // new songs based on the difference between device and local
    var newSongs = songsFromDevice
        .where((element) => newSongsIds.contains(element.id))
        .toList();
    return newSongs;
  }

  /*
  /// update the database with the new values of [songs] using the
  /// (replace) ConflictAlgorithm so tow songs can not has the same Path.
  static Future<void> updateSongs(List<Song> songs) async {
    var db = await LocalDatabase.openLocalDatabase();
    var batch = db.batch();
    for (Song song in songs) {
      batch.update(_SongTable.tableName, song.toJson().remove(_SongTable.id),
          where: '${_SongTable.id} = ?',
          whereArgs: [song.id],
          conflictAlgorithm: ConflictAlgorithm.replace);
    }
    await batch.commit(
      noResult: true,
    );
  }
*/
  /// detect if there is an remove in device songs and return the removed songs ids
  static Future<Set<int>> deleteDetection(List<Song> songsFromDevice) async {
    var db = await LocalDatabase.openLocalDatabase();
    // get all songs ids in local db
    var localIdSongsMap =
        await db.query(_SongTable.tableName, columns: [_SongTable.id]);

    // get ids for all local songs
    var localIdSongsSet =
        localIdSongsMap.map((e) => e[_SongTable.id] as int).toSet();
    // get ids for all device songs
    var deviceIdSongsSet = songsFromDevice.map((e) => e.id).toSet();

    // return the only the ids that present in local db and not in device
    return localIdSongsSet.difference(deviceIdSongsSet);
  }

  /// delete songs from local db
  static Future<void> deleteSongs(List<Song> songs) async {
    await deleteSongsUsingId(songs.map((e) => e.id).toList());
  }

  /// delete songs from local db using there ids
  static Future<void> deleteSongsUsingId(List<int> songs) async {
    var db = await LocalDatabase.openLocalDatabase();
    var batch = db.batch();
    for (int songId in songs) {
      batch.delete(
        _SongTable.tableName,
        where: '${_SongTable.id} = ?',
        whereArgs: [songId],
      );
    }
    await batch.commit(noResult: true);
  }
}
