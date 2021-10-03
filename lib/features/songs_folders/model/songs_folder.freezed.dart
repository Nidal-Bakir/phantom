// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'songs_folder.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Folder _$FolderFromJson(Map<String, dynamic> json) {
  return SongsFolder.fromJson(json);
}

/// @nodoc
class _$FolderTearOff {
  const _$FolderTearOff();

  SongsFolder songsFolder(
      {@JsonKey(name: SongTable.folderName)
          required String folderName,
      @JsonKey(name: ArtworkTable.albumArtwork, fromJson: _artworkFromJson)
          required Uint8List? artWork,
      @JsonKey(name: 'songs_count')
          required int songsCount}) {
    return SongsFolder(
      folderName: folderName,
      artWork: artWork,
      songsCount: songsCount,
    );
  }

  Folder fromJson(Map<String, Object> json) {
    return Folder.fromJson(json);
  }
}

/// @nodoc
const $Folder = _$FolderTearOff();

/// @nodoc
mixin _$Folder {
  @JsonKey(name: SongTable.folderName)
  String get folderName => throw _privateConstructorUsedError;
  @JsonKey(name: ArtworkTable.albumArtwork, fromJson: _artworkFromJson)
  Uint8List? get artWork => throw _privateConstructorUsedError;
  @JsonKey(name: 'songs_count')
  int get songsCount => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: SongTable.folderName)
                String folderName,
            @JsonKey(name: ArtworkTable.albumArtwork, fromJson: _artworkFromJson)
                Uint8List? artWork,
            @JsonKey(name: 'songs_count')
                int songsCount)
        songsFolder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: SongTable.folderName)
                String folderName,
            @JsonKey(name: ArtworkTable.albumArtwork, fromJson: _artworkFromJson)
                Uint8List? artWork,
            @JsonKey(name: 'songs_count')
                int songsCount)?
        songsFolder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: SongTable.folderName)
                String folderName,
            @JsonKey(name: ArtworkTable.albumArtwork, fromJson: _artworkFromJson)
                Uint8List? artWork,
            @JsonKey(name: 'songs_count')
                int songsCount)?
        songsFolder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SongsFolder value) songsFolder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SongsFolder value)? songsFolder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SongsFolder value)? songsFolder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FolderCopyWith<Folder> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FolderCopyWith<$Res> {
  factory $FolderCopyWith(Folder value, $Res Function(Folder) then) =
      _$FolderCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: SongTable.folderName)
          String folderName,
      @JsonKey(name: ArtworkTable.albumArtwork, fromJson: _artworkFromJson)
          Uint8List? artWork,
      @JsonKey(name: 'songs_count')
          int songsCount});
}

/// @nodoc
class _$FolderCopyWithImpl<$Res> implements $FolderCopyWith<$Res> {
  _$FolderCopyWithImpl(this._value, this._then);

  final Folder _value;
  // ignore: unused_field
  final $Res Function(Folder) _then;

  @override
  $Res call({
    Object? folderName = freezed,
    Object? artWork = freezed,
    Object? songsCount = freezed,
  }) {
    return _then(_value.copyWith(
      folderName: folderName == freezed
          ? _value.folderName
          : folderName // ignore: cast_nullable_to_non_nullable
              as String,
      artWork: artWork == freezed
          ? _value.artWork
          : artWork // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      songsCount: songsCount == freezed
          ? _value.songsCount
          : songsCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $SongsFolderCopyWith<$Res> implements $FolderCopyWith<$Res> {
  factory $SongsFolderCopyWith(
          SongsFolder value, $Res Function(SongsFolder) then) =
      _$SongsFolderCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: SongTable.folderName)
          String folderName,
      @JsonKey(name: ArtworkTable.albumArtwork, fromJson: _artworkFromJson)
          Uint8List? artWork,
      @JsonKey(name: 'songs_count')
          int songsCount});
}

/// @nodoc
class _$SongsFolderCopyWithImpl<$Res> extends _$FolderCopyWithImpl<$Res>
    implements $SongsFolderCopyWith<$Res> {
  _$SongsFolderCopyWithImpl(
      SongsFolder _value, $Res Function(SongsFolder) _then)
      : super(_value, (v) => _then(v as SongsFolder));

  @override
  SongsFolder get _value => super._value as SongsFolder;

  @override
  $Res call({
    Object? folderName = freezed,
    Object? artWork = freezed,
    Object? songsCount = freezed,
  }) {
    return _then(SongsFolder(
      folderName: folderName == freezed
          ? _value.folderName
          : folderName // ignore: cast_nullable_to_non_nullable
              as String,
      artWork: artWork == freezed
          ? _value.artWork
          : artWork // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      songsCount: songsCount == freezed
          ? _value.songsCount
          : songsCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$SongsFolder implements SongsFolder {
  const _$SongsFolder(
      {@JsonKey(name: SongTable.folderName)
          required this.folderName,
      @JsonKey(name: ArtworkTable.albumArtwork, fromJson: _artworkFromJson)
          required this.artWork,
      @JsonKey(name: 'songs_count')
          required this.songsCount});

  factory _$SongsFolder.fromJson(Map<String, dynamic> json) =>
      _$$SongsFolderFromJson(json);

  @override
  @JsonKey(name: SongTable.folderName)
  final String folderName;
  @override
  @JsonKey(name: ArtworkTable.albumArtwork, fromJson: _artworkFromJson)
  final Uint8List? artWork;
  @override
  @JsonKey(name: 'songs_count')
  final int songsCount;

  @override
  String toString() {
    return 'Folder.songsFolder(folderName: $folderName, artWork: $artWork, songsCount: $songsCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SongsFolder &&
            (identical(other.folderName, folderName) ||
                const DeepCollectionEquality()
                    .equals(other.folderName, folderName)) &&
            (identical(other.artWork, artWork) ||
                const DeepCollectionEquality()
                    .equals(other.artWork, artWork)) &&
            (identical(other.songsCount, songsCount) ||
                const DeepCollectionEquality()
                    .equals(other.songsCount, songsCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(folderName) ^
      const DeepCollectionEquality().hash(artWork) ^
      const DeepCollectionEquality().hash(songsCount);

  @JsonKey(ignore: true)
  @override
  $SongsFolderCopyWith<SongsFolder> get copyWith =>
      _$SongsFolderCopyWithImpl<SongsFolder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: SongTable.folderName)
                String folderName,
            @JsonKey(name: ArtworkTable.albumArtwork, fromJson: _artworkFromJson)
                Uint8List? artWork,
            @JsonKey(name: 'songs_count')
                int songsCount)
        songsFolder,
  }) {
    return songsFolder(folderName, artWork, songsCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: SongTable.folderName)
                String folderName,
            @JsonKey(name: ArtworkTable.albumArtwork, fromJson: _artworkFromJson)
                Uint8List? artWork,
            @JsonKey(name: 'songs_count')
                int songsCount)?
        songsFolder,
  }) {
    return songsFolder?.call(folderName, artWork, songsCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: SongTable.folderName)
                String folderName,
            @JsonKey(name: ArtworkTable.albumArtwork, fromJson: _artworkFromJson)
                Uint8List? artWork,
            @JsonKey(name: 'songs_count')
                int songsCount)?
        songsFolder,
    required TResult orElse(),
  }) {
    if (songsFolder != null) {
      return songsFolder(folderName, artWork, songsCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SongsFolder value) songsFolder,
  }) {
    return songsFolder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SongsFolder value)? songsFolder,
  }) {
    return songsFolder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SongsFolder value)? songsFolder,
    required TResult orElse(),
  }) {
    if (songsFolder != null) {
      return songsFolder(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SongsFolderToJson(this);
  }
}

abstract class SongsFolder implements Folder {
  const factory SongsFolder(
      {@JsonKey(name: SongTable.folderName)
          required String folderName,
      @JsonKey(name: ArtworkTable.albumArtwork, fromJson: _artworkFromJson)
          required Uint8List? artWork,
      @JsonKey(name: 'songs_count')
          required int songsCount}) = _$SongsFolder;

  factory SongsFolder.fromJson(Map<String, dynamic> json) =
      _$SongsFolder.fromJson;

  @override
  @JsonKey(name: SongTable.folderName)
  String get folderName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: ArtworkTable.albumArtwork, fromJson: _artworkFromJson)
  Uint8List? get artWork => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'songs_count')
  int get songsCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $SongsFolderCopyWith<SongsFolder> get copyWith =>
      throw _privateConstructorUsedError;
}
