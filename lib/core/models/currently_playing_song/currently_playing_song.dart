import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'currently_playing_song.freezed.dart';
part 'currently_playing_song.g.dart';

@freezed
class CurrentlyPlayingSong with _$CurrentlyPlayingSong {
  const factory CurrentlyPlayingSong(Duration currentPlayPosition, String songPath) =
      _CurrentlyPlayingSong;

  factory CurrentlyPlayingSong.fromJson(Map<String, dynamic> map) =>
      _$CurrentlyPlayingSongFromJson(map);
}
