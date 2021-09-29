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
import 'package:phantom/core/util/constants.dart';

class DeltaDispatcher {
  late final StreamController<Delta> _deltaStreamController =
      StreamController.broadcast();

  late final StreamController<int> _progressStreamController =
      StreamController.broadcast();

  /// broadcast stream of sync progress
  Stream<int> get progressStream => _progressStreamController.stream;

  /// Broadcast stream of Delta changes like new added songs
  Stream<Delta> get deltaStream => _deltaStreamController.stream;

  /// Spawn new isolate to start song sync operation in it.
  ///
  /// Listen to the delta (changes) form [deltaStream] to know what has been added
  /// to local database on the fly.
  Future<void> startSongsSyncing() async {
    final isPermissionGranted = await _requestPermissions();
    if (!isPermissionGranted) {
      // no need to complete we do not have Permissions
      return;
    }

    final receivePort = ReceivePort();
    late final StreamSubscription subscription;

    // spawn new flutter_isolate to start the sync process
    final songsSyncIsolate = await FlutterIsolate.spawn<SendPort>(
        _startSongsSyncing, receivePort.sendPort);

    subscription = receivePort.listen((message) {
      if (message is TransferableTypedData) {
        // the message will be [DeltaSongs] object as bytes
        final delta = _convertByteDeltaToObject(message);

        // add the delta to the stream
        _deltaStreamController.sink.add(delta);
      } else if (message == Constants.syncDone) {
        songsSyncIsolate.kill();

        subscription.cancel();
      } else {
        // it is a progress message
        _progressStreamController.sink.add(message);
      }
    });
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

  Delta _convertByteDeltaToObject(TransferableTypedData byteDelta) {
    // convert the byte to Uint8List first then decode it to string (json).
    final stringDelta =
        const Utf8Decoder().convert(byteDelta.materialize().asUint8List());

    // convert the json string to actual object
    return Delta.fromJson(jsonDecode(stringDelta) as Map<String, dynamic>);
  }

  /// close the delta stream controller.
  Future<void> dispose() async {
    await _deltaStreamController.close();
  }
}

/// the top-level function to run in the isolate.
///
/// Sends [DeltaSongs] as [TransferableTypedData] aka bytes to [sendPort]
void _startSongsSyncing(SendPort sendPort) async {
  // the dependency created and destroyed inside the isolate because it no longer
  // need it outside the isolate.
  final repo = SyncRepository(
      const LocalSyncSongDataSourceImp(),
      DeviceDataSourceImpl(
        onAudioQuery: OnAudioQuery(),
      ));

  repo.progressStream.listen((progress) {
    sendPort.send(progress);
  });

  repo.deltaStream.listen((delta) {
    // convert the deltaSongs object to json(Map) then to String and finally to bytes
    // to send it back to the main isolate.
    final deltaAsUint8List =
        Uint8List.fromList(jsonEncode(delta.toJson()).codeUnits);

    sendPort.send(TransferableTypedData.fromList([deltaAsUint8List]));
  });

  await repo.syncLocalSongsWithDeviceSongs();
  sendPort.send(Constants.syncDone);
}
