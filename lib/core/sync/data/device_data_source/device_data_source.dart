import 'dart:typed_data';

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
  Future<List<Song>> querySongs({
    SongSortType songSortType = SongSortType.DATE_ADDED,
    OrderType orderType = OrderType.DESC_OR_GREATER,
    UriType uriType = UriType.EXTERNAL,
  });

  /// Returns artwork for a song using [songId], will return null if the song do
  /// not have an artwork.
  Future<Uint8List?> queryArtwork(int songId);
}

class DeviceDataSourceImpl extends DeviceDataSource {
  final OnAudioQuery onAudioQuery;

  const DeviceDataSourceImpl({required this.onAudioQuery});

  @override
  Future<List<Song>> querySongs(
      {SongSortType songSortType = SongSortType.DATE_ADDED,
      OrderType orderType = OrderType.DESC_OR_GREATER,
      UriType uriType = UriType.EXTERNAL}) async {
    final deviceSongs = await onAudioQuery.querySongs(
        orderType: orderType, sortType: songSortType, uriType: uriType);

    return deviceSongs.map((event) {
      var map = Map<String, dynamic>.from(event.getMap);
      map['date_added'] = DateTime.now().millisecondsSinceEpoch;
      return Song.fromJson(map);
    }).toList();
  }

  @override
  Future<Uint8List?> queryArtwork(int songId) => onAudioQuery.queryArtwork(
        songId,
        ArtworkType.AUDIO,
        format: ArtworkFormat.JPEG,
        size: 20,
        quality: 2,
      );
}
