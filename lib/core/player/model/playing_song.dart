import 'package:just_audio/just_audio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:phantom/core/models/song/song.dart';
part 'playing_song.freezed.dart';
@freezed
class PlayingSong with _$PlayingSong {
  const factory PlayingSong({
    required int cpsIndex,
    required PlayerState playerState,
    required Song song,
    required LoopMode loopMode,
    required IcyMetadata? icyMetadata,
    required Stream<Duration> position,
  }) = _PlayingSong;
}
