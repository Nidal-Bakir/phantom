import 'dart:async';
import 'dart:convert';
import 'dart:isolate';
import 'dart:typed_data';

import 'package:flutter_isolate/flutter_isolate.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:phantom/core/models/delta/delta.dart';
import 'package:phantom/core/sync/data/device_data_source/device_data_source.dart';
import 'package:phantom/core/sync/data/local_data_source/local_sync_song_data_source.dart';
import 'package:phantom/core/sync/repository/sync_repository.dart';

class DeltaDispatcher {
  late final StreamController<Delta> _controller = StreamController.broadcast();

  /// broadcast stream of Delta changes
  Stream<Delta> get deltaStream => _controller.stream;

  /// spawn new isolate to start song sync operation in it.
  ///
  /// listen to the delta (changes) form [deltaStream] to know what has been added
  /// or deleted form local database on the fly.
  Future<void> startSongsSyncing() async {
    final permissionGranted = await _requestPermissions();
    if (!permissionGranted) {
      // no need to complete we do not have Permissions
      return;
    }

    final receivePort = ReceivePort();

    // span new flutter_isolate to start the sync process
    final songsSyncIsolate = await FlutterIsolate.spawn<SendPort>(
        _startSongsSyncing, receivePort.sendPort);

    // the return will be [DeltaSongs] object as bytes
    final byteDeltaSongs = (await receivePort.first) as TransferableTypedData;

    final deltaSongs = _convertByteDeltaSongsToObject(byteDeltaSongs);

    if (deltaSongs.newSongsIds.isNotEmpty ||
        deltaSongs.deletedSongsIds.isNotEmpty) {
      // add the delta to the stream
      _controller.sink.add(deltaSongs);
    }

    songsSyncIsolate.kill();
  }

  Future<bool> _requestPermissions() async {
    final onAudioQuery = OnAudioQuery();
    bool permissionGranted = await onAudioQuery.permissionsStatus();
    if (permissionGranted) {
      return true;
    } else {
      permissionGranted = await onAudioQuery.permissionsRequest();
      if (permissionGranted) return true;
    }
    return false;
  }

  DeltaSongs _convertByteDeltaSongsToObject(
      TransferableTypedData byteDeltaSongs) {
    // convert the byte to Uint8List first then decode it to string (json).
    final stringSongDelta =
        const Utf8Decoder().convert(byteDeltaSongs.materialize().asUint8List());

    // convert the json string to actual object
    return DeltaSongs.fromJson(
        jsonDecode(stringSongDelta) as Map<String, dynamic>);
  }

  /// close the delta stream controller.
  Future<void> dispose() async {
    await _controller.close();
  }
}

/// the top-level function to run in the isolate.
///
/// Returns [DeltaSongs] as [TransferableTypedData] aka bytes.
void _startSongsSyncing(SendPort sendPort) async {
  // the dependency created and destroyed inside the isolate because it no longer
  // need it outside the isolate.
  final repo = SyncRepository(
      const LocalSyncSongDataSourceImp(),
      DeviceDataSourceImpl(
        onAudioQuery: OnAudioQuery(),
      ));

  final deltaSong = await repo.syncLocalSongsWithDeviceSongs();

  // convert the deltaSongs object to json(Map) then to String and finally to bytes
  // to send it back to the main isolate.
  final deltaSongAsUint8List =
      Uint8List.fromList(jsonEncode(deltaSong.toJson()).codeUnits);

  sendPort.send(TransferableTypedData.fromList([deltaSongAsUint8List]));
}
