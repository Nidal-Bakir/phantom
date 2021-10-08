import 'dart:collection';
import 'dart:typed_data';

import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:phantom/core/models/song/song.dart';

part 'songs_container.freezed.dart';
part 'songs_container.g.dart';

@freezed
class Container with _$Container {
  const factory Container.songsContainer({
    @UnmodifiableListViewConverter() required UnmodifiableListView<Song> songs,
    @Uint8ListMapConverter() required Map<int, Uint8List?> albumArtwork,
  }) = SongsContainer;

  factory Container.fromJson(Map<String, dynamic> map) =>
      _$ContainerFromJson(map);
}

class UnmodifiableListViewConverter
    implements JsonConverter<UnmodifiableListView<Song>, List<dynamic>> {
  const UnmodifiableListViewConverter();

  @override
  UnmodifiableListView<Song> fromJson(List<dynamic> json) {
    return UnmodifiableListView(
      json.map(
        (e) => Song.fromJson(e as Map<String, dynamic>),
      ),
    );
  }

  @override
  List<dynamic> toJson(UnmodifiableListView<Song> object) {
    return object.map((e) => e.toJson()).toList();
  }
}

class Uint8ListMapConverter
    implements JsonConverter<Map<int, Uint8List?>, Map<String, dynamic>> {
  const Uint8ListMapConverter();
  @override
  Map<int, Uint8List?> fromJson(Map<String, dynamic> json) {
    return json.map((albumId, artwork) => MapEntry(
        int.parse(albumId),
        artwork != null
            ? Uint8List.fromList(List<int>.from(artwork, growable: false))
            : null));
  }

  @override
  Map<String, dynamic> toJson(Map<int, Uint8List?> object) {
    return object.map(
        (albumId, artwork) => MapEntry(albumId.toString(), artwork?.toList()));
  }
}
