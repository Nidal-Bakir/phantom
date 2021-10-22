import 'dart:async';

import 'dart:collection';
import 'dart:developer';
import 'dart:typed_data';

import 'package:phantom/core/models/delta/delta.dart';
import 'package:phantom/core/models/song/song.dart';
import 'package:phantom/core/sync/data/device_data_source/device_data_source.dart';
import 'package:phantom/core/sync/data/local_data_source/local_sync_song_data_source.dart';
import 'package:phantom/core/sync/repository/sync.dart';
import 'package:phantom/core/util/custom_binary_search.dart';

class SyncAddedSongs extends Sync {
  final DeviceDataSource deviceDataSource;
  final List<Song> songsFromDevice;
  final StreamController<int> progressStreamController;

  SyncAddedSongs({
    required LocalSyncSongDataSource localSyncSongDataSource,
    required StreamController<Delta> deltaStreamController,
    required this.deviceDataSource,
    required this.songsFromDevice,
    required this.progressStreamController,
  }) : super(
          localSyncSongDataSource: localSyncSongDataSource,
          deltaStreamController: deltaStreamController,
        );

  /// Sync new added songs with their corresponding album artwork.
  @override
  Future<void> startSyncing() async {
    final localSongsIds = await localSyncSongDataSource.getAllSongsIds();

    final newSongs = await _identifyNewSongsBasedOnLocalSongsIds(
        songsFromDevice, localSongsIds);

    if (newSongs.isNotEmpty) {
      // Identify new albums artworks not cached in the database based on song album id
      final newAlbumsIds = await _identifyNewAlbumsIds(newSongs);
      if (newAlbumsIds.isEmpty) {
        // There is no new album ids to add, hence those songs either don't have
        // album artwork or the album already cached in the database, so we need
        // to add them.
        await localSyncSongDataSource.addSongs(newSongs);
        deltaStreamController.sink.add(NewAddedSongs(
          newSongs: UnmodifiableListView(newSongs),
        ));
        return;
      }

      // the new added songs did have new artworks we need to add them with their
      // artwork
      await _addNewSongsWithAlbumArtworks(
          newSongs, UnmodifiableSetView(newAlbumsIds));
    }
  }

  Future<void> _addNewSongsWithAlbumArtworks(
    List<Song> songsIdentifiedAsNew,
    UnmodifiableSetView<int> newAlbumsIds,
  ) async {
    // sorting the list will help us while searching using binary search.
    songsIdentifiedAsNew.sort(
      //sort based on album id.
      (song1, song2) => song1.albumId?.compareTo(song2.albumId ?? -1) ?? -1,
    );
    final songsDoseNotHaveAlbumIdOrAlbumArtwork =
        await _addSongsDoseHaveAlbumArtwork(
            UnmodifiableListView(songsIdentifiedAsNew), newAlbumsIds);

    await _addSongsDoseNotHaveAlbumIdOrAlbumArtwork(
        songsDoseNotHaveAlbumIdOrAlbumArtwork);
  }

  /// Add songs don't have album id ( album id is null)
  Future<void> _addSongsDoseNotHaveAlbumIdOrAlbumArtwork(
      List<Song> songsDoseNotHaveAlbumIdOrAlbumArtwork) async {
    if (songsDoseNotHaveAlbumIdOrAlbumArtwork.isNotEmpty) {
      await localSyncSongDataSource
          .addSongs(songsDoseNotHaveAlbumIdOrAlbumArtwork);

      deltaStreamController.sink.add(NewAddedSongs(
        newSongs: UnmodifiableListView(songsDoseNotHaveAlbumIdOrAlbumArtwork),
      ));
    }
  }

  /// Add songs that have album artwork to the database with their artwork.
  ///
  /// * [sortedSongsIdentifiedAsNew]: UnmodifiableListView efficient
  /// [Iterable.length] and [Iterable.elementAt]  and to prevent accidental
  /// modification on the list because we search through
  /// it using binary search.
  ///
  /// Returns List of [song]s dose not have album id or album artwork.
  Future<List<Song>> _addSongsDoseHaveAlbumArtwork(
      UnmodifiableListView<Song> sortedSongsIdentifiedAsNew,
      UnmodifiableSetView<int> newAlbumsIds) async {
    // holds the album id with the new album artwork to store them as chunks.
    final Map<int, Uint8List?> newAlbumArtworksBuffer = {};

    // hold the remaining songs to be add to the database start with all songs.
    // then remove songs every time chunk of data (songs with album artwork) add
    //to the database.
    final List<Song> songsToBeAddedToDatabaseBuffer =
        sortedSongsIdentifiedAsNew.toList();

    // add all album artworks with their Corresponding songs as chunk store them
    // and notify the [_deltaStreamController] about the songs.
    for (int i = 0; i < newAlbumsIds.length; i++) {
      progressStreamController.sink.add((i / newAlbumsIds.length * 100).ceil());

      final albumArtwork = await _getAlbumArtworkFromAlbumId(
          sortedSongsIdentifiedAsNew, newAlbumsIds.elementAt(i));

      // Buffer the album id with its corresponding artwork
      newAlbumArtworksBuffer[newAlbumsIds.elementAt(i)] = albumArtwork;

      // Add new albums to the database as chunks, collect 20 artwork with their
      // songs then send them to the database as a chunk to add, so we do not full the
      // memory with images (probably 100kB - 600KB) for every image and send them to
      // database as a whole.
      // If we don't add the songs as chunks the adding will be less efficient
      // or worse crash the app (memory full with images!).
      if (i % 20 == 0 || i == newAlbumsIds.length - 1) {
        final addedSongs = await _storeChunkOfSongsAndAlbumArtworks(
            songsToBeAddedToDatabaseBuffer, newAlbumArtworksBuffer);

        // New songs added to the database in background (isolate).
        // songs added as chunks to the database so every time a chunk of songs added
        // to the database an event added to this stream with those songs.
        deltaStreamController.sink
            .add(NewAddedSongs(newSongs: UnmodifiableListView(addedSongs)));

        // remove songs that has been added to the database.
        songsToBeAddedToDatabaseBuffer.removeWhere(
            (element) => newAlbumArtworksBuffer.keys.contains(element.albumId));

        newAlbumArtworksBuffer.clear();
      }
    }
    return songsToBeAddedToDatabaseBuffer;
  }

  /// Returns newly added songs to the database after store them with their artwork
  Future<List<Song>> _storeChunkOfSongsAndAlbumArtworks(
    List<Song> songsToBeAddedToDatabase,
    Map<int, Uint8List?> newAlbumArtworks,
  ) async {
    await localSyncSongDataSource.addAlbumArtworks(newAlbumArtworks);

    final songsToAdd = songsToBeAddedToDatabase
        .where((element) => newAlbumArtworks.keys.contains(element.albumId))
        .toList();

    await localSyncSongDataSource.addSongs(songsToAdd);
    return songsToAdd;
  }

  Future<Uint8List?> _getAlbumArtworkFromAlbumId(
    UnmodifiableListView<Song> sortedSongsIdentifiedAsNew,
    int albumId,
  ) async {
    // get position of song id that correspond with an album id
    final positionOfSongId = customBinarySearch<Song, int>(
        sortedSongsIdentifiedAsNew,
        albumId,
        (song, albumId) => song.albumId?.compareTo(albumId ?? -1) ?? -1);
    if (positionOfSongId == -1) {
      log(
        'on: _addNewAlbumArtworksToArtWorkTable(), customBinarySearch() returned -1!! something is wrong.',
        error: RangeError(
          'the album id should be in sortedSongsIdentifiedAsNew list.',
        ),
      );
    }
    // Get the artwork for a song id
    final albumArtWork = await deviceDataSource.queryArtwork(
        sortedSongsIdentifiedAsNew.elementAt(positionOfSongId).id);

    // by checking that the art is not empty we avoid a bug in flutter
    // the bug happens specifically for android 5.1 api level 23, causing
    // the app to crash immediately when flutter try to paint the image.

    // We should report the bug but still cannot find a way to reproduce it
    // without database because the db give us the uing8list (_Uint8ArrayList)
    // with some wrong bytes perhaps or some bug in the actual _Uint8ArrayList,
    // sill cannot find a way to reproduce the same bytes!.
    if (albumArtWork?.isNotEmpty ?? true) {
      return albumArtWork;
    } else {
      return null;
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

    final localAlbumIds =
        await localSyncSongDataSource.getAllAlbumIdsFromArtworkTable();

    return newSongsAlbumIds.difference(localAlbumIds);
  }

  /// Identify new songs from list of songs [songsFromDevice] based on local db
  /// so that any song id not in the local db will be considered as new song.
  ///
  /// Returns sorted list of new songs.
  Future<List<Song>> _identifyNewSongsBasedOnLocalSongsIds(
      List<Song> songsFromDevice, Set<int> localSongsIds) async {
    final songsIdsFromDevice = songsFromDevice.map((e) => e.id).toSet();

    // get all songs ids from the device songs list but not exist in local songs list
    final newSongsIds = songsIdsFromDevice.difference(localSongsIds);
    if (newSongsIds.isEmpty) return []; // nothing to do

    // new songs based on the difference between device songs and local songs
    final newIdentifiedSongs = songsFromDevice
        .where((element) => newSongsIds.contains(element.id))
        .toList();

    return newIdentifiedSongs;
  }
}
