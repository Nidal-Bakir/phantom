import 'package:on_audio_query/on_audio_query.dart';
import 'package:phantom/core/models/song/song.dart';

abstract class DeviceDataSource {
  const DeviceDataSource();

  /// Return a stream of songs form internal device:
  ///
  /// * [songSortType] : Defines sort type the query function will use, the [DEFAULT]
  /// return songs sorted based on song title.
  /// * [orderType] : Defines the order type : [ASC, DESC] , ASC is the default.
  /// * [uriType] : EXTERNAL storage or INTERNAL storage. EXTERNAL as default.
  Stream<Song> querySongsFromDevice({
    SongSortType songSortType = SongSortType.DATA_ADDED,
    OrderType orderType = OrderType.DESC_OR_GREATER,
    UriType uriType = UriType.EXTERNAL,
  });
}

class DeviceDataSourceImpl extends DeviceDataSource {
  final OnAudioQuery onAudioQuery;
  const DeviceDataSourceImpl({required this.onAudioQuery});
  @override
  Stream<Song> querySongsFromDevice(
      {SongSortType songSortType = SongSortType.DATA_ADDED,
      OrderType orderType = OrderType.DESC_OR_GREATER,
      UriType uriType = UriType.EXTERNAL}) {
    return onAudioQuery
        .querySongs(
            orderType: orderType, sortType: songSortType, uriType: uriType)
        .asStream()
        .expand((element) => element)
        // to get the artwork and plug it in device songs map
        .asyncMap((event) async {
      var artwork =
          await onAudioQuery.queryArtwork(event.id, ArtworkType.AUDIO);
      event.getMap['song_artwork'] = artwork;
      return Song.fromJson(event.getMap as Map<String, dynamic>);
    });
  }
}
