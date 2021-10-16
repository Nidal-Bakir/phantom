import 'dart:collection';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:phantom/core/data/database/database_table.dart';

part 'song.freezed.dart';
part 'song.g.dart';

@freezed
class Song extends LinkedListEntry<Song>
    with _$Song
    implements Comparable<Song> {
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
    @JsonKey(name: SongTable.dateAdded, fromJson: _addedDateFromMap, toJson: _addedDateToMap)
        required DateTime dateAdded,

    /// Return song [dateModified]
    @JsonKey(name: SongTable.dateModified, fromJson: _modifiedDateFromMap, toJson: _modifiedDateToMap)
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
      return id.compareTo(other.id);
    }
    return -1;
  }

  /// compare the meta song info like title,
  /// song path (in case song moved to anther folder) and displayName ect...
  ///
  /// DO NOT compare the added date or modified date they are not reliable and
  /// change every time query them form the device.
  ///
  /// Other members are app specific functionally like favorite, not part
  /// of meta data for a song.
  bool isEqualMetaSongInfo(Song other) {
    return id == other.id &&
        absolutePath == other.absolutePath &&
        displayName == other.displayName &&
        title == other.title &&
        uri == other.uri &&
        album == other.album &&
        albumId == other.albumId &&
        bookmark == other.bookmark &&
        composer == other.composer;
  }
}

DateTime? _modifiedDateFromMap(int? date) {
  return date == null ? null : DateTime.fromMillisecondsSinceEpoch(date);
}

int? _modifiedDateToMap(DateTime? date) {
  return date?.millisecondsSinceEpoch;
}

DateTime _addedDateFromMap(int date) {
  return DateTime.fromMillisecondsSinceEpoch(date);
}

int _addedDateToMap(DateTime date) {
  return date.millisecondsSinceEpoch;
}

int _favoriteToMap(bool favorite) => favorite ? 1 : 0;
bool _favoriteFromMap(int favorite) => favorite == 1 ? true : false;
