// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'songs_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SongsEventTearOff {
  const _$SongsEventTearOff();

  SongsLoaded songsLoaded(
      {required SongSortType songSortType,
      required SongOrderType songOrderType}) {
    return SongsLoaded(
      songSortType: songSortType,
      songOrderType: songOrderType,
    );
  }

  SongsSorted songsSorted(
      {required SongSortType songSortType,
      required SongOrderType songOrderType}) {
    return SongsSorted(
      songSortType: songSortType,
      songOrderType: songOrderType,
    );
  }

  SongsRefreshed songsRefreshed({bool fromDevice = false}) {
    return SongsRefreshed(
      fromDevice: fromDevice,
    );
  }
}

/// @nodoc
const $SongsEvent = _$SongsEventTearOff();

/// @nodoc
mixin _$SongsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            SongSortType songSortType, SongOrderType songOrderType)
        songsLoaded,
    required TResult Function(
            SongSortType songSortType, SongOrderType songOrderType)
        songsSorted,
    required TResult Function(bool fromDevice) songsRefreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SongSortType songSortType, SongOrderType songOrderType)?
        songsLoaded,
    TResult Function(SongSortType songSortType, SongOrderType songOrderType)?
        songsSorted,
    TResult Function(bool fromDevice)? songsRefreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SongSortType songSortType, SongOrderType songOrderType)?
        songsLoaded,
    TResult Function(SongSortType songSortType, SongOrderType songOrderType)?
        songsSorted,
    TResult Function(bool fromDevice)? songsRefreshed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SongsLoaded value) songsLoaded,
    required TResult Function(SongsSorted value) songsSorted,
    required TResult Function(SongsRefreshed value) songsRefreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SongsLoaded value)? songsLoaded,
    TResult Function(SongsSorted value)? songsSorted,
    TResult Function(SongsRefreshed value)? songsRefreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SongsLoaded value)? songsLoaded,
    TResult Function(SongsSorted value)? songsSorted,
    TResult Function(SongsRefreshed value)? songsRefreshed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongsEventCopyWith<$Res> {
  factory $SongsEventCopyWith(
          SongsEvent value, $Res Function(SongsEvent) then) =
      _$SongsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SongsEventCopyWithImpl<$Res> implements $SongsEventCopyWith<$Res> {
  _$SongsEventCopyWithImpl(this._value, this._then);

  final SongsEvent _value;
  // ignore: unused_field
  final $Res Function(SongsEvent) _then;
}

/// @nodoc
abstract class $SongsLoadedCopyWith<$Res> {
  factory $SongsLoadedCopyWith(
          SongsLoaded value, $Res Function(SongsLoaded) then) =
      _$SongsLoadedCopyWithImpl<$Res>;
  $Res call({SongSortType songSortType, SongOrderType songOrderType});
}

/// @nodoc
class _$SongsLoadedCopyWithImpl<$Res> extends _$SongsEventCopyWithImpl<$Res>
    implements $SongsLoadedCopyWith<$Res> {
  _$SongsLoadedCopyWithImpl(
      SongsLoaded _value, $Res Function(SongsLoaded) _then)
      : super(_value, (v) => _then(v as SongsLoaded));

  @override
  SongsLoaded get _value => super._value as SongsLoaded;

  @override
  $Res call({
    Object? songSortType = freezed,
    Object? songOrderType = freezed,
  }) {
    return _then(SongsLoaded(
      songSortType: songSortType == freezed
          ? _value.songSortType
          : songSortType // ignore: cast_nullable_to_non_nullable
              as SongSortType,
      songOrderType: songOrderType == freezed
          ? _value.songOrderType
          : songOrderType // ignore: cast_nullable_to_non_nullable
              as SongOrderType,
    ));
  }
}

/// @nodoc

class _$SongsLoaded implements SongsLoaded {
  const _$SongsLoaded(
      {required this.songSortType, required this.songOrderType});

  @override
  final SongSortType songSortType;
  @override
  final SongOrderType songOrderType;

  @override
  String toString() {
    return 'SongsEvent.songsLoaded(songSortType: $songSortType, songOrderType: $songOrderType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SongsLoaded &&
            (identical(other.songSortType, songSortType) ||
                const DeepCollectionEquality()
                    .equals(other.songSortType, songSortType)) &&
            (identical(other.songOrderType, songOrderType) ||
                const DeepCollectionEquality()
                    .equals(other.songOrderType, songOrderType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(songSortType) ^
      const DeepCollectionEquality().hash(songOrderType);

  @JsonKey(ignore: true)
  @override
  $SongsLoadedCopyWith<SongsLoaded> get copyWith =>
      _$SongsLoadedCopyWithImpl<SongsLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            SongSortType songSortType, SongOrderType songOrderType)
        songsLoaded,
    required TResult Function(
            SongSortType songSortType, SongOrderType songOrderType)
        songsSorted,
    required TResult Function(bool fromDevice) songsRefreshed,
  }) {
    return songsLoaded(songSortType, songOrderType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SongSortType songSortType, SongOrderType songOrderType)?
        songsLoaded,
    TResult Function(SongSortType songSortType, SongOrderType songOrderType)?
        songsSorted,
    TResult Function(bool fromDevice)? songsRefreshed,
  }) {
    return songsLoaded?.call(songSortType, songOrderType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SongSortType songSortType, SongOrderType songOrderType)?
        songsLoaded,
    TResult Function(SongSortType songSortType, SongOrderType songOrderType)?
        songsSorted,
    TResult Function(bool fromDevice)? songsRefreshed,
    required TResult orElse(),
  }) {
    if (songsLoaded != null) {
      return songsLoaded(songSortType, songOrderType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SongsLoaded value) songsLoaded,
    required TResult Function(SongsSorted value) songsSorted,
    required TResult Function(SongsRefreshed value) songsRefreshed,
  }) {
    return songsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SongsLoaded value)? songsLoaded,
    TResult Function(SongsSorted value)? songsSorted,
    TResult Function(SongsRefreshed value)? songsRefreshed,
  }) {
    return songsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SongsLoaded value)? songsLoaded,
    TResult Function(SongsSorted value)? songsSorted,
    TResult Function(SongsRefreshed value)? songsRefreshed,
    required TResult orElse(),
  }) {
    if (songsLoaded != null) {
      return songsLoaded(this);
    }
    return orElse();
  }
}

abstract class SongsLoaded implements SongsEvent {
  const factory SongsLoaded(
      {required SongSortType songSortType,
      required SongOrderType songOrderType}) = _$SongsLoaded;

  SongSortType get songSortType => throw _privateConstructorUsedError;
  SongOrderType get songOrderType => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SongsLoadedCopyWith<SongsLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongsSortedCopyWith<$Res> {
  factory $SongsSortedCopyWith(
          SongsSorted value, $Res Function(SongsSorted) then) =
      _$SongsSortedCopyWithImpl<$Res>;
  $Res call({SongSortType songSortType, SongOrderType songOrderType});
}

/// @nodoc
class _$SongsSortedCopyWithImpl<$Res> extends _$SongsEventCopyWithImpl<$Res>
    implements $SongsSortedCopyWith<$Res> {
  _$SongsSortedCopyWithImpl(
      SongsSorted _value, $Res Function(SongsSorted) _then)
      : super(_value, (v) => _then(v as SongsSorted));

  @override
  SongsSorted get _value => super._value as SongsSorted;

  @override
  $Res call({
    Object? songSortType = freezed,
    Object? songOrderType = freezed,
  }) {
    return _then(SongsSorted(
      songSortType: songSortType == freezed
          ? _value.songSortType
          : songSortType // ignore: cast_nullable_to_non_nullable
              as SongSortType,
      songOrderType: songOrderType == freezed
          ? _value.songOrderType
          : songOrderType // ignore: cast_nullable_to_non_nullable
              as SongOrderType,
    ));
  }
}

/// @nodoc

class _$SongsSorted implements SongsSorted {
  const _$SongsSorted(
      {required this.songSortType, required this.songOrderType});

  @override
  final SongSortType songSortType;
  @override
  final SongOrderType songOrderType;

  @override
  String toString() {
    return 'SongsEvent.songsSorted(songSortType: $songSortType, songOrderType: $songOrderType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SongsSorted &&
            (identical(other.songSortType, songSortType) ||
                const DeepCollectionEquality()
                    .equals(other.songSortType, songSortType)) &&
            (identical(other.songOrderType, songOrderType) ||
                const DeepCollectionEquality()
                    .equals(other.songOrderType, songOrderType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(songSortType) ^
      const DeepCollectionEquality().hash(songOrderType);

  @JsonKey(ignore: true)
  @override
  $SongsSortedCopyWith<SongsSorted> get copyWith =>
      _$SongsSortedCopyWithImpl<SongsSorted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            SongSortType songSortType, SongOrderType songOrderType)
        songsLoaded,
    required TResult Function(
            SongSortType songSortType, SongOrderType songOrderType)
        songsSorted,
    required TResult Function(bool fromDevice) songsRefreshed,
  }) {
    return songsSorted(songSortType, songOrderType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SongSortType songSortType, SongOrderType songOrderType)?
        songsLoaded,
    TResult Function(SongSortType songSortType, SongOrderType songOrderType)?
        songsSorted,
    TResult Function(bool fromDevice)? songsRefreshed,
  }) {
    return songsSorted?.call(songSortType, songOrderType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SongSortType songSortType, SongOrderType songOrderType)?
        songsLoaded,
    TResult Function(SongSortType songSortType, SongOrderType songOrderType)?
        songsSorted,
    TResult Function(bool fromDevice)? songsRefreshed,
    required TResult orElse(),
  }) {
    if (songsSorted != null) {
      return songsSorted(songSortType, songOrderType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SongsLoaded value) songsLoaded,
    required TResult Function(SongsSorted value) songsSorted,
    required TResult Function(SongsRefreshed value) songsRefreshed,
  }) {
    return songsSorted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SongsLoaded value)? songsLoaded,
    TResult Function(SongsSorted value)? songsSorted,
    TResult Function(SongsRefreshed value)? songsRefreshed,
  }) {
    return songsSorted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SongsLoaded value)? songsLoaded,
    TResult Function(SongsSorted value)? songsSorted,
    TResult Function(SongsRefreshed value)? songsRefreshed,
    required TResult orElse(),
  }) {
    if (songsSorted != null) {
      return songsSorted(this);
    }
    return orElse();
  }
}

abstract class SongsSorted implements SongsEvent {
  const factory SongsSorted(
      {required SongSortType songSortType,
      required SongOrderType songOrderType}) = _$SongsSorted;

  SongSortType get songSortType => throw _privateConstructorUsedError;
  SongOrderType get songOrderType => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SongsSortedCopyWith<SongsSorted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongsRefreshedCopyWith<$Res> {
  factory $SongsRefreshedCopyWith(
          SongsRefreshed value, $Res Function(SongsRefreshed) then) =
      _$SongsRefreshedCopyWithImpl<$Res>;
  $Res call({bool fromDevice});
}

/// @nodoc
class _$SongsRefreshedCopyWithImpl<$Res> extends _$SongsEventCopyWithImpl<$Res>
    implements $SongsRefreshedCopyWith<$Res> {
  _$SongsRefreshedCopyWithImpl(
      SongsRefreshed _value, $Res Function(SongsRefreshed) _then)
      : super(_value, (v) => _then(v as SongsRefreshed));

  @override
  SongsRefreshed get _value => super._value as SongsRefreshed;

  @override
  $Res call({
    Object? fromDevice = freezed,
  }) {
    return _then(SongsRefreshed(
      fromDevice: fromDevice == freezed
          ? _value.fromDevice
          : fromDevice // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SongsRefreshed implements SongsRefreshed {
  const _$SongsRefreshed({this.fromDevice = false});

  @JsonKey(defaultValue: false)
  @override
  final bool fromDevice;

  @override
  String toString() {
    return 'SongsEvent.songsRefreshed(fromDevice: $fromDevice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SongsRefreshed &&
            (identical(other.fromDevice, fromDevice) ||
                const DeepCollectionEquality()
                    .equals(other.fromDevice, fromDevice)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(fromDevice);

  @JsonKey(ignore: true)
  @override
  $SongsRefreshedCopyWith<SongsRefreshed> get copyWith =>
      _$SongsRefreshedCopyWithImpl<SongsRefreshed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            SongSortType songSortType, SongOrderType songOrderType)
        songsLoaded,
    required TResult Function(
            SongSortType songSortType, SongOrderType songOrderType)
        songsSorted,
    required TResult Function(bool fromDevice) songsRefreshed,
  }) {
    return songsRefreshed(fromDevice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SongSortType songSortType, SongOrderType songOrderType)?
        songsLoaded,
    TResult Function(SongSortType songSortType, SongOrderType songOrderType)?
        songsSorted,
    TResult Function(bool fromDevice)? songsRefreshed,
  }) {
    return songsRefreshed?.call(fromDevice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SongSortType songSortType, SongOrderType songOrderType)?
        songsLoaded,
    TResult Function(SongSortType songSortType, SongOrderType songOrderType)?
        songsSorted,
    TResult Function(bool fromDevice)? songsRefreshed,
    required TResult orElse(),
  }) {
    if (songsRefreshed != null) {
      return songsRefreshed(fromDevice);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SongsLoaded value) songsLoaded,
    required TResult Function(SongsSorted value) songsSorted,
    required TResult Function(SongsRefreshed value) songsRefreshed,
  }) {
    return songsRefreshed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SongsLoaded value)? songsLoaded,
    TResult Function(SongsSorted value)? songsSorted,
    TResult Function(SongsRefreshed value)? songsRefreshed,
  }) {
    return songsRefreshed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SongsLoaded value)? songsLoaded,
    TResult Function(SongsSorted value)? songsSorted,
    TResult Function(SongsRefreshed value)? songsRefreshed,
    required TResult orElse(),
  }) {
    if (songsRefreshed != null) {
      return songsRefreshed(this);
    }
    return orElse();
  }
}

abstract class SongsRefreshed implements SongsEvent {
  const factory SongsRefreshed({bool fromDevice}) = _$SongsRefreshed;

  bool get fromDevice => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SongsRefreshedCopyWith<SongsRefreshed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SongsStateTearOff {
  const _$SongsStateTearOff();

  SongsInProgress inProgress() {
    return const SongsInProgress();
  }

  SongsLoadSuccess songLoadSuccess(
      {required SongSortType sortType,
      required SongOrderType orderType,
      required UnmodifiableListView<Song> songs}) {
    return SongsLoadSuccess(
      sortType: sortType,
      orderType: orderType,
      songs: songs,
    );
  }
}

/// @nodoc
const $SongsState = _$SongsStateTearOff();

/// @nodoc
mixin _$SongsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(SongSortType sortType, SongOrderType orderType,
            UnmodifiableListView<Song> songs)
        songLoadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(SongSortType sortType, SongOrderType orderType,
            UnmodifiableListView<Song> songs)?
        songLoadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(SongSortType sortType, SongOrderType orderType,
            UnmodifiableListView<Song> songs)?
        songLoadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SongsInProgress value) inProgress,
    required TResult Function(SongsLoadSuccess value) songLoadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SongsInProgress value)? inProgress,
    TResult Function(SongsLoadSuccess value)? songLoadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SongsInProgress value)? inProgress,
    TResult Function(SongsLoadSuccess value)? songLoadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongsStateCopyWith<$Res> {
  factory $SongsStateCopyWith(
          SongsState value, $Res Function(SongsState) then) =
      _$SongsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SongsStateCopyWithImpl<$Res> implements $SongsStateCopyWith<$Res> {
  _$SongsStateCopyWithImpl(this._value, this._then);

  final SongsState _value;
  // ignore: unused_field
  final $Res Function(SongsState) _then;
}

/// @nodoc
abstract class $SongsInProgressCopyWith<$Res> {
  factory $SongsInProgressCopyWith(
          SongsInProgress value, $Res Function(SongsInProgress) then) =
      _$SongsInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$SongsInProgressCopyWithImpl<$Res> extends _$SongsStateCopyWithImpl<$Res>
    implements $SongsInProgressCopyWith<$Res> {
  _$SongsInProgressCopyWithImpl(
      SongsInProgress _value, $Res Function(SongsInProgress) _then)
      : super(_value, (v) => _then(v as SongsInProgress));

  @override
  SongsInProgress get _value => super._value as SongsInProgress;
}

/// @nodoc

class _$SongsInProgress implements SongsInProgress {
  const _$SongsInProgress();

  @override
  String toString() {
    return 'SongsState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SongsInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(SongSortType sortType, SongOrderType orderType,
            UnmodifiableListView<Song> songs)
        songLoadSuccess,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(SongSortType sortType, SongOrderType orderType,
            UnmodifiableListView<Song> songs)?
        songLoadSuccess,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(SongSortType sortType, SongOrderType orderType,
            UnmodifiableListView<Song> songs)?
        songLoadSuccess,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SongsInProgress value) inProgress,
    required TResult Function(SongsLoadSuccess value) songLoadSuccess,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SongsInProgress value)? inProgress,
    TResult Function(SongsLoadSuccess value)? songLoadSuccess,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SongsInProgress value)? inProgress,
    TResult Function(SongsLoadSuccess value)? songLoadSuccess,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class SongsInProgress implements SongsState {
  const factory SongsInProgress() = _$SongsInProgress;
}

/// @nodoc
abstract class $SongsLoadSuccessCopyWith<$Res> {
  factory $SongsLoadSuccessCopyWith(
          SongsLoadSuccess value, $Res Function(SongsLoadSuccess) then) =
      _$SongsLoadSuccessCopyWithImpl<$Res>;
  $Res call(
      {SongSortType sortType,
      SongOrderType orderType,
      UnmodifiableListView<Song> songs});
}

/// @nodoc
class _$SongsLoadSuccessCopyWithImpl<$Res>
    extends _$SongsStateCopyWithImpl<$Res>
    implements $SongsLoadSuccessCopyWith<$Res> {
  _$SongsLoadSuccessCopyWithImpl(
      SongsLoadSuccess _value, $Res Function(SongsLoadSuccess) _then)
      : super(_value, (v) => _then(v as SongsLoadSuccess));

  @override
  SongsLoadSuccess get _value => super._value as SongsLoadSuccess;

  @override
  $Res call({
    Object? sortType = freezed,
    Object? orderType = freezed,
    Object? songs = freezed,
  }) {
    return _then(SongsLoadSuccess(
      sortType: sortType == freezed
          ? _value.sortType
          : sortType // ignore: cast_nullable_to_non_nullable
              as SongSortType,
      orderType: orderType == freezed
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as SongOrderType,
      songs: songs == freezed
          ? _value.songs
          : songs // ignore: cast_nullable_to_non_nullable
              as UnmodifiableListView<Song>,
    ));
  }
}

/// @nodoc

class _$SongsLoadSuccess implements SongsLoadSuccess {
  const _$SongsLoadSuccess(
      {required this.sortType, required this.orderType, required this.songs});

  @override
  final SongSortType sortType;
  @override
  final SongOrderType orderType;
  @override
  final UnmodifiableListView<Song> songs;

  @override
  String toString() {
    return 'SongsState.songLoadSuccess(sortType: $sortType, orderType: $orderType, songs: $songs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SongsLoadSuccess &&
            (identical(other.sortType, sortType) ||
                const DeepCollectionEquality()
                    .equals(other.sortType, sortType)) &&
            (identical(other.orderType, orderType) ||
                const DeepCollectionEquality()
                    .equals(other.orderType, orderType)) &&
            (identical(other.songs, songs) ||
                const DeepCollectionEquality().equals(other.songs, songs)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(sortType) ^
      const DeepCollectionEquality().hash(orderType) ^
      const DeepCollectionEquality().hash(songs);

  @JsonKey(ignore: true)
  @override
  $SongsLoadSuccessCopyWith<SongsLoadSuccess> get copyWith =>
      _$SongsLoadSuccessCopyWithImpl<SongsLoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(SongSortType sortType, SongOrderType orderType,
            UnmodifiableListView<Song> songs)
        songLoadSuccess,
  }) {
    return songLoadSuccess(sortType, orderType, songs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(SongSortType sortType, SongOrderType orderType,
            UnmodifiableListView<Song> songs)?
        songLoadSuccess,
  }) {
    return songLoadSuccess?.call(sortType, orderType, songs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(SongSortType sortType, SongOrderType orderType,
            UnmodifiableListView<Song> songs)?
        songLoadSuccess,
    required TResult orElse(),
  }) {
    if (songLoadSuccess != null) {
      return songLoadSuccess(sortType, orderType, songs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SongsInProgress value) inProgress,
    required TResult Function(SongsLoadSuccess value) songLoadSuccess,
  }) {
    return songLoadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SongsInProgress value)? inProgress,
    TResult Function(SongsLoadSuccess value)? songLoadSuccess,
  }) {
    return songLoadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SongsInProgress value)? inProgress,
    TResult Function(SongsLoadSuccess value)? songLoadSuccess,
    required TResult orElse(),
  }) {
    if (songLoadSuccess != null) {
      return songLoadSuccess(this);
    }
    return orElse();
  }
}

abstract class SongsLoadSuccess implements SongsState {
  const factory SongsLoadSuccess(
      {required SongSortType sortType,
      required SongOrderType orderType,
      required UnmodifiableListView<Song> songs}) = _$SongsLoadSuccess;

  SongSortType get sortType => throw _privateConstructorUsedError;
  SongOrderType get orderType => throw _privateConstructorUsedError;
  UnmodifiableListView<Song> get songs => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SongsLoadSuccessCopyWith<SongsLoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
