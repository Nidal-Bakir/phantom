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

/// @nodoc
class _$FolderTearOff {
  const _$FolderTearOff();

  SongsFolder songsFolder(
      {required String folderName,
      required Uint8List? artWork,
      required int songsCount,
      required String folderPath}) {
    return SongsFolder(
      folderName: folderName,
      artWork: artWork,
      songsCount: songsCount,
      folderPath: folderPath,
    );
  }
}

/// @nodoc
const $Folder = _$FolderTearOff();

/// @nodoc
mixin _$Folder {
  String get folderName => throw _privateConstructorUsedError;
  Uint8List? get artWork => throw _privateConstructorUsedError;
  int get songsCount => throw _privateConstructorUsedError;
  String get folderPath => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String folderName, Uint8List? artWork,
            int songsCount, String folderPath)
        songsFolder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String folderName, Uint8List? artWork, int songsCount,
            String folderPath)?
        songsFolder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String folderName, Uint8List? artWork, int songsCount,
            String folderPath)?
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

  @JsonKey(ignore: true)
  $FolderCopyWith<Folder> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FolderCopyWith<$Res> {
  factory $FolderCopyWith(Folder value, $Res Function(Folder) then) =
      _$FolderCopyWithImpl<$Res>;
  $Res call(
      {String folderName,
      Uint8List? artWork,
      int songsCount,
      String folderPath});
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
    Object? folderPath = freezed,
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
      folderPath: folderPath == freezed
          ? _value.folderPath
          : folderPath // ignore: cast_nullable_to_non_nullable
              as String,
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
      {String folderName,
      Uint8List? artWork,
      int songsCount,
      String folderPath});
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
    Object? folderPath = freezed,
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
      folderPath: folderPath == freezed
          ? _value.folderPath
          : folderPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SongsFolder implements SongsFolder {
  const _$SongsFolder(
      {required this.folderName,
      required this.artWork,
      required this.songsCount,
      required this.folderPath});

  @override
  final String folderName;
  @override
  final Uint8List? artWork;
  @override
  final int songsCount;
  @override
  final String folderPath;

  @override
  String toString() {
    return 'Folder.songsFolder(folderName: $folderName, artWork: $artWork, songsCount: $songsCount, folderPath: $folderPath)';
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
                    .equals(other.songsCount, songsCount)) &&
            (identical(other.folderPath, folderPath) ||
                const DeepCollectionEquality()
                    .equals(other.folderPath, folderPath)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(folderName) ^
      const DeepCollectionEquality().hash(artWork) ^
      const DeepCollectionEquality().hash(songsCount) ^
      const DeepCollectionEquality().hash(folderPath);

  @JsonKey(ignore: true)
  @override
  $SongsFolderCopyWith<SongsFolder> get copyWith =>
      _$SongsFolderCopyWithImpl<SongsFolder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String folderName, Uint8List? artWork,
            int songsCount, String folderPath)
        songsFolder,
  }) {
    return songsFolder(folderName, artWork, songsCount, folderPath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String folderName, Uint8List? artWork, int songsCount,
            String folderPath)?
        songsFolder,
  }) {
    return songsFolder?.call(folderName, artWork, songsCount, folderPath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String folderName, Uint8List? artWork, int songsCount,
            String folderPath)?
        songsFolder,
    required TResult orElse(),
  }) {
    if (songsFolder != null) {
      return songsFolder(folderName, artWork, songsCount, folderPath);
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
}

abstract class SongsFolder implements Folder {
  const factory SongsFolder(
      {required String folderName,
      required Uint8List? artWork,
      required int songsCount,
      required String folderPath}) = _$SongsFolder;

  @override
  String get folderName => throw _privateConstructorUsedError;
  @override
  Uint8List? get artWork => throw _privateConstructorUsedError;
  @override
  int get songsCount => throw _privateConstructorUsedError;
  @override
  String get folderPath => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $SongsFolderCopyWith<SongsFolder> get copyWith =>
      throw _privateConstructorUsedError;
}
