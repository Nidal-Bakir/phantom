// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'playing_song.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlayingSongTearOff {
  const _$PlayingSongTearOff();

  _PlayingSong call(
      {required int cpsIndex,
      required PlayerState playerState,
      required Song song,
      required LoopMode loopMode,
      required IcyMetadata? icyMetadata,
      required Stream<Duration> position}) {
    return _PlayingSong(
      cpsIndex: cpsIndex,
      playerState: playerState,
      song: song,
      loopMode: loopMode,
      icyMetadata: icyMetadata,
      position: position,
    );
  }
}

/// @nodoc
const $PlayingSong = _$PlayingSongTearOff();

/// @nodoc
mixin _$PlayingSong {
  int get cpsIndex => throw _privateConstructorUsedError;
  PlayerState get playerState => throw _privateConstructorUsedError;
  Song get song => throw _privateConstructorUsedError;
  LoopMode get loopMode => throw _privateConstructorUsedError;
  IcyMetadata? get icyMetadata => throw _privateConstructorUsedError;
  Stream<Duration> get position => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlayingSongCopyWith<PlayingSong> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayingSongCopyWith<$Res> {
  factory $PlayingSongCopyWith(
          PlayingSong value, $Res Function(PlayingSong) then) =
      _$PlayingSongCopyWithImpl<$Res>;
  $Res call(
      {int cpsIndex,
      PlayerState playerState,
      Song song,
      LoopMode loopMode,
      IcyMetadata? icyMetadata,
      Stream<Duration> position});

  $SongCopyWith<$Res> get song;
}

/// @nodoc
class _$PlayingSongCopyWithImpl<$Res> implements $PlayingSongCopyWith<$Res> {
  _$PlayingSongCopyWithImpl(this._value, this._then);

  final PlayingSong _value;
  // ignore: unused_field
  final $Res Function(PlayingSong) _then;

  @override
  $Res call({
    Object? cpsIndex = freezed,
    Object? playerState = freezed,
    Object? song = freezed,
    Object? loopMode = freezed,
    Object? icyMetadata = freezed,
    Object? position = freezed,
  }) {
    return _then(_value.copyWith(
      cpsIndex: cpsIndex == freezed
          ? _value.cpsIndex
          : cpsIndex // ignore: cast_nullable_to_non_nullable
              as int,
      playerState: playerState == freezed
          ? _value.playerState
          : playerState // ignore: cast_nullable_to_non_nullable
              as PlayerState,
      song: song == freezed
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as Song,
      loopMode: loopMode == freezed
          ? _value.loopMode
          : loopMode // ignore: cast_nullable_to_non_nullable
              as LoopMode,
      icyMetadata: icyMetadata == freezed
          ? _value.icyMetadata
          : icyMetadata // ignore: cast_nullable_to_non_nullable
              as IcyMetadata?,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Stream<Duration>,
    ));
  }

  @override
  $SongCopyWith<$Res> get song {
    return $SongCopyWith<$Res>(_value.song, (value) {
      return _then(_value.copyWith(song: value));
    });
  }
}

/// @nodoc
abstract class _$PlayingSongCopyWith<$Res>
    implements $PlayingSongCopyWith<$Res> {
  factory _$PlayingSongCopyWith(
          _PlayingSong value, $Res Function(_PlayingSong) then) =
      __$PlayingSongCopyWithImpl<$Res>;
  @override
  $Res call(
      {int cpsIndex,
      PlayerState playerState,
      Song song,
      LoopMode loopMode,
      IcyMetadata? icyMetadata,
      Stream<Duration> position});

  @override
  $SongCopyWith<$Res> get song;
}

/// @nodoc
class __$PlayingSongCopyWithImpl<$Res> extends _$PlayingSongCopyWithImpl<$Res>
    implements _$PlayingSongCopyWith<$Res> {
  __$PlayingSongCopyWithImpl(
      _PlayingSong _value, $Res Function(_PlayingSong) _then)
      : super(_value, (v) => _then(v as _PlayingSong));

  @override
  _PlayingSong get _value => super._value as _PlayingSong;

  @override
  $Res call({
    Object? cpsIndex = freezed,
    Object? playerState = freezed,
    Object? song = freezed,
    Object? loopMode = freezed,
    Object? icyMetadata = freezed,
    Object? position = freezed,
  }) {
    return _then(_PlayingSong(
      cpsIndex: cpsIndex == freezed
          ? _value.cpsIndex
          : cpsIndex // ignore: cast_nullable_to_non_nullable
              as int,
      playerState: playerState == freezed
          ? _value.playerState
          : playerState // ignore: cast_nullable_to_non_nullable
              as PlayerState,
      song: song == freezed
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as Song,
      loopMode: loopMode == freezed
          ? _value.loopMode
          : loopMode // ignore: cast_nullable_to_non_nullable
              as LoopMode,
      icyMetadata: icyMetadata == freezed
          ? _value.icyMetadata
          : icyMetadata // ignore: cast_nullable_to_non_nullable
              as IcyMetadata?,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Stream<Duration>,
    ));
  }
}

/// @nodoc

class _$_PlayingSong implements _PlayingSong {
  const _$_PlayingSong(
      {required this.cpsIndex,
      required this.playerState,
      required this.song,
      required this.loopMode,
      required this.icyMetadata,
      required this.position});

  @override
  final int cpsIndex;
  @override
  final PlayerState playerState;
  @override
  final Song song;
  @override
  final LoopMode loopMode;
  @override
  final IcyMetadata? icyMetadata;
  @override
  final Stream<Duration> position;

  @override
  String toString() {
    return 'PlayingSong(cpsIndex: $cpsIndex, playerState: $playerState, song: $song, loopMode: $loopMode, icyMetadata: $icyMetadata, position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlayingSong &&
            (identical(other.cpsIndex, cpsIndex) ||
                other.cpsIndex == cpsIndex) &&
            (identical(other.playerState, playerState) ||
                other.playerState == playerState) &&
            (identical(other.song, song) || other.song == song) &&
            (identical(other.loopMode, loopMode) ||
                other.loopMode == loopMode) &&
            (identical(other.icyMetadata, icyMetadata) ||
                other.icyMetadata == icyMetadata) &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cpsIndex, playerState, song,
      loopMode, icyMetadata, position);

  @JsonKey(ignore: true)
  @override
  _$PlayingSongCopyWith<_PlayingSong> get copyWith =>
      __$PlayingSongCopyWithImpl<_PlayingSong>(this, _$identity);
}

abstract class _PlayingSong implements PlayingSong {
  const factory _PlayingSong(
      {required int cpsIndex,
      required PlayerState playerState,
      required Song song,
      required LoopMode loopMode,
      required IcyMetadata? icyMetadata,
      required Stream<Duration> position}) = _$_PlayingSong;

  @override
  int get cpsIndex;
  @override
  PlayerState get playerState;
  @override
  Song get song;
  @override
  LoopMode get loopMode;
  @override
  IcyMetadata? get icyMetadata;
  @override
  Stream<Duration> get position;
  @override
  @JsonKey(ignore: true)
  _$PlayingSongCopyWith<_PlayingSong> get copyWith =>
      throw _privateConstructorUsedError;
}
