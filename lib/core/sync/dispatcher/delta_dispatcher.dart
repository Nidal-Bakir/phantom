import 'dart:convert';
import 'dart:typed_data';
import 'dart:isolate';
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:phantom/core/models/delta/delta.dart';
import 'package:phantom/core/sync/data/device_data_source/device_data_source.dart';
import 'package:phantom/core/sync/data/local_data_source/local_sync_song_data_source.dart';

import 'package:phantom/core/sync/repository/sync_repository.dart';

class DeltaDispatcher {
  late final StreamController<Delta> _controller = StreamController();

  /// broadcast stream of Delta changes
  Stream<Delta> get deltaStream => _controller.stream.asBroadcastStream();

  /// spawn new isolate to start song sync operation in it.
  ///
  /// listen to the delta (changes) form [deltaStream] to know what has been added
  /// or deleted form local database on the fly.
  void startSongsSyncing() async {
    // the return will be [SongsDelta] object as bytes
    var byteSongDelta =
        await compute<void, TransferableTypedData>(_startSongsSyncing, null);
    // convert the byte to Uint8List first then decode it to string (json).
    var stringSongDelta =
        const Utf8Decoder().convert(byteSongDelta.materialize().asUint8List());

    // convert the json string to actual object
    var songDelta = SongsDelta.fromJson(
        jsonDecode(stringSongDelta) as Map<String, dynamic>);
    // add the delta to the stream
    _controller.sink.add(songDelta);
  }

  /// close the delta stream controller.
  Future<void> dispose() async {
    _controller.close();
  }
}

/// the top-level function to run in the isolate.
///
/// Returns [SongsDelta] as [TransferableTypedData] aka bytes.
FutureOr<TransferableTypedData> _startSongsSyncing(void _) async {
  // the dependency created and destroyed inside the isolate because it no longer
  // need it outside the isolate.
  var repo = SyncRepository(
      const LocalSyncSongDataSourceImp(),
      DeviceDataSourceImpl(
        onAudioQuery: OnAudioQuery(),
      ));

  var deltaSong = await repo.syncLocalSongsWithDeviceSongs();

  // convert the deltaSong object to json(Map) then to String and finally to bytes
  // to send it back to the main isolate.
  var uint8List = Uint8List.fromList(jsonEncode(deltaSong.toJson()).codeUnits);

  return TransferableTypedData.fromList([uint8List]);
}
