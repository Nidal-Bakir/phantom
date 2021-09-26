import 'dart:collection';
import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:phantom/core/models/song/song.dart';

part 'songs_container.freezed.dart';

@freezed
class Container with _$Container {
  const factory Container.songsContainer({
    required UnmodifiableListView<Song> songs,
    required Map<int, Uint8List?> albumArtwork,
  }) = SongsContainer;
}
