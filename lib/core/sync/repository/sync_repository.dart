import 'package:phantom/core/models/song/song.dart';
import 'package:phantom/core/sync/data/device_data_source/device_data_source.dart';
import 'package:phantom/core/sync/data/local_data_source/local_song_data_source.dart';

class SyncRepository {
  final LocalSongDataSource _localSongDataSource;
  final DeviceDataSource _deviceDataSource;

  SyncRepository(this._localSongDataSource, this._deviceDataSource);

  Future<List<Song>> _getNewSongs(List<Song> songsFromDevice) async {
    // get ids for all local songs
    var localIdSongsSet = await _localSongDataSource.getAllSongsIds();

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

  /// detect if there is an remove in device songs and return the removed songs ids
  Future<Set<int>> _deleteDetection(List<Song> songsFromDevice) async {
    // get ids for all device songs
    var deviceIdSongsSet = songsFromDevice.map((e) => e.id).toSet();

    // get ids for all local songs
    var localIdSongsSet = await _localSongDataSource.getAllSongsIds();

    // return the only the ids that present in local db and not in device
    return localIdSongsSet.difference(deviceIdSongsSet);
  }
}
