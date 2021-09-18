import 'package:on_audio_query/on_audio_query.dart';
import 'package:phantom/core/models/song/song.dart';

abstract class DeviceDataSource {
  /// Return a stream of songs form internal device:
  ///
  /// * [songSortType] : Defines sort type the query function will use, the [DEFAULT]
  /// return songs sorted based on song title.
  /// * [orderType] : Defines the order type : [ASC, DESC] , ASC is the default.
  /// * [uriType] : EXTERNAL storage or INTERNAL storage. EXTERNAL as default.
  Future<List<Song>> querySongsFromDevice({
    SongSortType songSortType = SongSortType.DATA_ADDED,
    OrderType orderType = OrderType.DESC_OR_GREATER,
    UriType uriType = UriType.EXTERNAL,
  });
}

class DeviceDataSourceImpl extends DeviceDataSource {
  final OnAudioQuery onAudioQuery;
  DeviceDataSourceImpl({required this.onAudioQuery});
  @override
  Future<List<Song>> querySongsFromDevice(
          {SongSortType songSortType = SongSortType.DATA_ADDED,
          OrderType orderType = OrderType.DESC_OR_GREATER,
          UriType uriType = UriType.EXTERNAL}) =>
      onAudioQuery
          .querySongs(
              orderType: orderType, sortType: songSortType, uriType: uriType)
          .then<List<Song>>((value) => value
              .map((event) =>
                  Song.fromJson(event.getMap as Map<String, dynamic>))
              .toList());
}
