// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeltaSongs _$$DeltaSongsFromJson(Map<String, dynamic> json) => _$DeltaSongs(
      newSongsIds:
          (json['newSongsIds'] as List<dynamic>).map((e) => e as int).toSet(),
      deletedSongsIds: (json['deletedSongsIds'] as List<dynamic>)
          .map((e) => e as int)
          .toSet(),
    );

Map<String, dynamic> _$$DeltaSongsToJson(_$DeltaSongs instance) =>
    <String, dynamic>{
      'newSongsIds': instance.newSongsIds.toList(),
      'deletedSongsIds': instance.deletedSongsIds.toList(),
    };
