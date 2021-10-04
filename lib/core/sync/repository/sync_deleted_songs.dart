import 'dart:async';

import 'package:phantom/core/models/delta/delta.dart';
import 'package:phantom/core/models/song/song.dart';
import 'package:phantom/core/sync/data/local_data_source/local_sync_song_data_source.dart';
import 'package:phantom/core/sync/repository/sync.dart';

class SyncDeletedSongs extends Sync {
  final List<Song> songsFromDevice;

  SyncDeletedSongs({
    required LocalSyncSongDataSource localSyncSongDataSource,
    required StreamController<Delta> deltaStreamController,
    required this.songsFromDevice,
  }) : super(
          localSyncSongDataSource: localSyncSongDataSource,
          deltaStreamController: deltaStreamController,
        );

  /// Sync delete songs with their corresponding album artworks.
  @override
  Future<void> startSyncing() async {
    final localSongsIds = await localSyncSongDataSource.getAllSongsIds();

    final deletedSongsIds =
        await _detecteDeletedSongsFromDeviceBasedOnLocalSongsIds(
            songsFromDevice, localSongsIds);

    if (deletedSongsIds.isNotEmpty) {
      await localSyncSongDataSource.deleteSongsUsingId(deletedSongsIds);

      deltaStreamController.sink
          .add(DeletedSongsIds(deletedSongsIds: deletedSongsIds));
    }
  }

  /// detect if there is an remove in device songs and return the removed songs ids
  Future<Set<int>> _detecteDeletedSongsFromDeviceBasedOnLocalSongsIds(
      List<Song> songsFromDevice, Set<int> localSongsIds) async {
    // get ids for all device songs
    final deviceIdSongsSet = songsFromDevice.map((e) => e.id).toSet();

    // return the only the ids that present in local db and not in device
    return localSongsIds.difference(deviceIdSongsSet);
  }
}
