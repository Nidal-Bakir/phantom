import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:phantom/core/data/database/database_table.dart';

part 'song.freezed.dart';
part 'song.g.dart';

@freezed
class Song extends Comparable<int> with _$Song {
  Song._();
  @JsonSerializable()
  factory Song({
    /// Return song [id]
    @JsonKey(name: SongTable.id) required int id,

    /// Return song [absolute path]
    @JsonKey(name: SongTable.songPath) required String absolutePath,

    /// Return song [folder name]
    @JsonKey(name: SongTable.folderName) required String folderName,

    /// Return song [uri]
    @JsonKey(name: SongTable.uri) String? uri,

    /// Return song [displayName]
    @JsonKey(name: SongTable.displayName) required String displayName,

    /// Return song [displayName] without Extension
    @JsonKey(name: SongTable.displayNameWithOutExtension)
        required String displayNameWOExt,

    /// Return song [size]
    @JsonKey(name: SongTable.size) required int size,

    /// Return song [album]
    @JsonKey(name: SongTable.album) String? album,

    /// Return song [albumId]
    @JsonKey(name: SongTable.albumId) int? albumId,

    /// Return song [artist]
    @JsonKey(name: SongTable.artist) String? artist,

    /// Return song [artistId]
    @JsonKey(name: SongTable.artistId) int? artistId,

    /// Return song [bookmark]
    @JsonKey(name: SongTable.bookmark) int? bookmark,

    /// Return song [composer]
    @JsonKey(name: SongTable.composer) String? composer,

    /// Return song [dateAdded] to the app database
    @JsonKey(name: SongTable.dateAdded, fromJson: _dateFromMap, toJson: _dateToMap)
        DateTime? dateAdded,

    /// Return song [dateModified]
    @JsonKey(name: SongTable.dateModified, fromJson: _dateFromMap, toJson: _dateToMap)
        DateTime? dateModified,

    /// Return song [title]
    @JsonKey(name: SongTable.title) required String title,

    /// Return song only the [fileExtension]
    @JsonKey(name: SongTable.fileExtension) required String fileExtension,

    /// if is a favorite song
    @JsonKey(
        name: SongTable.favorite,
        fromJson: _favoriteFromMap,
        toJson: _favoriteToMap)
    @Default(false)
        bool favorite,
  }) = _Song;

  factory Song.fromJson(Map<String, dynamic> map) => _$SongFromJson(map);

  @override
  int compareTo(Object other) {
    if (other is Song) {
      return albumId?.compareTo(other.albumId ?? -1) ?? -1;
    } else if (other is int) {
      return albumId?.compareTo(other) ?? -1;
    }
    return -1;
  }
}

DateTime? _dateFromMap(int? date) {
  return date == null ? null : DateTime.fromMillisecondsSinceEpoch(date);
}

int? _dateToMap(DateTime? date) {
  return date?.millisecondsSinceEpoch;
}

int _favoriteToMap(bool favorite) => favorite ? 1 : 0;
bool _favoriteFromMap(int favorite) => favorite == 1 ? true : false;
