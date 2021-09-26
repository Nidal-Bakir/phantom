
import 'package:freezed_annotation/freezed_annotation.dart';

part 'song.freezed.dart';
part 'song.g.dart';

@freezed
class Song with _$Song {
  @JsonSerializable()
  const factory Song({
    /// Return song [id]
    @JsonKey(name: '_id') required int id,

    /// Return song [absolute path]
    @JsonKey(name: '_data') required String absolutePath,

    /// Return song [uri]
    @JsonKey(name: '_uri') String? uri,

    /// Return song [displayName]
    @JsonKey(name: '_display_name') required String displayName,

    /// Return song [displayName] without Extension
    @JsonKey(name: '_display_name_wo_ext') required String displayNameWOExt,

    /// Return song [size]
    @JsonKey(name: '_size') required int size,

    /// Return song [album]
    @JsonKey(name: 'album') String? album,

    /// Return song [albumId]
    @JsonKey(name: 'album_id') int? albumId,

    /// Return song [artist]
    @JsonKey(name: 'artist') String? artist,

    /// Return song [artistId]
    @JsonKey(name: 'artist_id') int? artistId,

    /// Return song [bookmark]
    @JsonKey(name: 'bookmark') int? bookmark,

    /// Return song [composer]
    @JsonKey(name: 'composer') String? composer,

    /// Return song [dateAdded] to the app database
    @JsonKey(name: 'date_added', fromJson: _dateFromMap, toJson: _dateToMap)
        DateTime? dateAdded,

    /// Return song [dateModified]
    @JsonKey(name: 'date_modified', fromJson: _dateFromMap, toJson: _dateToMap)
        DateTime? dateModified,

    /// Return song [title]
    @JsonKey(name: 'title') required String title,

    /// Return song only the [fileExtension]
    @JsonKey(name: 'file_extension') required String fileExtension,

    /// if is a favorite song
    @JsonKey(
        name: 'favorite', fromJson: _favoriteFromMap, toJson: _favoriteToMap)
    @Default(false)
        bool favorite,
  }) = _Song;

  factory Song.fromJson(Map<String, dynamic> map) => _$SongFromJson(map);
}

DateTime? _dateFromMap(int? date) {
  return date == null ? null : DateTime.fromMillisecondsSinceEpoch(date);
}

int? _dateToMap(DateTime? date) {
  return date?.millisecondsSinceEpoch;
}

int _favoriteToMap(bool favorite) => favorite ? 1 : 0;
bool _favoriteFromMap(int favorite) => favorite == 1 ? true : false;
