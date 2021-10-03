// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'song.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Song _$SongFromJson(Map<String, dynamic> json) {
  return _Song.fromJson(json);
}

/// @nodoc
class _$SongTearOff {
  const _$SongTearOff();

  _Song call(
      {@JsonKey(name: SongTable.id)
          required int id,
      @JsonKey(name: SongTable.songPath)
          required String absolutePath,
      @JsonKey(name: SongTable.folderName)
          required String folderName,
      @JsonKey(name: SongTable.uri)
          String? uri,
      @JsonKey(name: SongTable.displayName)
          required String displayName,
      @JsonKey(name: SongTable.displayNameWithOutExtension)
          required String displayNameWOExt,
      @JsonKey(name: SongTable.size)
          required int size,
      @JsonKey(name: SongTable.album)
          String? album,
      @JsonKey(name: SongTable.albumId)
          int? albumId,
      @JsonKey(name: SongTable.artist)
          String? artist,
      @JsonKey(name: SongTable.artistId)
          int? artistId,
      @JsonKey(name: SongTable.bookmark)
          int? bookmark,
      @JsonKey(name: SongTable.composer)
          String? composer,
      @JsonKey(name: SongTable.dateAdded, fromJson: _dateFromMap, toJson: _dateToMap)
          DateTime? dateAdded,
      @JsonKey(name: SongTable.dateModified, fromJson: _dateFromMap, toJson: _dateToMap)
          DateTime? dateModified,
      @JsonKey(name: SongTable.title)
          required String title,
      @JsonKey(name: SongTable.fileExtension)
          required String fileExtension,
      @JsonKey(name: SongTable.favorite, fromJson: _favoriteFromMap, toJson: _favoriteToMap)
          bool favorite = false}) {
    return _Song(
      id: id,
      absolutePath: absolutePath,
      folderName: folderName,
      uri: uri,
      displayName: displayName,
      displayNameWOExt: displayNameWOExt,
      size: size,
      album: album,
      albumId: albumId,
      artist: artist,
      artistId: artistId,
      bookmark: bookmark,
      composer: composer,
      dateAdded: dateAdded,
      dateModified: dateModified,
      title: title,
      fileExtension: fileExtension,
      favorite: favorite,
    );
  }

  Song fromJson(Map<String, Object> json) {
    return Song.fromJson(json);
  }
}

/// @nodoc
const $Song = _$SongTearOff();

/// @nodoc
mixin _$Song {
  /// Return song [id]
  @JsonKey(name: SongTable.id)
  int get id => throw _privateConstructorUsedError;

  /// Return song [absolute path]
  @JsonKey(name: SongTable.songPath)
  String get absolutePath => throw _privateConstructorUsedError;

  /// Return song [folder name]
  @JsonKey(name: SongTable.folderName)
  String get folderName => throw _privateConstructorUsedError;

  /// Return song [uri]
  @JsonKey(name: SongTable.uri)
  String? get uri => throw _privateConstructorUsedError;

  /// Return song [displayName]
  @JsonKey(name: SongTable.displayName)
  String get displayName => throw _privateConstructorUsedError;

  /// Return song [displayName] without Extension
  @JsonKey(name: SongTable.displayNameWithOutExtension)
  String get displayNameWOExt => throw _privateConstructorUsedError;

  /// Return song [size]
  @JsonKey(name: SongTable.size)
  int get size => throw _privateConstructorUsedError;

  /// Return song [album]
  @JsonKey(name: SongTable.album)
  String? get album => throw _privateConstructorUsedError;

  /// Return song [albumId]
  @JsonKey(name: SongTable.albumId)
  int? get albumId => throw _privateConstructorUsedError;

  /// Return song [artist]
  @JsonKey(name: SongTable.artist)
  String? get artist => throw _privateConstructorUsedError;

  /// Return song [artistId]
  @JsonKey(name: SongTable.artistId)
  int? get artistId => throw _privateConstructorUsedError;

  /// Return song [bookmark]
  @JsonKey(name: SongTable.bookmark)
  int? get bookmark => throw _privateConstructorUsedError;

  /// Return song [composer]
  @JsonKey(name: SongTable.composer)
  String? get composer => throw _privateConstructorUsedError;

  /// Return song [dateAdded] to the app database
  @JsonKey(
      name: SongTable.dateAdded, fromJson: _dateFromMap, toJson: _dateToMap)
  DateTime? get dateAdded => throw _privateConstructorUsedError;

  /// Return song [dateModified]
  @JsonKey(
      name: SongTable.dateModified, fromJson: _dateFromMap, toJson: _dateToMap)
  DateTime? get dateModified => throw _privateConstructorUsedError;

  /// Return song [title]
  @JsonKey(name: SongTable.title)
  String get title => throw _privateConstructorUsedError;

  /// Return song only the [fileExtension]
  @JsonKey(name: SongTable.fileExtension)
  String get fileExtension => throw _privateConstructorUsedError;

  /// if is a favorite song
  @JsonKey(
      name: SongTable.favorite,
      fromJson: _favoriteFromMap,
      toJson: _favoriteToMap)
  bool get favorite => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SongCopyWith<Song> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongCopyWith<$Res> {
  factory $SongCopyWith(Song value, $Res Function(Song) then) =
      _$SongCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: SongTable.id)
          int id,
      @JsonKey(name: SongTable.songPath)
          String absolutePath,
      @JsonKey(name: SongTable.folderName)
          String folderName,
      @JsonKey(name: SongTable.uri)
          String? uri,
      @JsonKey(name: SongTable.displayName)
          String displayName,
      @JsonKey(name: SongTable.displayNameWithOutExtension)
          String displayNameWOExt,
      @JsonKey(name: SongTable.size)
          int size,
      @JsonKey(name: SongTable.album)
          String? album,
      @JsonKey(name: SongTable.albumId)
          int? albumId,
      @JsonKey(name: SongTable.artist)
          String? artist,
      @JsonKey(name: SongTable.artistId)
          int? artistId,
      @JsonKey(name: SongTable.bookmark)
          int? bookmark,
      @JsonKey(name: SongTable.composer)
          String? composer,
      @JsonKey(name: SongTable.dateAdded, fromJson: _dateFromMap, toJson: _dateToMap)
          DateTime? dateAdded,
      @JsonKey(name: SongTable.dateModified, fromJson: _dateFromMap, toJson: _dateToMap)
          DateTime? dateModified,
      @JsonKey(name: SongTable.title)
          String title,
      @JsonKey(name: SongTable.fileExtension)
          String fileExtension,
      @JsonKey(name: SongTable.favorite, fromJson: _favoriteFromMap, toJson: _favoriteToMap)
          bool favorite});
}

/// @nodoc
class _$SongCopyWithImpl<$Res> implements $SongCopyWith<$Res> {
  _$SongCopyWithImpl(this._value, this._then);

  final Song _value;
  // ignore: unused_field
  final $Res Function(Song) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? absolutePath = freezed,
    Object? folderName = freezed,
    Object? uri = freezed,
    Object? displayName = freezed,
    Object? displayNameWOExt = freezed,
    Object? size = freezed,
    Object? album = freezed,
    Object? albumId = freezed,
    Object? artist = freezed,
    Object? artistId = freezed,
    Object? bookmark = freezed,
    Object? composer = freezed,
    Object? dateAdded = freezed,
    Object? dateModified = freezed,
    Object? title = freezed,
    Object? fileExtension = freezed,
    Object? favorite = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      absolutePath: absolutePath == freezed
          ? _value.absolutePath
          : absolutePath // ignore: cast_nullable_to_non_nullable
              as String,
      folderName: folderName == freezed
          ? _value.folderName
          : folderName // ignore: cast_nullable_to_non_nullable
              as String,
      uri: uri == freezed
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      displayNameWOExt: displayNameWOExt == freezed
          ? _value.displayNameWOExt
          : displayNameWOExt // ignore: cast_nullable_to_non_nullable
              as String,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      album: album == freezed
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as String?,
      albumId: albumId == freezed
          ? _value.albumId
          : albumId // ignore: cast_nullable_to_non_nullable
              as int?,
      artist: artist == freezed
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String?,
      artistId: artistId == freezed
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as int?,
      bookmark: bookmark == freezed
          ? _value.bookmark
          : bookmark // ignore: cast_nullable_to_non_nullable
              as int?,
      composer: composer == freezed
          ? _value.composer
          : composer // ignore: cast_nullable_to_non_nullable
              as String?,
      dateAdded: dateAdded == freezed
          ? _value.dateAdded
          : dateAdded // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateModified: dateModified == freezed
          ? _value.dateModified
          : dateModified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      fileExtension: fileExtension == freezed
          ? _value.fileExtension
          : fileExtension // ignore: cast_nullable_to_non_nullable
              as String,
      favorite: favorite == freezed
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$SongCopyWith<$Res> implements $SongCopyWith<$Res> {
  factory _$SongCopyWith(_Song value, $Res Function(_Song) then) =
      __$SongCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: SongTable.id)
          int id,
      @JsonKey(name: SongTable.songPath)
          String absolutePath,
      @JsonKey(name: SongTable.folderName)
          String folderName,
      @JsonKey(name: SongTable.uri)
          String? uri,
      @JsonKey(name: SongTable.displayName)
          String displayName,
      @JsonKey(name: SongTable.displayNameWithOutExtension)
          String displayNameWOExt,
      @JsonKey(name: SongTable.size)
          int size,
      @JsonKey(name: SongTable.album)
          String? album,
      @JsonKey(name: SongTable.albumId)
          int? albumId,
      @JsonKey(name: SongTable.artist)
          String? artist,
      @JsonKey(name: SongTable.artistId)
          int? artistId,
      @JsonKey(name: SongTable.bookmark)
          int? bookmark,
      @JsonKey(name: SongTable.composer)
          String? composer,
      @JsonKey(name: SongTable.dateAdded, fromJson: _dateFromMap, toJson: _dateToMap)
          DateTime? dateAdded,
      @JsonKey(name: SongTable.dateModified, fromJson: _dateFromMap, toJson: _dateToMap)
          DateTime? dateModified,
      @JsonKey(name: SongTable.title)
          String title,
      @JsonKey(name: SongTable.fileExtension)
          String fileExtension,
      @JsonKey(name: SongTable.favorite, fromJson: _favoriteFromMap, toJson: _favoriteToMap)
          bool favorite});
}

/// @nodoc
class __$SongCopyWithImpl<$Res> extends _$SongCopyWithImpl<$Res>
    implements _$SongCopyWith<$Res> {
  __$SongCopyWithImpl(_Song _value, $Res Function(_Song) _then)
      : super(_value, (v) => _then(v as _Song));

  @override
  _Song get _value => super._value as _Song;

  @override
  $Res call({
    Object? id = freezed,
    Object? absolutePath = freezed,
    Object? folderName = freezed,
    Object? uri = freezed,
    Object? displayName = freezed,
    Object? displayNameWOExt = freezed,
    Object? size = freezed,
    Object? album = freezed,
    Object? albumId = freezed,
    Object? artist = freezed,
    Object? artistId = freezed,
    Object? bookmark = freezed,
    Object? composer = freezed,
    Object? dateAdded = freezed,
    Object? dateModified = freezed,
    Object? title = freezed,
    Object? fileExtension = freezed,
    Object? favorite = freezed,
  }) {
    return _then(_Song(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      absolutePath: absolutePath == freezed
          ? _value.absolutePath
          : absolutePath // ignore: cast_nullable_to_non_nullable
              as String,
      folderName: folderName == freezed
          ? _value.folderName
          : folderName // ignore: cast_nullable_to_non_nullable
              as String,
      uri: uri == freezed
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      displayNameWOExt: displayNameWOExt == freezed
          ? _value.displayNameWOExt
          : displayNameWOExt // ignore: cast_nullable_to_non_nullable
              as String,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      album: album == freezed
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as String?,
      albumId: albumId == freezed
          ? _value.albumId
          : albumId // ignore: cast_nullable_to_non_nullable
              as int?,
      artist: artist == freezed
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String?,
      artistId: artistId == freezed
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as int?,
      bookmark: bookmark == freezed
          ? _value.bookmark
          : bookmark // ignore: cast_nullable_to_non_nullable
              as int?,
      composer: composer == freezed
          ? _value.composer
          : composer // ignore: cast_nullable_to_non_nullable
              as String?,
      dateAdded: dateAdded == freezed
          ? _value.dateAdded
          : dateAdded // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateModified: dateModified == freezed
          ? _value.dateModified
          : dateModified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      fileExtension: fileExtension == freezed
          ? _value.fileExtension
          : fileExtension // ignore: cast_nullable_to_non_nullable
              as String,
      favorite: favorite == freezed
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_Song extends _Song {
  _$_Song(
      {@JsonKey(name: SongTable.id)
          required this.id,
      @JsonKey(name: SongTable.songPath)
          required this.absolutePath,
      @JsonKey(name: SongTable.folderName)
          required this.folderName,
      @JsonKey(name: SongTable.uri)
          this.uri,
      @JsonKey(name: SongTable.displayName)
          required this.displayName,
      @JsonKey(name: SongTable.displayNameWithOutExtension)
          required this.displayNameWOExt,
      @JsonKey(name: SongTable.size)
          required this.size,
      @JsonKey(name: SongTable.album)
          this.album,
      @JsonKey(name: SongTable.albumId)
          this.albumId,
      @JsonKey(name: SongTable.artist)
          this.artist,
      @JsonKey(name: SongTable.artistId)
          this.artistId,
      @JsonKey(name: SongTable.bookmark)
          this.bookmark,
      @JsonKey(name: SongTable.composer)
          this.composer,
      @JsonKey(name: SongTable.dateAdded, fromJson: _dateFromMap, toJson: _dateToMap)
          this.dateAdded,
      @JsonKey(name: SongTable.dateModified, fromJson: _dateFromMap, toJson: _dateToMap)
          this.dateModified,
      @JsonKey(name: SongTable.title)
          required this.title,
      @JsonKey(name: SongTable.fileExtension)
          required this.fileExtension,
      @JsonKey(name: SongTable.favorite, fromJson: _favoriteFromMap, toJson: _favoriteToMap)
          this.favorite = false})
      : super._();

  factory _$_Song.fromJson(Map<String, dynamic> json) => _$$_SongFromJson(json);

  @override

  /// Return song [id]
  @JsonKey(name: SongTable.id)
  final int id;
  @override

  /// Return song [absolute path]
  @JsonKey(name: SongTable.songPath)
  final String absolutePath;
  @override

  /// Return song [folder name]
  @JsonKey(name: SongTable.folderName)
  final String folderName;
  @override

  /// Return song [uri]
  @JsonKey(name: SongTable.uri)
  final String? uri;
  @override

  /// Return song [displayName]
  @JsonKey(name: SongTable.displayName)
  final String displayName;
  @override

  /// Return song [displayName] without Extension
  @JsonKey(name: SongTable.displayNameWithOutExtension)
  final String displayNameWOExt;
  @override

  /// Return song [size]
  @JsonKey(name: SongTable.size)
  final int size;
  @override

  /// Return song [album]
  @JsonKey(name: SongTable.album)
  final String? album;
  @override

  /// Return song [albumId]
  @JsonKey(name: SongTable.albumId)
  final int? albumId;
  @override

  /// Return song [artist]
  @JsonKey(name: SongTable.artist)
  final String? artist;
  @override

  /// Return song [artistId]
  @JsonKey(name: SongTable.artistId)
  final int? artistId;
  @override

  /// Return song [bookmark]
  @JsonKey(name: SongTable.bookmark)
  final int? bookmark;
  @override

  /// Return song [composer]
  @JsonKey(name: SongTable.composer)
  final String? composer;
  @override

  /// Return song [dateAdded] to the app database
  @JsonKey(
      name: SongTable.dateAdded, fromJson: _dateFromMap, toJson: _dateToMap)
  final DateTime? dateAdded;
  @override

  /// Return song [dateModified]
  @JsonKey(
      name: SongTable.dateModified, fromJson: _dateFromMap, toJson: _dateToMap)
  final DateTime? dateModified;
  @override

  /// Return song [title]
  @JsonKey(name: SongTable.title)
  final String title;
  @override

  /// Return song only the [fileExtension]
  @JsonKey(name: SongTable.fileExtension)
  final String fileExtension;
  @override

  /// if is a favorite song
  @JsonKey(
      name: SongTable.favorite,
      fromJson: _favoriteFromMap,
      toJson: _favoriteToMap)
  final bool favorite;

  @override
  String toString() {
    return 'Song(id: $id, absolutePath: $absolutePath, folderName: $folderName, uri: $uri, displayName: $displayName, displayNameWOExt: $displayNameWOExt, size: $size, album: $album, albumId: $albumId, artist: $artist, artistId: $artistId, bookmark: $bookmark, composer: $composer, dateAdded: $dateAdded, dateModified: $dateModified, title: $title, fileExtension: $fileExtension, favorite: $favorite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Song &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.absolutePath, absolutePath) ||
                const DeepCollectionEquality()
                    .equals(other.absolutePath, absolutePath)) &&
            (identical(other.folderName, folderName) ||
                const DeepCollectionEquality()
                    .equals(other.folderName, folderName)) &&
            (identical(other.uri, uri) ||
                const DeepCollectionEquality().equals(other.uri, uri)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.displayNameWOExt, displayNameWOExt) ||
                const DeepCollectionEquality()
                    .equals(other.displayNameWOExt, displayNameWOExt)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)) &&
            (identical(other.album, album) ||
                const DeepCollectionEquality().equals(other.album, album)) &&
            (identical(other.albumId, albumId) ||
                const DeepCollectionEquality()
                    .equals(other.albumId, albumId)) &&
            (identical(other.artist, artist) ||
                const DeepCollectionEquality().equals(other.artist, artist)) &&
            (identical(other.artistId, artistId) ||
                const DeepCollectionEquality()
                    .equals(other.artistId, artistId)) &&
            (identical(other.bookmark, bookmark) ||
                const DeepCollectionEquality()
                    .equals(other.bookmark, bookmark)) &&
            (identical(other.composer, composer) ||
                const DeepCollectionEquality()
                    .equals(other.composer, composer)) &&
            (identical(other.dateAdded, dateAdded) ||
                const DeepCollectionEquality()
                    .equals(other.dateAdded, dateAdded)) &&
            (identical(other.dateModified, dateModified) ||
                const DeepCollectionEquality()
                    .equals(other.dateModified, dateModified)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.fileExtension, fileExtension) ||
                const DeepCollectionEquality()
                    .equals(other.fileExtension, fileExtension)) &&
            (identical(other.favorite, favorite) ||
                const DeepCollectionEquality()
                    .equals(other.favorite, favorite)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(absolutePath) ^
      const DeepCollectionEquality().hash(folderName) ^
      const DeepCollectionEquality().hash(uri) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(displayNameWOExt) ^
      const DeepCollectionEquality().hash(size) ^
      const DeepCollectionEquality().hash(album) ^
      const DeepCollectionEquality().hash(albumId) ^
      const DeepCollectionEquality().hash(artist) ^
      const DeepCollectionEquality().hash(artistId) ^
      const DeepCollectionEquality().hash(bookmark) ^
      const DeepCollectionEquality().hash(composer) ^
      const DeepCollectionEquality().hash(dateAdded) ^
      const DeepCollectionEquality().hash(dateModified) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(fileExtension) ^
      const DeepCollectionEquality().hash(favorite);

  @JsonKey(ignore: true)
  @override
  _$SongCopyWith<_Song> get copyWith =>
      __$SongCopyWithImpl<_Song>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SongToJson(this);
  }
}

abstract class _Song extends Song {
  factory _Song(
      {@JsonKey(name: SongTable.id)
          required int id,
      @JsonKey(name: SongTable.songPath)
          required String absolutePath,
      @JsonKey(name: SongTable.folderName)
          required String folderName,
      @JsonKey(name: SongTable.uri)
          String? uri,
      @JsonKey(name: SongTable.displayName)
          required String displayName,
      @JsonKey(name: SongTable.displayNameWithOutExtension)
          required String displayNameWOExt,
      @JsonKey(name: SongTable.size)
          required int size,
      @JsonKey(name: SongTable.album)
          String? album,
      @JsonKey(name: SongTable.albumId)
          int? albumId,
      @JsonKey(name: SongTable.artist)
          String? artist,
      @JsonKey(name: SongTable.artistId)
          int? artistId,
      @JsonKey(name: SongTable.bookmark)
          int? bookmark,
      @JsonKey(name: SongTable.composer)
          String? composer,
      @JsonKey(name: SongTable.dateAdded, fromJson: _dateFromMap, toJson: _dateToMap)
          DateTime? dateAdded,
      @JsonKey(name: SongTable.dateModified, fromJson: _dateFromMap, toJson: _dateToMap)
          DateTime? dateModified,
      @JsonKey(name: SongTable.title)
          required String title,
      @JsonKey(name: SongTable.fileExtension)
          required String fileExtension,
      @JsonKey(name: SongTable.favorite, fromJson: _favoriteFromMap, toJson: _favoriteToMap)
          bool favorite}) = _$_Song;
  _Song._() : super._();

  factory _Song.fromJson(Map<String, dynamic> json) = _$_Song.fromJson;

  @override

  /// Return song [id]
  @JsonKey(name: SongTable.id)
  int get id => throw _privateConstructorUsedError;
  @override

  /// Return song [absolute path]
  @JsonKey(name: SongTable.songPath)
  String get absolutePath => throw _privateConstructorUsedError;
  @override

  /// Return song [folder name]
  @JsonKey(name: SongTable.folderName)
  String get folderName => throw _privateConstructorUsedError;
  @override

  /// Return song [uri]
  @JsonKey(name: SongTable.uri)
  String? get uri => throw _privateConstructorUsedError;
  @override

  /// Return song [displayName]
  @JsonKey(name: SongTable.displayName)
  String get displayName => throw _privateConstructorUsedError;
  @override

  /// Return song [displayName] without Extension
  @JsonKey(name: SongTable.displayNameWithOutExtension)
  String get displayNameWOExt => throw _privateConstructorUsedError;
  @override

  /// Return song [size]
  @JsonKey(name: SongTable.size)
  int get size => throw _privateConstructorUsedError;
  @override

  /// Return song [album]
  @JsonKey(name: SongTable.album)
  String? get album => throw _privateConstructorUsedError;
  @override

  /// Return song [albumId]
  @JsonKey(name: SongTable.albumId)
  int? get albumId => throw _privateConstructorUsedError;
  @override

  /// Return song [artist]
  @JsonKey(name: SongTable.artist)
  String? get artist => throw _privateConstructorUsedError;
  @override

  /// Return song [artistId]
  @JsonKey(name: SongTable.artistId)
  int? get artistId => throw _privateConstructorUsedError;
  @override

  /// Return song [bookmark]
  @JsonKey(name: SongTable.bookmark)
  int? get bookmark => throw _privateConstructorUsedError;
  @override

  /// Return song [composer]
  @JsonKey(name: SongTable.composer)
  String? get composer => throw _privateConstructorUsedError;
  @override

  /// Return song [dateAdded] to the app database
  @JsonKey(
      name: SongTable.dateAdded, fromJson: _dateFromMap, toJson: _dateToMap)
  DateTime? get dateAdded => throw _privateConstructorUsedError;
  @override

  /// Return song [dateModified]
  @JsonKey(
      name: SongTable.dateModified, fromJson: _dateFromMap, toJson: _dateToMap)
  DateTime? get dateModified => throw _privateConstructorUsedError;
  @override

  /// Return song [title]
  @JsonKey(name: SongTable.title)
  String get title => throw _privateConstructorUsedError;
  @override

  /// Return song only the [fileExtension]
  @JsonKey(name: SongTable.fileExtension)
  String get fileExtension => throw _privateConstructorUsedError;
  @override

  /// if is a favorite song
  @JsonKey(
      name: SongTable.favorite,
      fromJson: _favoriteFromMap,
      toJson: _favoriteToMap)
  bool get favorite => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SongCopyWith<_Song> get copyWith => throw _privateConstructorUsedError;
}
