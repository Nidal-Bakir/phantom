import 'dart:async';
import 'dart:collection';
import 'dart:developer';
import 'dart:typed_data';

import 'package:phantom/core/models/delta/delta.dart';
import 'package:phantom/core/models/song/song.dart';
import 'package:phantom/core/sync/data/device_data_source/device_data_source.dart';
import 'package:phantom/core/sync/data/local_data_source/local_sync_song_data_source.dart';
import 'package:phantom/core/util/custom_binary_search.dart';

class SyncRepository {
  final LocalSyncSongDataSource _localSyncSongDataSource;
  final DeviceDataSource _deviceDataSource;
  late final Set<int> _localIdSongsSet;

  late final StreamController<int> _progressStreamController =
      StreamController.broadcast();

  late final StreamController<Delta> _deltaStreamController =
      StreamController.broadcast();

  /// How match albums has been added to the database e.g: 23%
  Stream<int> get progressStream => _progressStreamController.stream;

  /// Broadcast stream of Delta changes like new added songs
  Stream<Delta> get deltaStream => _deltaStreamController.stream;

  SyncRepository(this._localSyncSongDataSource, this._deviceDataSource);

  /// Sync the local database with device songs.
  /// * check the new added songs in the device and add them to local database.
  /// * check the deleted songs from the device and delete them form local database.
  ///
  /// Note: all songs will use their album image rather than their image for
  /// better performance.
  ///
  /// Listen to [deltaStream] to get notified every time new songs added
  Future<void> syncLocalSongsWithDeviceSongs() async {
    var songsFromDevice = await _deviceDataSource.querySongs();

    // get ids for all local songs
    _localIdSongsSet = await _localSyncSongDataSource.getAllSongsIds();

    await _deleteSongsWithTheirCorrespondingAlbumImages(songsFromDevice);

    await _addNewSongsWithTheirCorrespondingAlbumImages(songsFromDevice);

    await _progressStreamController.close();
    await _deltaStreamController.close();
  }

  Future<void> _addNewSongsWithTheirCorrespondingAlbumImages(
      List<Song> songsFromDevice) async {
    // sorting the list will help us while searching using binary search.
    // immutable so no other function can update the list by reference and
    // efficient [Iterable.length] and [Iterable.elementAt]
    final newSongs = UnmodifiableListView(
        (await _identifyNewSongs(songsFromDevice))..sort());

    if (newSongs.isNotEmpty) {
      // Identify new albums artworks not cached in the database based on song album id
      final newAlbumsIds = await _identifyNewAlbumsIds(newSongs);
      if (newAlbumsIds.isEmpty) {
        // There is no new album ids to add, hence those songs either don't have
        // album artwork or the album already cached in the database, so we need
        // to add them.
        await _localSyncSongDataSource.addSongs(newSongs);
        _deltaStreamController.sink.add(NewAddedSongs(newSongs: newSongs));
        return;
      }

      // the new added songs did have new artworks we need to add them with their
      // artwork
      await _addNewSongsWithAlbumArtworks(
          newSongs, UnmodifiableSetView(newAlbumsIds));
    }
  }

  Future<void> _deleteSongsWithTheirCorrespondingAlbumImages(
      List<Song> songsFromDevice) async {
    final deletedSongsIds = await _deleteDetection(songsFromDevice);
    if (deletedSongsIds.isNotEmpty) {
      await _localSyncSongDataSource.deleteSongsUsingId(deletedSongsIds);

      await _localSyncSongDataSource.deleteArtworksNotReferencedByAnySong();

      if (deletedSongsIds.isNotEmpty) {
        _deltaStreamController.sink
            .add(DeletedSongsIds(deletedSongsIds: deletedSongsIds));
      }
    }
  }

  Future<void> _addNewSongsWithAlbumArtworks(
      UnmodifiableListView<Song> sortedSongsIdentifiedAsNew,
      UnmodifiableSetView<int> newAlbumsIds) async {
    // holds the album id with the new album artwork to store them as chunks.
    final Map<int, Uint8List?> newAlbumArtworks = {};

    final List<Song> songsToBeAddedToDatabase =
        sortedSongsIdentifiedAsNew.toList();

    final length = newAlbumsIds.length;

    // add all album artworks with their Corresponding songs as chunk store them
    // and notify the [_newAddedSongsStreamController] about the songs.
    for (int i = 0; i < length; i++) {
      _progressStreamController.sink.add((i / length * 100).ceil());

      // get position of song id that correspond with an album id
      final positionOfSongId = customBinarySearch<Song, int>(
          sortedSongsIdentifiedAsNew, newAlbumsIds.elementAt(i));
      if (positionOfSongId == -1) {
        log(
          'on: _addNewAlbumArtworksToArtWorkTable(), customBinarySearch() returned -1!! something is wrong.',
          error: RangeError(
            'the album id should be in sortedSongsIdentifiedAsNew list.',
          ),
        );
        continue;
      }
      // Get the artwork for a song id
      final artwork = await _deviceDataSource.queryArtwork(
          sortedSongsIdentifiedAsNew.elementAt(positionOfSongId).id);

      // Buffer the album id with its corresponding artwork
      newAlbumArtworks[newAlbumsIds.elementAt(i)] = artwork;

      // Add new albums to the database as chunks, collect 20 artwork with their
      // songs then send them to the database as a chunk to add, so we do not full the
      // memory with images (probably 100kB - 600KB) for every image and send them to
      // database as a whole.
      // If we don't add the songs as chunks the adding will be less efficient
      // or worse crash the app (memory full with images!).
      if (i % 20 == 0 || i == newAlbumsIds.length - 1) {
        await _localSyncSongDataSource.addAlbumArtworks(newAlbumArtworks);

        final songsToAdd = songsToBeAddedToDatabase
            .where((element) => newAlbumArtworks.keys.contains(element.albumId))
            .toList();

        await _localSyncSongDataSource.addSongs(songsToAdd);

        // New songs added to the database in background (isolate).
        // songs added as chunks to the database so every time a chunk of songs added
        // to the database an event added to this stream with those songs.
        _deltaStreamController.sink.add(NewAddedSongs(newSongs: songsToAdd));

        songsToBeAddedToDatabase.removeWhere(
            (element) => newAlbumArtworks.keys.contains(element.albumId));

        // Clear the buffered artworks from memory
        newAlbumArtworks.clear();
      }
    }

    // Songs don't has artwork or album is is null
    if (songsToBeAddedToDatabase.isNotEmpty) {
      await _localSyncSongDataSource.addSongs(songsToBeAddedToDatabase);
      _deltaStreamController.sink
          .add(NewAddedSongs(newSongs: songsToBeAddedToDatabase));
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

    // get ids for all device songs
    final deviceIdSongsSet = songsFromDevice.map((e) => e.id).toSet();

    // get all songs ids from the device songs list but not exist in local songs list
    final newSongsIds = deviceIdSongsSet.difference(_localIdSongsSet);
    if (newSongsIds.isEmpty) return []; // nothing to do

    // new songs based on the difference between device and local
    return songsFromDevice
        .where((element) => newSongsIds.contains(element.id))
        .toList();
  }

  /// detect if there is an remove in device songs and return the removed songs ids
  Future<Set<int>> _deleteDetection(List<Song> songsFromDevice) async {
    // get ids for all device songs
    final deviceIdSongsSet = songsFromDevice.map((e) => e.id).toSet();

    // return the only the ids that present in local db and not in device
    return _localIdSongsSet.difference(deviceIdSongsSet);
  }
}
