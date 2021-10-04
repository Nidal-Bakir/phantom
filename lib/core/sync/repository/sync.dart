import 'dart:async';

import 'package:phantom/core/models/delta/delta.dart';
import 'package:phantom/core/sync/data/local_data_source/local_sync_song_data_source.dart';

abstract class Sync {
  final LocalSyncSongDataSource localSyncSongDataSource;
  final StreamController<Delta> deltaStreamController;

  const Sync({
    required this.localSyncSongDataSource,
    required this.deltaStreamController,
  });
  Future<void> startSyncing();
}
