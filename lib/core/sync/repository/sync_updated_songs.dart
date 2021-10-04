import 'dart:async';

import 'package:phantom/core/data/database/database_table.dart';
import 'package:phantom/core/models/delta/delta.dart';
import 'package:phantom/core/models/song/song.dart';
import 'package:phantom/core/sync/data/local_data_source/local_sync_song_data_source.dart';
import 'package:phantom/core/sync/repository/sync.dart';
import 'package:phantom/core/util/custom_binary_search.dart';

class SyncUpdatedSongs extends Sync {
  final List<Song> songsFromDevice;

  SyncUpdatedSongs({
    required LocalSyncSongDataSource localSyncSongDataSource,
    required StreamController<Delta> deltaStreamController,
    required this.songsFromDevice,
  }) : super(
          localSyncSongDataSource: localSyncSongDataSource,
          deltaStreamController: deltaStreamController,
        );

  /// Sync updated songs info, compare songs info from device with songs info
  /// in database and update the song info from local database that hold {x} id
  /// with new song info form device that hold the same {x} id.
  @override
  Future<void> startSyncing() async {
    final sortedLocalSongs =
        await localSyncSongDataSource.getAllSongsSortedBy(SongTable.id);

    final songsToBeUpdated = _detectChangesInDeviceSongsBasedOnLocalSongs(
        songsFromDevice, sortedLocalSongs);

    if (songsToBeUpdated.isNotEmpty) {
      await localSyncSongDataSource.updateSongsInfo(songsToBeUpdated);
      deltaStreamController.sink
          .add(UpdatedSongs(updatedSongs: songsToBeUpdated));
    }
  }

  List<Song> _detectChangesInDeviceSongsBasedOnLocalSongs(
      List<Song> songsFromDevice, List<Song> sortedLocalSongs) {
    List<Song> songsToBeUpdated = [];

    for (var songFromDevice in songsFromDevice) {
      final songIndex =
          customBinarySearch<Song, Song>(sortedLocalSongs, songFromDevice);
      // check if the info is tha same if not add the new song info (songFromDevice)
      // to songsToBeUpdated list.
      if (sortedLocalSongs[songIndex] != songFromDevice) {
        songsToBeUpdated.add(songFromDevice);
      }
    }
    return songsToBeUpdated;
  }
}
