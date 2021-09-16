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

/// @nodoc
class _$SongTearOff {
  const _$SongTearOff();

  _Song call(
      {@JsonKey(name: '_id')
          required int id,
      @JsonKey(name: '_data')
          required String absolutePath,
      @JsonKey(name: '_uri')
          String? uri,
      @JsonKey(name: '_display_name')
          required String displayName,
      @JsonKey(name: '_display_name_wo_ext')
          required String displayNameWOExt,
      @JsonKey(name: '_size')
          required int size,
      @JsonKey(name: 'album')
          String? album,
      @JsonKey(name: 'album_id')
          int? albumId,
      @JsonKey(name: 'artist')
          String? artist,
      @JsonKey(name: 'artist_id')
          int? artistId,
      @JsonKey(name: 'bookmark')
          int? bookmark,
      @JsonKey(name: 'composer')
          String? composer,
      @JsonKey(name: 'date_added', fromJson: _dateFromMap)
          DateTime? dateAdded,
      @JsonKey(name: 'date_modified', fromJson: _dateFromMap)
          DateTime? dateModified,
      @JsonKey(name: 'title')
          required String title,
      @JsonKey(name: 'file_extension')
          required String fileExtension,
      @JsonKey(name: 'song_artwork', fromJson: _song)
          Uint8List? songArtwork}) {
    return _Song(
      id: id,
      absolutePath: absolutePath,
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
      songArtwork: songArtwork,
    );
  }
}

/// @nodoc
const $Song = _$SongTearOff();

/// @nodoc
mixin _$Song {
  /// Return song [id]
  @JsonKey(name: '_id')
  int get id => throw _privateConstructorUsedError;

  /// Return song [absolute path]
  @JsonKey(name: '_data')
  String get absolutePath => throw _privateConstructorUsedError;

  /// Return song [uri]
  @JsonKey(name: '_uri')
  String? get uri => throw _privateConstructorUsedError;

  /// Return song [displayName]
  @JsonKey(name: '_display_name')
  String get displayName => throw _privateConstructorUsedError;

  /// Return song [displayName] without Extension
  @JsonKey(name: '_display_name_wo_ext')
  String get displayNameWOExt => throw _privateConstructorUsedError;

  /// Return song [size]
  @JsonKey(name: '_size')
  int get size => throw _privateConstructorUsedError;

  /// Return song [album]
  @JsonKey(name: 'album')
  String? get album => throw _privateConstructorUsedError;

  /// Return song [albumId]
  @JsonKey(name: 'album_id')
  int? get albumId => throw _privateConstructorUsedError;

  /// Return song [artist]
  @JsonKey(name: 'artist')
  String? get artist => throw _privateConstructorUsedError;

  /// Return song [artistId]
  @JsonKey(name: 'artist_id')
  int? get artistId => throw _privateConstructorUsedError;

  /// Return song [bookmark]
  @JsonKey(name: 'bookmark')
  int? get bookmark => throw _privateConstructorUsedError;

  /// Return song [composer]
  @JsonKey(name: 'composer')
  String? get composer => throw _privateConstructorUsedError;

  /// Return song [dateAdded]
  @JsonKey(name: 'date_added', fromJson: _dateFromMap)
  DateTime? get dateAdded => throw _privateConstructorUsedError;

  /// Return song [dateModified]
  @JsonKey(name: 'date_modified', fromJson: _dateFromMap)
  DateTime? get dateModified => throw _privateConstructorUsedError;

  /// Return song [title]
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;

  /// Return song only the [fileExtension]
  @JsonKey(name: 'file_extension')
  String get fileExtension => throw _privateConstructorUsedError;
  @JsonKey(name: 'song_artwork', fromJson: _song)
  Uint8List? get songArtwork => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SongCopyWith<Song> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongCopyWith<$Res> {
  factory $SongCopyWith(Song value, $Res Function(Song) then) =
      _$SongCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id')
          int id,
      @JsonKey(name: '_data')
          String absolutePath,
      @JsonKey(name: '_uri')
          String? uri,
      @JsonKey(name: '_display_name')
          String displayName,
      @JsonKey(name: '_display_name_wo_ext')
          String displayNameWOExt,
      @JsonKey(name: '_size')
          int size,
      @JsonKey(name: 'album')
          String? album,
      @JsonKey(name: 'album_id')
          int? albumId,
      @JsonKey(name: 'artist')
          String? artist,
      @JsonKey(name: 'artist_id')
          int? artistId,
      @JsonKey(name: 'bookmark')
          int? bookmark,
      @JsonKey(name: 'composer')
          String? composer,
      @JsonKey(name: 'date_added', fromJson: _dateFromMap)
          DateTime? dateAdded,
      @JsonKey(name: 'date_modified', fromJson: _dateFromMap)
          DateTime? dateModified,
      @JsonKey(name: 'title')
          String title,
      @JsonKey(name: 'file_extension')
          String fileExtension,
      @JsonKey(name: 'song_artwork', fromJson: _song)
          Uint8List? songArtwork});
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
    Object? songArtwork = freezed,
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
      songArtwork: songArtwork == freezed
          ? _value.songArtwork
          : songArtwork // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc
abstract class _$SongCopyWith<$Res> implements $SongCopyWith<$Res> {
  factory _$SongCopyWith(_Song value, $Res Function(_Song) then) =
      __$SongCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_id')
          int id,
      @JsonKey(name: '_data')
          String absolutePath,
      @JsonKey(name: '_uri')
          String? uri,
      @JsonKey(name: '_display_name')
          String displayName,
      @JsonKey(name: '_display_name_wo_ext')
          String displayNameWOExt,
      @JsonKey(name: '_size')
          int size,
      @JsonKey(name: 'album')
          String? album,
      @JsonKey(name: 'album_id')
          int? albumId,
      @JsonKey(name: 'artist')
          String? artist,
      @JsonKey(name: 'artist_id')
          int? artistId,
      @JsonKey(name: 'bookmark')
          int? bookmark,
      @JsonKey(name: 'composer')
          String? composer,
      @JsonKey(name: 'date_added', fromJson: _dateFromMap)
          DateTime? dateAdded,
      @JsonKey(name: 'date_modified', fromJson: _dateFromMap)
          DateTime? dateModified,
      @JsonKey(name: 'title')
          String title,
      @JsonKey(name: 'file_extension')
          String fileExtension,
      @JsonKey(name: 'song_artwork', fromJson: _song)
          Uint8List? songArtwork});
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
    Object? songArtwork = freezed,
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
      songArtwork: songArtwork == freezed
          ? _value.songArtwork
          : songArtwork // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_Song implements _Song {
  const _$_Song(
      {@JsonKey(name: '_id') required this.id,
      @JsonKey(name: '_data') required this.absolutePath,
      @JsonKey(name: '_uri') this.uri,
      @JsonKey(name: '_display_name') required this.displayName,
      @JsonKey(name: '_display_name_wo_ext') required this.displayNameWOExt,
      @JsonKey(name: '_size') required this.size,
      @JsonKey(name: 'album') this.album,
      @JsonKey(name: 'album_id') this.albumId,
      @JsonKey(name: 'artist') this.artist,
      @JsonKey(name: 'artist_id') this.artistId,
      @JsonKey(name: 'bookmark') this.bookmark,
      @JsonKey(name: 'composer') this.composer,
      @JsonKey(name: 'date_added', fromJson: _dateFromMap) this.dateAdded,
      @JsonKey(name: 'date_modified', fromJson: _dateFromMap) this.dateModified,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'file_extension') required this.fileExtension,
      @JsonKey(name: 'song_artwork', fromJson: _song) this.songArtwork});

  @override

  /// Return song [id]
  @JsonKey(name: '_id')
  final int id;
  @override

  /// Return song [absolute path]
  @JsonKey(name: '_data')
  final String absolutePath;
  @override

  /// Return song [uri]
  @JsonKey(name: '_uri')
  final String? uri;
  @override

  /// Return song [displayName]
  @JsonKey(name: '_display_name')
  final String displayName;
  @override

  /// Return song [displayName] without Extension
  @JsonKey(name: '_display_name_wo_ext')
  final String displayNameWOExt;
  @override

  /// Return song [size]
  @JsonKey(name: '_size')
  final int size;
  @override

  /// Return song [album]
  @JsonKey(name: 'album')
  final String? album;
  @override

  /// Return song [albumId]
  @JsonKey(name: 'album_id')
  final int? albumId;
  @override

  /// Return song [artist]
  @JsonKey(name: 'artist')
  final String? artist;
  @override

  /// Return song [artistId]
  @JsonKey(name: 'artist_id')
  final int? artistId;
  @override

  /// Return song [bookmark]
  @JsonKey(name: 'bookmark')
  final int? bookmark;
  @override

  /// Return song [composer]
  @JsonKey(name: 'composer')
  final String? composer;
  @override

  /// Return song [dateAdded]
  @JsonKey(name: 'date_added', fromJson: _dateFromMap)
  final DateTime? dateAdded;
  @override

  /// Return song [dateModified]
  @JsonKey(name: 'date_modified', fromJson: _dateFromMap)
  final DateTime? dateModified;
  @override

  /// Return song [title]
  @JsonKey(name: 'title')
  final String title;
  @override

  /// Return song only the [fileExtension]
  @JsonKey(name: 'file_extension')
  final String fileExtension;
  @override
  @JsonKey(name: 'song_artwork', fromJson: _song)
  final Uint8List? songArtwork;

  @override
  String toString() {
    return 'Song(id: $id, absolutePath: $absolutePath, uri: $uri, displayName: $displayName, displayNameWOExt: $displayNameWOExt, size: $size, album: $album, albumId: $albumId, artist: $artist, artistId: $artistId, bookmark: $bookmark, composer: $composer, dateAdded: $dateAdded, dateModified: $dateModified, title: $title, fileExtension: $fileExtension, songArtwork: $songArtwork)';
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
            (identical(other.songArtwork, songArtwork) ||
                const DeepCollectionEquality()
                    .equals(other.songArtwork, songArtwork)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(absolutePath) ^
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
      const DeepCollectionEquality().hash(songArtwork);

  @JsonKey(ignore: true)
  @override
  _$SongCopyWith<_Song> get copyWith =>
      __$SongCopyWithImpl<_Song>(this, _$identity);
}

abstract class _Song implements Song {
  const factory _Song(
      {@JsonKey(name: '_id')
          required int id,
      @JsonKey(name: '_data')
          required String absolutePath,
      @JsonKey(name: '_uri')
          String? uri,
      @JsonKey(name: '_display_name')
          required String displayName,
      @JsonKey(name: '_display_name_wo_ext')
          required String displayNameWOExt,
      @JsonKey(name: '_size')
          required int size,
      @JsonKey(name: 'album')
          String? album,
      @JsonKey(name: 'album_id')
          int? albumId,
      @JsonKey(name: 'artist')
          String? artist,
      @JsonKey(name: 'artist_id')
          int? artistId,
      @JsonKey(name: 'bookmark')
          int? bookmark,
      @JsonKey(name: 'composer')
          String? composer,
      @JsonKey(name: 'date_added', fromJson: _dateFromMap)
          DateTime? dateAdded,
      @JsonKey(name: 'date_modified', fromJson: _dateFromMap)
          DateTime? dateModified,
      @JsonKey(name: 'title')
          required String title,
      @JsonKey(name: 'file_extension')
          required String fileExtension,
      @JsonKey(name: 'song_artwork', fromJson: _song)
          Uint8List? songArtwork}) = _$_Song;

  @override

  /// Return song [id]
  @JsonKey(name: '_id')
  int get id => throw _privateConstructorUsedError;
  @override

  /// Return song [absolute path]
  @JsonKey(name: '_data')
  String get absolutePath => throw _privateConstructorUsedError;
  @override

  /// Return song [uri]
  @JsonKey(name: '_uri')
  String? get uri => throw _privateConstructorUsedError;
  @override

  /// Return song [displayName]
  @JsonKey(name: '_display_name')
  String get displayName => throw _privateConstructorUsedError;
  @override

  /// Return song [displayName] without Extension
  @JsonKey(name: '_display_name_wo_ext')
  String get displayNameWOExt => throw _privateConstructorUsedError;
  @override

  /// Return song [size]
  @JsonKey(name: '_size')
  int get size => throw _privateConstructorUsedError;
  @override

  /// Return song [album]
  @JsonKey(name: 'album')
  String? get album => throw _privateConstructorUsedError;
  @override

  /// Return song [albumId]
  @JsonKey(name: 'album_id')
  int? get albumId => throw _privateConstructorUsedError;
  @override

  /// Return song [artist]
  @JsonKey(name: 'artist')
  String? get artist => throw _privateConstructorUsedError;
  @override

  /// Return song [artistId]
  @JsonKey(name: 'artist_id')
  int? get artistId => throw _privateConstructorUsedError;
  @override

  /// Return song [bookmark]
  @JsonKey(name: 'bookmark')
  int? get bookmark => throw _privateConstructorUsedError;
  @override

  /// Return song [composer]
  @JsonKey(name: 'composer')
  String? get composer => throw _privateConstructorUsedError;
  @override

  /// Return song [dateAdded]
  @JsonKey(name: 'date_added', fromJson: _dateFromMap)
  DateTime? get dateAdded => throw _privateConstructorUsedError;
  @override

  /// Return song [dateModified]
  @JsonKey(name: 'date_modified', fromJson: _dateFromMap)
  DateTime? get dateModified => throw _privateConstructorUsedError;
  @override

  /// Return song [title]
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @override

  /// Return song only the [fileExtension]
  @JsonKey(name: 'file_extension')
  String get fileExtension => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'song_artwork', fromJson: _song)
  Uint8List? get songArtwork => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SongCopyWith<_Song> get copyWith => throw _privateConstructorUsedError;
}
