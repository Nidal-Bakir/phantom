import 'dart:typed_data';
import 'dart:collection';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:phantom/core/models/currently_playing_song/currently_playing_song.dart';
import 'package:phantom/core/models/song/song.dart';

part 'songs_container.freezed.dart';

@freezed
class Container with _$Container {
  const factory Container.songsContainer({
    required UnmodifiableListView<Song> songs,
    required Map<int, Uint8List?> albumArtwork,
    CurrentlyPlayingSong? currentlyPlayingSong,
  }) = SongsContainer;
}
