import 'dart:collection';
import 'dart:typed_data';

import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:phantom/core/models/song/song.dart';

part 'songs_container.freezed.dart';
part 'songs_container.g.dart';

@freezed
class Container with _$Container {
  @JsonSerializable(explicitToJson: true)
  const factory Container.songsContainer({
    @UnmodifiableListViewConverter() required UnmodifiableListView<Song> songs,
    @Uint8ListMapConverter() required Map<int, Uint8List?> albumArtwork,
  }) = SongsContainer;
  factory Container.fromJson(Map<String, dynamic> map) =>
      _$ContainerFromJson(map);
}

class UnmodifiableListViewConverter
    implements JsonConverter<UnmodifiableListView<Song>, List<Song>> {
  const UnmodifiableListViewConverter();
  @override
  UnmodifiableListView<Song> fromJson(List<Song> json) {
    return UnmodifiableListView(json);
  }

  @override
  List<Song> toJson(UnmodifiableListView<Song> object) {
    return object.toList();
  }
}

class Uint8ListMapConverter
    implements JsonConverter<Map<int, Uint8List?>, Map<int, List<int>?>> {
  const Uint8ListMapConverter();
  @override
  Map<int, Uint8List?> fromJson(Map<int, List<int>?> json) {
    return json.map((albumId, artwork) => MapEntry(
        albumId, artwork != null ? Uint8List.fromList(artwork) : null));
  }

  @override
  Map<int, List<int>?> toJson(Map<int, Uint8List?> object) {
    return object
        .map((albumId, artwork) => MapEntry(albumId, artwork?.toList()));
  }
}
