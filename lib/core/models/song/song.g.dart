// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'song.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Song _$$_SongFromJson(Map<String, dynamic> json) => _$_Song(
      id: json['_id'] as int,
      absolutePath: json['_data'] as String,
      uri: json['_uri'] as String?,
      displayName: json['_display_name'] as String,
      displayNameWOExt: json['_display_name_wo_ext'] as String,
      size: json['_size'] as int,
      album: json['album'] as String?,
      albumId: json['album_id'] as int?,
      artist: json['artist'] as String?,
      artistId: json['artist_id'] as int?,
      bookmark: json['bookmark'] as int?,
      composer: json['composer'] as String?,
      dateAdded: _dateFromMap(json['date_added'] as int?),
      dateModified: _dateFromMap(json['date_modified'] as int?),
      title: json['title'] as String,
      fileExtension: json['file_extension'] as String,
      favorite: json['favorite'] == null
          ? false
          : _favoriteFromMap(json['favorite'] as int),
    );

Map<String, dynamic> _$$_SongToJson(_$_Song instance) => <String, dynamic>{
      '_id': instance.id,
      '_data': instance.absolutePath,
      '_uri': instance.uri,
      '_display_name': instance.displayName,
      '_display_name_wo_ext': instance.displayNameWOExt,
      '_size': instance.size,
      'album': instance.album,
      'album_id': instance.albumId,
      'artist': instance.artist,
      'artist_id': instance.artistId,
      'bookmark': instance.bookmark,
      'composer': instance.composer,
      'date_added': _dateToMap(instance.dateAdded),
      'date_modified': _dateToMap(instance.dateModified),
      'title': instance.title,
      'file_extension': instance.fileExtension,
      'favorite': _favoriteToMap(instance.favorite),
    };
