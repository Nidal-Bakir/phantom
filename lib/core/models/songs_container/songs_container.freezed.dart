// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'songs_container.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ContainerTearOff {
  const _$ContainerTearOff();

  SongsContainer<T> songsContainer<T extends Iterable<Song>>(
      {required T songs,
      required Map<int, Uint8List?> albumArtwork,
      CurrentlyPlayingSong? currentlyPlayingSong}) {
    return SongsContainer<T>(
      songs: songs,
      albumArtwork: albumArtwork,
      currentlyPlayingSong: currentlyPlayingSong,
    );
  }
}

/// @nodoc
const $Container = _$ContainerTearOff();

/// @nodoc
mixin _$Container<T extends Iterable<Song>> {
  T get songs => throw _privateConstructorUsedError;
  Map<int, Uint8List?> get albumArtwork => throw _privateConstructorUsedError;
  CurrentlyPlayingSong? get currentlyPlayingSong =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T songs, Map<int, Uint8List?> albumArtwork,
            CurrentlyPlayingSong? currentlyPlayingSong)
        songsContainer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T songs, Map<int, Uint8List?> albumArtwork,
            CurrentlyPlayingSong? currentlyPlayingSong)?
        songsContainer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T songs, Map<int, Uint8List?> albumArtwork,
            CurrentlyPlayingSong? currentlyPlayingSong)?
        songsContainer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SongsContainer<T> value) songsContainer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SongsContainer<T> value)? songsContainer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SongsContainer<T> value)? songsContainer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContainerCopyWith<T, Container<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContainerCopyWith<T extends Iterable<Song>, $Res> {
  factory $ContainerCopyWith(
          Container<T> value, $Res Function(Container<T>) then) =
      _$ContainerCopyWithImpl<T, $Res>;
  $Res call(
      {T songs,
      Map<int, Uint8List?> albumArtwork,
      CurrentlyPlayingSong? currentlyPlayingSong});

  $CurrentlyPlayingSongCopyWith<$Res>? get currentlyPlayingSong;
}

/// @nodoc
class _$ContainerCopyWithImpl<T extends Iterable<Song>, $Res>
    implements $ContainerCopyWith<T, $Res> {
  _$ContainerCopyWithImpl(this._value, this._then);

  final Container<T> _value;
  // ignore: unused_field
  final $Res Function(Container<T>) _then;

  @override
  $Res call({
    Object? songs = freezed,
    Object? albumArtwork = freezed,
    Object? currentlyPlayingSong = freezed,
  }) {
    return _then(_value.copyWith(
      songs: songs == freezed
          ? _value.songs
          : songs // ignore: cast_nullable_to_non_nullable
              as T,
      albumArtwork: albumArtwork == freezed
          ? _value.albumArtwork
          : albumArtwork // ignore: cast_nullable_to_non_nullable
              as Map<int, Uint8List?>,
      currentlyPlayingSong: currentlyPlayingSong == freezed
          ? _value.currentlyPlayingSong
          : currentlyPlayingSong // ignore: cast_nullable_to_non_nullable
              as CurrentlyPlayingSong?,
    ));
  }

  @override
  $CurrentlyPlayingSongCopyWith<$Res>? get currentlyPlayingSong {
    if (_value.currentlyPlayingSong == null) {
      return null;
    }

    return $CurrentlyPlayingSongCopyWith<$Res>(_value.currentlyPlayingSong!,
        (value) {
      return _then(_value.copyWith(currentlyPlayingSong: value));
    });
  }
}

/// @nodoc
abstract class $SongsContainerCopyWith<T extends Iterable<Song>, $Res>
    implements $ContainerCopyWith<T, $Res> {
  factory $SongsContainerCopyWith(
          SongsContainer<T> value, $Res Function(SongsContainer<T>) then) =
      _$SongsContainerCopyWithImpl<T, $Res>;
  @override
  $Res call(
      {T songs,
      Map<int, Uint8List?> albumArtwork,
      CurrentlyPlayingSong? currentlyPlayingSong});

  @override
  $CurrentlyPlayingSongCopyWith<$Res>? get currentlyPlayingSong;
}

/// @nodoc
class _$SongsContainerCopyWithImpl<T extends Iterable<Song>, $Res>
    extends _$ContainerCopyWithImpl<T, $Res>
    implements $SongsContainerCopyWith<T, $Res> {
  _$SongsContainerCopyWithImpl(
      SongsContainer<T> _value, $Res Function(SongsContainer<T>) _then)
      : super(_value, (v) => _then(v as SongsContainer<T>));

  @override
  SongsContainer<T> get _value => super._value as SongsContainer<T>;

  @override
  $Res call({
    Object? songs = freezed,
    Object? albumArtwork = freezed,
    Object? currentlyPlayingSong = freezed,
  }) {
    return _then(SongsContainer<T>(
      songs: songs == freezed
          ? _value.songs
          : songs // ignore: cast_nullable_to_non_nullable
              as T,
      albumArtwork: albumArtwork == freezed
          ? _value.albumArtwork
          : albumArtwork // ignore: cast_nullable_to_non_nullable
              as Map<int, Uint8List?>,
      currentlyPlayingSong: currentlyPlayingSong == freezed
          ? _value.currentlyPlayingSong
          : currentlyPlayingSong // ignore: cast_nullable_to_non_nullable
              as CurrentlyPlayingSong?,
    ));
  }
}

/// @nodoc

class _$SongsContainer<T extends Iterable<Song>> implements SongsContainer<T> {
  const _$SongsContainer(
      {required this.songs,
      required this.albumArtwork,
      this.currentlyPlayingSong});

  @override
  final T songs;
  @override
  final Map<int, Uint8List?> albumArtwork;
  @override
  final CurrentlyPlayingSong? currentlyPlayingSong;

  @override
  String toString() {
    return 'Container<$T>.songsContainer(songs: $songs, albumArtwork: $albumArtwork, currentlyPlayingSong: $currentlyPlayingSong)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SongsContainer<T> &&
            const DeepCollectionEquality().equals(other.songs, songs) &&
            const DeepCollectionEquality()
                .equals(other.albumArtwork, albumArtwork) &&
            (identical(other.currentlyPlayingSong, currentlyPlayingSong) ||
                other.currentlyPlayingSong == currentlyPlayingSong));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(songs),
      const DeepCollectionEquality().hash(albumArtwork),
      currentlyPlayingSong);

  @JsonKey(ignore: true)
  @override
  $SongsContainerCopyWith<T, SongsContainer<T>> get copyWith =>
      _$SongsContainerCopyWithImpl<T, SongsContainer<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T songs, Map<int, Uint8List?> albumArtwork,
            CurrentlyPlayingSong? currentlyPlayingSong)
        songsContainer,
  }) {
    return songsContainer(songs, albumArtwork, currentlyPlayingSong);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T songs, Map<int, Uint8List?> albumArtwork,
            CurrentlyPlayingSong? currentlyPlayingSong)?
        songsContainer,
  }) {
    return songsContainer?.call(songs, albumArtwork, currentlyPlayingSong);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T songs, Map<int, Uint8List?> albumArtwork,
            CurrentlyPlayingSong? currentlyPlayingSong)?
        songsContainer,
    required TResult orElse(),
  }) {
    if (songsContainer != null) {
      return songsContainer(songs, albumArtwork, currentlyPlayingSong);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SongsContainer<T> value) songsContainer,
  }) {
    return songsContainer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SongsContainer<T> value)? songsContainer,
  }) {
    return songsContainer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SongsContainer<T> value)? songsContainer,
    required TResult orElse(),
  }) {
    if (songsContainer != null) {
      return songsContainer(this);
    }
    return orElse();
  }
}

abstract class SongsContainer<T extends Iterable<Song>>
    implements Container<T> {
  const factory SongsContainer(
      {required T songs,
      required Map<int, Uint8List?> albumArtwork,
      CurrentlyPlayingSong? currentlyPlayingSong}) = _$SongsContainer<T>;

  @override
  T get songs;
  @override
  Map<int, Uint8List?> get albumArtwork;
  @override
  CurrentlyPlayingSong? get currentlyPlayingSong;
  @override
  @JsonKey(ignore: true)
  $SongsContainerCopyWith<T, SongsContainer<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
