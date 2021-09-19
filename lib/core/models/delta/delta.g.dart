// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SongsDelta _$$SongsDeltaFromJson(Map<String, dynamic> json) => _$SongsDelta(
      newSongs: (json['newSongs'] as List<dynamic>)
          .map((e) => Song.fromJson(e as Map<String, dynamic>))
          .toList(),
      deletedSongsIds: (json['deletedSongsIds'] as List<dynamic>)
          .map((e) => e as int)
          .toSet(),
    );

Map<String, dynamic> _$$SongsDeltaToJson(_$SongsDelta instance) =>
    <String, dynamic>{
      'newSongs': instance.newSongs.map((e) => e.toJson()).toList(),
      'deletedSongsIds': instance.deletedSongsIds.toList(),
    };
