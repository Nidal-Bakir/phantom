import 'dart:typed_data';

import 'package:phantom/core/models/delta/delta.dart';
import 'package:phantom/core/models/song/song.dart';
import 'package:phantom/core/sync/data/device_data_source/device_data_source.dart';
import 'package:phantom/core/sync/data/local_data_source/local_sync_song_data_source.dart';

class SyncRepository {
  final LocalSyncSongDataSource _localSyncSongDataSource;
  final DeviceDataSource _deviceDataSource;

  const SyncRepository(this._localSyncSongDataSource, this._deviceDataSource);

  /// Sync the local database with device songs.
  /// * check the new added songs in the device and add them to local database.
  /// * check the deleted songs from the device and delete them form local database.
  ///
  /// Note: all songs will use their album image rather than their image for
  /// better performance.
  ///
  /// Returns [SongsDelta] contain the changes that happened to local database.
  Future<DeltaSongs> syncLocalSongsWithDeviceSongs() async {
    var songsFromDevice = await _deviceDataSource.querySongs();

    final newSongsIds =
        await _addNewSongsWithTheirCorrespondingAlbumImages(songsFromDevice);

    final deletedSongsIds =
        await _deleteSongsWithTheirCorrespondingAlbumImages(songsFromDevice);

    return DeltaSongs(
        newSongsIds: newSongsIds, deletedSongsIds: deletedSongsIds);
  }

  Future<Set<int>> _addNewSongsWithTheirCorrespondingAlbumImages(
      List<Song> songsFromDevice) async {
    final newSongs = await _identifyNewSongs(songsFromDevice);
    if (newSongs.isNotEmpty) {
      // make sure that adding new albums images done before adding any new songs
      // so we do not violate album_id FOREIGN KEY constraint in songs table
      await _addNewAlbumArtworksToArtWorkTable(newSongs);

      await _localSyncSongDataSource
          .addSongs(newSongs); // add songs to local db

    }
    return newSongs.map((e) => e.id).toSet();
  }

  Future<Set<int>> _deleteSongsWithTheirCorrespondingAlbumImages(
      List<Song> songsFromDevice) async {
    final deletedSongsIds = await _deleteDetection(songsFromDevice);
    if (deletedSongsIds.isNotEmpty) {
      await _localSyncSongDataSource
          .deleteSongsUsingId(deletedSongsIds); // delete songs form local db

      await _localSyncSongDataSource.deleteArtworksNotReferencedByAnySong();
    }
    return {};
  }

  /// Identify new albums artworks not cached in the database based on (album id)
  /// then add the new ones to the database.
  Future<void> _addNewAlbumArtworksToArtWorkTable(
      List<Song> songsIdentifiedAsNew) async {
    // holds the album id with the new album artwork
    final Map<int, Uint8List?> newAlbumArtworks = {};

    // get the new album ids
    final newAlbumsIds = await _identifyNewAlbumsIds(songsIdentifiedAsNew);
    if (newAlbumsIds.isEmpty) return;

    for (int i = 0; i < newAlbumsIds.length; i++) {
      // get song id that correspond with an album id
      final songId = songsIdentifiedAsNew
          .firstWhere((element) => element.albumId == newAlbumsIds.elementAt(i))
          .id;
      // get the artwork for a song id
      final artwork = await _deviceDataSource.queryArtwork(songId);

      // buffer the album id with its corresponding artwork
      newAlbumArtworks[newAlbumsIds.elementAt(i)] = artwork;

      // add new albums to the database as chunks, collect 50 artwork then
      // send them to the database as a chunk to add, so we do not full the
      // memory with images (probably 100kB - 600KB) for every image and send them to
      // database as a whole, that will be less efficient or worse crash the app
      // (memory full with images!).
      if (i % 50 == 0 || i == newAlbumsIds.length - 1) {
        await _localSyncSongDataSource.addAlbumArtworks(newAlbumArtworks);
        // clear the buffered artworks from memory
        newAlbumArtworks.clear();
      }
    }
  }

  /// Identify new albums artworks not cached in the database based on (album id).
  ///
  /// Returns set of album ids identified as new.
  Future<Set<int>> _identifyNewAlbumsIds(
      List<Song> songsIdentifiedAsNew) async {
    // grape all album id from songs marked as new
    final newSongsAlbumIds = songsIdentifiedAsNew
        .where((e) => e.albumId != null)
        .map((e) => e.albumId!)
        .toSet();

    final cachedLocalSongsAlbumIds =
        await _localSyncSongDataSource.getAllAlbumIds();

    return newSongsAlbumIds.difference(cachedLocalSongsAlbumIds);
  }

  /// Identify new songs from list of songs [songsFromDevice] based on local db
  /// so that any song id not in the local db will be considered as new song.
  ///
  /// Returns list of new songs.
  Future<List<Song>> _identifyNewSongs(List<Song> songsFromDevice) async {
    // get ids for all local songs
    final localIdSongsSet = await _localSyncSongDataSource.getAllSongsIds();

    // get ids for all device songs
    final deviceIdSongsSet = songsFromDevice.map((e) => e.id).toSet();

    // get all songs ids from the device songs list but not exist in local songs list
    final newSongsIds = deviceIdSongsSet.difference(localIdSongsSet);
    if (newSongsIds.isEmpty) return []; // nothing to do

    // new songs based on the difference between device and local
    final newSongs = songsFromDevice
        .where((element) => newSongsIds.contains(element.id))
        .toList();
    return newSongs;
  }

  /// detect if there is an remove in device songs and return the removed songs ids
  Future<Set<int>> _deleteDetection(List<Song> songsFromDevice) async {
    // get ids for all device songs
    final deviceIdSongsSet = songsFromDevice.map((e) => e.id).toSet();

    // get ids for all local songs
    final localIdSongsSet = await _localSyncSongDataSource.getAllSongsIds();

    // return the only the ids that present in local db and not in device
    return localIdSongsSet.difference(deviceIdSongsSet);
  }
}
