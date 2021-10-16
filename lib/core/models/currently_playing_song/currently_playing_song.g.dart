// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currently_playing_song.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CurrentlyPlayingSong _$$_CurrentlyPlayingSongFromJson(
        Map<String, dynamic> json) =>
    _$_CurrentlyPlayingSong(
      Duration(microseconds: json['currentPlayPosition'] as int),
      json['songPath'] as String,
    );

Map<String, dynamic> _$$_CurrentlyPlayingSongToJson(
        _$_CurrentlyPlayingSong instance) =>
    <String, dynamic>{
      'currentPlayPosition': instance.currentPlayPosition.inMicroseconds,
      'songPath': instance.songPath,
    };
