// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'songs_folder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SongsFolder _$$SongsFolderFromJson(Map<String, dynamic> json) =>
    _$SongsFolder(
      folderName: json['folder_name'] as String,
      artWork: _artworkFromJson(json['album_artwork'] as Uint8List?),
      songsCount: json['songs_count'] as int,
    );

Map<String, dynamic> _$$SongsFolderToJson(_$SongsFolder instance) =>
    <String, dynamic>{
      'folder_name': instance.folderName,
      'album_artwork': instance.artWork,
      'songs_count': instance.songsCount,
    };
