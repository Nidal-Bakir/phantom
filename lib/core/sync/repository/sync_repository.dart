import 'dart:async';

import 'package:phantom/core/models/delta/delta.dart';
import 'package:phantom/core/sync/data/device_data_source/device_data_source.dart';
import 'package:phantom/core/sync/data/local_data_source/local_sync_song_data_source.dart';
import 'package:phantom/core/sync/repository/sync_added_songs.dart';
import 'package:phantom/core/sync/repository/sync_deleted_songs.dart';
import 'package:phantom/core/sync/repository/sync_updated_songs.dart';

class SyncRepository {
  final LocalSyncSongDataSource _localSyncSongDataSource;
  final DeviceDataSource _deviceDataSource;

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
  /// Listen to [deltaStream] to get notified every time new songs added,
  /// deleted or updated.
  Future<void> syncLocalSongsWithDeviceSongs() async {
    var songsFromDevice = await _deviceDataSource.querySongs();

    await SyncDeletedSongs(
      deltaStreamController: _deltaStreamController,
      localSyncSongDataSource: _localSyncSongDataSource,
      songsFromDevice: songsFromDevice,
    ).startSyncing();

    await SyncAddedSongs(
      deltaStreamController: _deltaStreamController,
      deviceDataSource: _deviceDataSource,
      localSyncSongDataSource: _localSyncSongDataSource,
      progressStreamController: _progressStreamController,
      songsFromDevice: songsFromDevice,
    ).startSyncing();

    await SyncUpdatedSongs(
      deltaStreamController: _deltaStreamController,
      localSyncSongDataSource: _localSyncSongDataSource,
      songsFromDevice: songsFromDevice,
    ).startSyncing();

    await _progressStreamController.close();
    await _deltaStreamController.close();
  }
}
