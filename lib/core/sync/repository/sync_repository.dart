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
  /// Returns [SongsDelta] contain the changes that happened to local database.
  Future<DeltaSongs> syncLocalSongsWithDeviceSongs() async {
    var songsFromDevice =
        await _deviceDataSource.querySongsFromDevice().toList();

    final newSongs = await _identifyNewSongs(songsFromDevice);
    if (newSongs.isNotEmpty) {
      await _localSyncSongDataSource
          .addSongs(newSongs); // add songs to local db
    }

    final deletedSongsIds = await _deleteDetection(songsFromDevice);
    if (deletedSongsIds.isNotEmpty) {
      await _localSyncSongDataSource
          .deleteSongsUsingId(deletedSongsIds); // delete songs form local db
    }

    return DeltaSongs(
        newSongsIds: newSongs.map((e) => e.id).toSet(),
        deletedSongsIds: deletedSongsIds);
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
