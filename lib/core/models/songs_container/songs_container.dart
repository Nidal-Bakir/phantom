import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:phantom/core/models/currently_playing_song/currently_playing_song.dart';
import 'package:phantom/core/models/song/song.dart';

part 'songs_container.freezed.dart';

@freezed
class Container<T extends Iterable<Song>> with _$Container<T> {
  const factory Container.songsContainer({
    required T songs,
    required Map<int, Uint8List?> albumArtwork,
    CurrentlyPlayingSong? currentlyPlayingSong,
  }) = SongsContainer<T>;
}
