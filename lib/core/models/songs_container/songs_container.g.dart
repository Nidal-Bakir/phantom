// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'songs_container.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SongsContainer _$$SongsContainerFromJson(Map<String, dynamic> json) =>
    _$SongsContainer(
      songs: const UnmodifiableListViewConverter()
          .fromJson(json['songs'] as List<Song>),
      albumArtwork: const Uint8ListMapConverter()
          .fromJson(json['albumArtwork'] as Map<int, List<int>?>),
    );

Map<String, dynamic> _$$SongsContainerToJson(_$SongsContainer instance) =>
    <String, dynamic>{
      'songs': const UnmodifiableListViewConverter().toJson(instance.songs),
      'albumArtwork':
          const Uint8ListMapConverter().toJson(instance.albumArtwork),
    };
