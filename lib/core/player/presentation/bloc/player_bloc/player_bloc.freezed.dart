// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'player_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlayerEventTearOff {
  const _$PlayerEventTearOff();

  PlayerNewSongPlayed playerNewSongPlayed(
      SongsContainer songsContainer, int songOrder) {
    return PlayerNewSongPlayed(
      songsContainer,
      songOrder,
    );
  }

  PlayerSongFromQueuePlayed playerSongFromQueuePlayed(
      Song song, int songOrder) {
    return PlayerSongFromQueuePlayed(
      song,
      songOrder,
    );
  }

  PlayerNextSongPlayed playerNextSongPlayed() {
    return const PlayerNextSongPlayed();
  }

  PlayerPlayingSongDataChanged playerPlayingSongDataChanged(
      PlayingSong playingSong) {
    return PlayerPlayingSongDataChanged(
      playingSong,
    );
  }

  PlayerPerviousSongPlayed playerPerviousSongPlayed() {
    return const PlayerPerviousSongPlayed();
  }

  PlayerPaused playerPaused() {
    return const PlayerPaused();
  }

  PlayerResumed playerResumed() {
    return const PlayerResumed();
  }

  PlayerSongSought playerSongSought(Duration position) {
    return PlayerSongSought(
      position,
    );
  }

  PlayerLoopModeChanged loopModeChanged(LoopMode loopMode) {
    return PlayerLoopModeChanged(
      loopMode,
    );
  }
}

/// @nodoc
const $PlayerEvent = _$PlayerEventTearOff();

/// @nodoc
mixin _$PlayerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SongsContainer songsContainer, int songOrder)
        playerNewSongPlayed,
    required TResult Function(Song song, int songOrder)
        playerSongFromQueuePlayed,
    required TResult Function() playerNextSongPlayed,
    required TResult Function(PlayingSong playingSong)
        playerPlayingSongDataChanged,
    required TResult Function() playerPerviousSongPlayed,
    required TResult Function() playerPaused,
    required TResult Function() playerResumed,
    required TResult Function(Duration position) playerSongSought,
    required TResult Function(LoopMode loopMode) loopModeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SongsContainer songsContainer, int songOrder)?
        playerNewSongPlayed,
    TResult Function(Song song, int songOrder)? playerSongFromQueuePlayed,
    TResult Function()? playerNextSongPlayed,
    TResult Function(PlayingSong playingSong)? playerPlayingSongDataChanged,
    TResult Function()? playerPerviousSongPlayed,
    TResult Function()? playerPaused,
    TResult Function()? playerResumed,
    TResult Function(Duration position)? playerSongSought,
    TResult Function(LoopMode loopMode)? loopModeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SongsContainer songsContainer, int songOrder)?
        playerNewSongPlayed,
    TResult Function(Song song, int songOrder)? playerSongFromQueuePlayed,
    TResult Function()? playerNextSongPlayed,
    TResult Function(PlayingSong playingSong)? playerPlayingSongDataChanged,
    TResult Function()? playerPerviousSongPlayed,
    TResult Function()? playerPaused,
    TResult Function()? playerResumed,
    TResult Function(Duration position)? playerSongSought,
    TResult Function(LoopMode loopMode)? loopModeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayerNewSongPlayed value) playerNewSongPlayed,
    required TResult Function(PlayerSongFromQueuePlayed value)
        playerSongFromQueuePlayed,
    required TResult Function(PlayerNextSongPlayed value) playerNextSongPlayed,
    required TResult Function(PlayerPlayingSongDataChanged value)
        playerPlayingSongDataChanged,
    required TResult Function(PlayerPerviousSongPlayed value)
        playerPerviousSongPlayed,
    required TResult Function(PlayerPaused value) playerPaused,
    required TResult Function(PlayerResumed value) playerResumed,
    required TResult Function(PlayerSongSought value) playerSongSought,
    required TResult Function(PlayerLoopModeChanged value) loopModeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PlayerNewSongPlayed value)? playerNewSongPlayed,
    TResult Function(PlayerSongFromQueuePlayed value)?
        playerSongFromQueuePlayed,
    TResult Function(PlayerNextSongPlayed value)? playerNextSongPlayed,
    TResult Function(PlayerPlayingSongDataChanged value)?
        playerPlayingSongDataChanged,
    TResult Function(PlayerPerviousSongPlayed value)? playerPerviousSongPlayed,
    TResult Function(PlayerPaused value)? playerPaused,
    TResult Function(PlayerResumed value)? playerResumed,
    TResult Function(PlayerSongSought value)? playerSongSought,
    TResult Function(PlayerLoopModeChanged value)? loopModeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayerNewSongPlayed value)? playerNewSongPlayed,
    TResult Function(PlayerSongFromQueuePlayed value)?
        playerSongFromQueuePlayed,
    TResult Function(PlayerNextSongPlayed value)? playerNextSongPlayed,
    TResult Function(PlayerPlayingSongDataChanged value)?
        playerPlayingSongDataChanged,
    TResult Function(PlayerPerviousSongPlayed value)? playerPerviousSongPlayed,
    TResult Function(PlayerPaused value)? playerPaused,
    TResult Function(PlayerResumed value)? playerResumed,
    TResult Function(PlayerSongSought value)? playerSongSought,
    TResult Function(PlayerLoopModeChanged value)? loopModeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerEventCopyWith<$Res> {
  factory $PlayerEventCopyWith(
          PlayerEvent value, $Res Function(PlayerEvent) then) =
      _$PlayerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlayerEventCopyWithImpl<$Res> implements $PlayerEventCopyWith<$Res> {
  _$PlayerEventCopyWithImpl(this._value, this._then);

  final PlayerEvent _value;
  // ignore: unused_field
  final $Res Function(PlayerEvent) _then;
}

/// @nodoc
abstract class $PlayerNewSongPlayedCopyWith<$Res> {
  factory $PlayerNewSongPlayedCopyWith(
          PlayerNewSongPlayed value, $Res Function(PlayerNewSongPlayed) then) =
      _$PlayerNewSongPlayedCopyWithImpl<$Res>;
  $Res call({SongsContainer songsContainer, int songOrder});
}

/// @nodoc
class _$PlayerNewSongPlayedCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res>
    implements $PlayerNewSongPlayedCopyWith<$Res> {
  _$PlayerNewSongPlayedCopyWithImpl(
      PlayerNewSongPlayed _value, $Res Function(PlayerNewSongPlayed) _then)
      : super(_value, (v) => _then(v as PlayerNewSongPlayed));

  @override
  PlayerNewSongPlayed get _value => super._value as PlayerNewSongPlayed;

  @override
  $Res call({
    Object? songsContainer = freezed,
    Object? songOrder = freezed,
  }) {
    return _then(PlayerNewSongPlayed(
      songsContainer == freezed
          ? _value.songsContainer
          : songsContainer // ignore: cast_nullable_to_non_nullable
              as SongsContainer,
      songOrder == freezed
          ? _value.songOrder
          : songOrder // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PlayerNewSongPlayed implements PlayerNewSongPlayed {
  const _$PlayerNewSongPlayed(this.songsContainer, this.songOrder);

  @override
  final SongsContainer songsContainer;
  @override
  final int songOrder;

  @override
  String toString() {
    return 'PlayerEvent.playerNewSongPlayed(songsContainer: $songsContainer, songOrder: $songOrder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlayerNewSongPlayed &&
            const DeepCollectionEquality()
                .equals(other.songsContainer, songsContainer) &&
            (identical(other.songOrder, songOrder) ||
                other.songOrder == songOrder));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(songsContainer), songOrder);

  @JsonKey(ignore: true)
  @override
  $PlayerNewSongPlayedCopyWith<PlayerNewSongPlayed> get copyWith =>
      _$PlayerNewSongPlayedCopyWithImpl<PlayerNewSongPlayed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SongsContainer songsContainer, int songOrder)
        playerNewSongPlayed,
    required TResult Function(Song song, int songOrder)
        playerSongFromQueuePlayed,
    required TResult Function() playerNextSongPlayed,
    required TResult Function(PlayingSong playingSong)
        playerPlayingSongDataChanged,
    required TResult Function() playerPerviousSongPlayed,
    required TResult Function() playerPaused,
    required TResult Function() playerResumed,
    required TResult Function(Duration position) playerSongSought,
    required TResult Function(LoopMode loopMode) loopModeChanged,
  }) {
    return playerNewSongPlayed(songsContainer, songOrder);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SongsContainer songsContainer, int songOrder)?
        playerNewSongPlayed,
    TResult Function(Song song, int songOrder)? playerSongFromQueuePlayed,
    TResult Function()? playerNextSongPlayed,
    TResult Function(PlayingSong playingSong)? playerPlayingSongDataChanged,
    TResult Function()? playerPerviousSongPlayed,
    TResult Function()? playerPaused,
    TResult Function()? playerResumed,
    TResult Function(Duration position)? playerSongSought,
    TResult Function(LoopMode loopMode)? loopModeChanged,
  }) {
    return playerNewSongPlayed?.call(songsContainer, songOrder);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SongsContainer songsContainer, int songOrder)?
        playerNewSongPlayed,
    TResult Function(Song song, int songOrder)? playerSongFromQueuePlayed,
    TResult Function()? playerNextSongPlayed,
    TResult Function(PlayingSong playingSong)? playerPlayingSongDataChanged,
    TResult Function()? playerPerviousSongPlayed,
    TResult Function()? playerPaused,
    TResult Function()? playerResumed,
    TResult Function(Duration position)? playerSongSought,
    TResult Function(LoopMode loopMode)? loopModeChanged,
    required TResult orElse(),
  }) {
    if (playerNewSongPlayed != null) {
      return playerNewSongPlayed(songsContainer, songOrder);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayerNewSongPlayed value) playerNewSongPlayed,
    required TResult Function(PlayerSongFromQueuePlayed value)
        playerSongFromQueuePlayed,
    required TResult Function(PlayerNextSongPlayed value) playerNextSongPlayed,
    required TResult Function(PlayerPlayingSongDataChanged value)
        playerPlayingSongDataChanged,
    required TResult Function(PlayerPerviousSongPlayed value)
        playerPerviousSongPlayed,
    required TResult Function(PlayerPaused value) playerPaused,
    required TResult Function(PlayerResumed value) playerResumed,
    required TResult Function(PlayerSongSought value) playerSongSought,
    required TResult Function(PlayerLoopModeChanged value) loopModeChanged,
  }) {
    return playerNewSongPlayed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PlayerNewSongPlayed value)? playerNewSongPlayed,
    TResult Function(PlayerSongFromQueuePlayed value)?
        playerSongFromQueuePlayed,
    TResult Function(PlayerNextSongPlayed value)? playerNextSongPlayed,
    TResult Function(PlayerPlayingSongDataChanged value)?
        playerPlayingSongDataChanged,
    TResult Function(PlayerPerviousSongPlayed value)? playerPerviousSongPlayed,
    TResult Function(PlayerPaused value)? playerPaused,
    TResult Function(PlayerResumed value)? playerResumed,
    TResult Function(PlayerSongSought value)? playerSongSought,
    TResult Function(PlayerLoopModeChanged value)? loopModeChanged,
  }) {
    return playerNewSongPlayed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayerNewSongPlayed value)? playerNewSongPlayed,
    TResult Function(PlayerSongFromQueuePlayed value)?
        playerSongFromQueuePlayed,
    TResult Function(PlayerNextSongPlayed value)? playerNextSongPlayed,
    TResult Function(PlayerPlayingSongDataChanged value)?
        playerPlayingSongDataChanged,
    TResult Function(PlayerPerviousSongPlayed value)? playerPerviousSongPlayed,
    TResult Function(PlayerPaused value)? playerPaused,
    TResult Function(PlayerResumed value)? playerResumed,
    TResult Function(PlayerSongSought value)? playerSongSought,
    TResult Function(PlayerLoopModeChanged value)? loopModeChanged,
    required TResult orElse(),
  }) {
    if (playerNewSongPlayed != null) {
      return playerNewSongPlayed(this);
    }
    return orElse();
  }
}

abstract class PlayerNewSongPlayed implements PlayerEvent {
  const factory PlayerNewSongPlayed(
      SongsContainer songsContainer, int songOrder) = _$PlayerNewSongPlayed;

  SongsContainer get songsContainer;
  int get songOrder;
  @JsonKey(ignore: true)
  $PlayerNewSongPlayedCopyWith<PlayerNewSongPlayed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerSongFromQueuePlayedCopyWith<$Res> {
  factory $PlayerSongFromQueuePlayedCopyWith(PlayerSongFromQueuePlayed value,
          $Res Function(PlayerSongFromQueuePlayed) then) =
      _$PlayerSongFromQueuePlayedCopyWithImpl<$Res>;
  $Res call({Song song, int songOrder});

  $SongCopyWith<$Res> get song;
}

/// @nodoc
class _$PlayerSongFromQueuePlayedCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res>
    implements $PlayerSongFromQueuePlayedCopyWith<$Res> {
  _$PlayerSongFromQueuePlayedCopyWithImpl(PlayerSongFromQueuePlayed _value,
      $Res Function(PlayerSongFromQueuePlayed) _then)
      : super(_value, (v) => _then(v as PlayerSongFromQueuePlayed));

  @override
  PlayerSongFromQueuePlayed get _value =>
      super._value as PlayerSongFromQueuePlayed;

  @override
  $Res call({
    Object? song = freezed,
    Object? songOrder = freezed,
  }) {
    return _then(PlayerSongFromQueuePlayed(
      song == freezed
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as Song,
      songOrder == freezed
          ? _value.songOrder
          : songOrder // ignore: cast_nullable_to_non_nullable
              as int,
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

class _$PlayerSongFromQueuePlayed implements PlayerSongFromQueuePlayed {
  const _$PlayerSongFromQueuePlayed(this.song, this.songOrder);

  @override
  final Song song;
  @override
  final int songOrder;

  @override
  String toString() {
    return 'PlayerEvent.playerSongFromQueuePlayed(song: $song, songOrder: $songOrder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlayerSongFromQueuePlayed &&
            (identical(other.song, song) || other.song == song) &&
            (identical(other.songOrder, songOrder) ||
                other.songOrder == songOrder));
  }

  @override
  int get hashCode => Object.hash(runtimeType, song, songOrder);

  @JsonKey(ignore: true)
  @override
  $PlayerSongFromQueuePlayedCopyWith<PlayerSongFromQueuePlayed> get copyWith =>
      _$PlayerSongFromQueuePlayedCopyWithImpl<PlayerSongFromQueuePlayed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SongsContainer songsContainer, int songOrder)
        playerNewSongPlayed,
    required TResult Function(Song song, int songOrder)
        playerSongFromQueuePlayed,
    required TResult Function() playerNextSongPlayed,
    required TResult Function(PlayingSong playingSong)
        playerPlayingSongDataChanged,
    required TResult Function() playerPerviousSongPlayed,
    required TResult Function() playerPaused,
    required TResult Function() playerResumed,
    required TResult Function(Duration position) playerSongSought,
    required TResult Function(LoopMode loopMode) loopModeChanged,
  }) {
    return playerSongFromQueuePlayed(song, songOrder);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SongsContainer songsContainer, int songOrder)?
        playerNewSongPlayed,
    TResult Function(Song song, int songOrder)? playerSongFromQueuePlayed,
    TResult Function()? playerNextSongPlayed,
    TResult Function(PlayingSong playingSong)? playerPlayingSongDataChanged,
    TResult Function()? playerPerviousSongPlayed,
    TResult Function()? playerPaused,
    TResult Function()? playerResumed,
    TResult Function(Duration position)? playerSongSought,
    TResult Function(LoopMode loopMode)? loopModeChanged,
  }) {
    return playerSongFromQueuePlayed?.call(song, songOrder);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SongsContainer songsContainer, int songOrder)?
        playerNewSongPlayed,
    TResult Function(Song song, int songOrder)? playerSongFromQueuePlayed,
    TResult Function()? playerNextSongPlayed,
    TResult Function(PlayingSong playingSong)? playerPlayingSongDataChanged,
    TResult Function()? playerPerviousSongPlayed,
    TResult Function()? playerPaused,
    TResult Function()? playerResumed,
    TResult Function(Duration position)? playerSongSought,
    TResult Function(LoopMode loopMode)? loopModeChanged,
    required TResult orElse(),
  }) {
    if (playerSongFromQueuePlayed != null) {
      return playerSongFromQueuePlayed(song, songOrder);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayerNewSongPlayed value) playerNewSongPlayed,
    required TResult Function(PlayerSongFromQueuePlayed value)
        playerSongFromQueuePlayed,
    required TResult Function(PlayerNextSongPlayed value) playerNextSongPlayed,
    required TResult Function(PlayerPlayingSongDataChanged value)
        playerPlayingSongDataChanged,
    required TResult Function(PlayerPerviousSongPlayed value)
        playerPerviousSongPlayed,
    required TResult Function(PlayerPaused value) playerPaused,
    required TResult Function(PlayerResumed value) playerResumed,
    required TResult Function(PlayerSongSought value) playerSongSought,
    required TResult Function(PlayerLoopModeChanged value) loopModeChanged,
  }) {
    return playerSongFromQueuePlayed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PlayerNewSongPlayed value)? playerNewSongPlayed,
    TResult Function(PlayerSongFromQueuePlayed value)?
        playerSongFromQueuePlayed,
    TResult Function(PlayerNextSongPlayed value)? playerNextSongPlayed,
    TResult Function(PlayerPlayingSongDataChanged value)?
        playerPlayingSongDataChanged,
    TResult Function(PlayerPerviousSongPlayed value)? playerPerviousSongPlayed,
    TResult Function(PlayerPaused value)? playerPaused,
    TResult Function(PlayerResumed value)? playerResumed,
    TResult Function(PlayerSongSought value)? playerSongSought,
    TResult Function(PlayerLoopModeChanged value)? loopModeChanged,
  }) {
    return playerSongFromQueuePlayed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayerNewSongPlayed value)? playerNewSongPlayed,
    TResult Function(PlayerSongFromQueuePlayed value)?
        playerSongFromQueuePlayed,
    TResult Function(PlayerNextSongPlayed value)? playerNextSongPlayed,
    TResult Function(PlayerPlayingSongDataChanged value)?
        playerPlayingSongDataChanged,
    TResult Function(PlayerPerviousSongPlayed value)? playerPerviousSongPlayed,
    TResult Function(PlayerPaused value)? playerPaused,
    TResult Function(PlayerResumed value)? playerResumed,
    TResult Function(PlayerSongSought value)? playerSongSought,
    TResult Function(PlayerLoopModeChanged value)? loopModeChanged,
    required TResult orElse(),
  }) {
    if (playerSongFromQueuePlayed != null) {
      return playerSongFromQueuePlayed(this);
    }
    return orElse();
  }
}

abstract class PlayerSongFromQueuePlayed implements PlayerEvent {
  const factory PlayerSongFromQueuePlayed(Song song, int songOrder) =
      _$PlayerSongFromQueuePlayed;

  Song get song;
  int get songOrder;
  @JsonKey(ignore: true)
  $PlayerSongFromQueuePlayedCopyWith<PlayerSongFromQueuePlayed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerNextSongPlayedCopyWith<$Res> {
  factory $PlayerNextSongPlayedCopyWith(PlayerNextSongPlayed value,
          $Res Function(PlayerNextSongPlayed) then) =
      _$PlayerNextSongPlayedCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlayerNextSongPlayedCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res>
    implements $PlayerNextSongPlayedCopyWith<$Res> {
  _$PlayerNextSongPlayedCopyWithImpl(
      PlayerNextSongPlayed _value, $Res Function(PlayerNextSongPlayed) _then)
      : super(_value, (v) => _then(v as PlayerNextSongPlayed));

  @override
  PlayerNextSongPlayed get _value => super._value as PlayerNextSongPlayed;
}

/// @nodoc

class _$PlayerNextSongPlayed implements PlayerNextSongPlayed {
  const _$PlayerNextSongPlayed();

  @override
  String toString() {
    return 'PlayerEvent.playerNextSongPlayed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PlayerNextSongPlayed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SongsContainer songsContainer, int songOrder)
        playerNewSongPlayed,
    required TResult Function(Song song, int songOrder)
        playerSongFromQueuePlayed,
    required TResult Function() playerNextSongPlayed,
    required TResult Function(PlayingSong playingSong)
        playerPlayingSongDataChanged,
    required TResult Function() playerPerviousSongPlayed,
    required TResult Function() playerPaused,
    required TResult Function() playerResumed,
    required TResult Function(Duration position) playerSongSought,
    required TResult Function(LoopMode loopMode) loopModeChanged,
  }) {
    return playerNextSongPlayed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SongsContainer songsContainer, int songOrder)?
        playerNewSongPlayed,
    TResult Function(Song song, int songOrder)? playerSongFromQueuePlayed,
    TResult Function()? playerNextSongPlayed,
    TResult Function(PlayingSong playingSong)? playerPlayingSongDataChanged,
    TResult Function()? playerPerviousSongPlayed,
    TResult Function()? playerPaused,
    TResult Function()? playerResumed,
    TResult Function(Duration position)? playerSongSought,
    TResult Function(LoopMode loopMode)? loopModeChanged,
  }) {
    return playerNextSongPlayed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SongsContainer songsContainer, int songOrder)?
        playerNewSongPlayed,
    TResult Function(Song song, int songOrder)? playerSongFromQueuePlayed,
    TResult Function()? playerNextSongPlayed,
    TResult Function(PlayingSong playingSong)? playerPlayingSongDataChanged,
    TResult Function()? playerPerviousSongPlayed,
    TResult Function()? playerPaused,
    TResult Function()? playerResumed,
    TResult Function(Duration position)? playerSongSought,
    TResult Function(LoopMode loopMode)? loopModeChanged,
    required TResult orElse(),
  }) {
    if (playerNextSongPlayed != null) {
      return playerNextSongPlayed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayerNewSongPlayed value) playerNewSongPlayed,
    required TResult Function(PlayerSongFromQueuePlayed value)
        playerSongFromQueuePlayed,
    required TResult Function(PlayerNextSongPlayed value) playerNextSongPlayed,
    required TResult Function(PlayerPlayingSongDataChanged value)
        playerPlayingSongDataChanged,
    required TResult Function(PlayerPerviousSongPlayed value)
        playerPerviousSongPlayed,
    required TResult Function(PlayerPaused value) playerPaused,
    required TResult Function(PlayerResumed value) playerResumed,
    required TResult Function(PlayerSongSought value) playerSongSought,
    required TResult Function(PlayerLoopModeChanged value) loopModeChanged,
  }) {
    return playerNextSongPlayed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PlayerNewSongPlayed value)? playerNewSongPlayed,
    TResult Function(PlayerSongFromQueuePlayed value)?
        playerSongFromQueuePlayed,
    TResult Function(PlayerNextSongPlayed value)? playerNextSongPlayed,
    TResult Function(PlayerPlayingSongDataChanged value)?
        playerPlayingSongDataChanged,
    TResult Function(PlayerPerviousSongPlayed value)? playerPerviousSongPlayed,
    TResult Function(PlayerPaused value)? playerPaused,
    TResult Function(PlayerResumed value)? playerResumed,
    TResult Function(PlayerSongSought value)? playerSongSought,
    TResult Function(PlayerLoopModeChanged value)? loopModeChanged,
  }) {
    return playerNextSongPlayed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayerNewSongPlayed value)? playerNewSongPlayed,
    TResult Function(PlayerSongFromQueuePlayed value)?
        playerSongFromQueuePlayed,
    TResult Function(PlayerNextSongPlayed value)? playerNextSongPlayed,
    TResult Function(PlayerPlayingSongDataChanged value)?
        playerPlayingSongDataChanged,
    TResult Function(PlayerPerviousSongPlayed value)? playerPerviousSongPlayed,
    TResult Function(PlayerPaused value)? playerPaused,
    TResult Function(PlayerResumed value)? playerResumed,
    TResult Function(PlayerSongSought value)? playerSongSought,
    TResult Function(PlayerLoopModeChanged value)? loopModeChanged,
    required TResult orElse(),
  }) {
    if (playerNextSongPlayed != null) {
      return playerNextSongPlayed(this);
    }
    return orElse();
  }
}

abstract class PlayerNextSongPlayed implements PlayerEvent {
  const factory PlayerNextSongPlayed() = _$PlayerNextSongPlayed;
}

/// @nodoc
abstract class $PlayerPlayingSongDataChangedCopyWith<$Res> {
  factory $PlayerPlayingSongDataChangedCopyWith(
          PlayerPlayingSongDataChanged value,
          $Res Function(PlayerPlayingSongDataChanged) then) =
      _$PlayerPlayingSongDataChangedCopyWithImpl<$Res>;
  $Res call({PlayingSong playingSong});

  $PlayingSongCopyWith<$Res> get playingSong;
}

/// @nodoc
class _$PlayerPlayingSongDataChangedCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res>
    implements $PlayerPlayingSongDataChangedCopyWith<$Res> {
  _$PlayerPlayingSongDataChangedCopyWithImpl(
      PlayerPlayingSongDataChanged _value,
      $Res Function(PlayerPlayingSongDataChanged) _then)
      : super(_value, (v) => _then(v as PlayerPlayingSongDataChanged));

  @override
  PlayerPlayingSongDataChanged get _value =>
      super._value as PlayerPlayingSongDataChanged;

  @override
  $Res call({
    Object? playingSong = freezed,
  }) {
    return _then(PlayerPlayingSongDataChanged(
      playingSong == freezed
          ? _value.playingSong
          : playingSong // ignore: cast_nullable_to_non_nullable
              as PlayingSong,
    ));
  }

  @override
  $PlayingSongCopyWith<$Res> get playingSong {
    return $PlayingSongCopyWith<$Res>(_value.playingSong, (value) {
      return _then(_value.copyWith(playingSong: value));
    });
  }
}

/// @nodoc

class _$PlayerPlayingSongDataChanged implements PlayerPlayingSongDataChanged {
  const _$PlayerPlayingSongDataChanged(this.playingSong);

  @override
  final PlayingSong playingSong;

  @override
  String toString() {
    return 'PlayerEvent.playerPlayingSongDataChanged(playingSong: $playingSong)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlayerPlayingSongDataChanged &&
            (identical(other.playingSong, playingSong) ||
                other.playingSong == playingSong));
  }

  @override
  int get hashCode => Object.hash(runtimeType, playingSong);

  @JsonKey(ignore: true)
  @override
  $PlayerPlayingSongDataChangedCopyWith<PlayerPlayingSongDataChanged>
      get copyWith => _$PlayerPlayingSongDataChangedCopyWithImpl<
          PlayerPlayingSongDataChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SongsContainer songsContainer, int songOrder)
        playerNewSongPlayed,
    required TResult Function(Song song, int songOrder)
        playerSongFromQueuePlayed,
    required TResult Function() playerNextSongPlayed,
    required TResult Function(PlayingSong playingSong)
        playerPlayingSongDataChanged,
    required TResult Function() playerPerviousSongPlayed,
    required TResult Function() playerPaused,
    required TResult Function() playerResumed,
    required TResult Function(Duration position) playerSongSought,
    required TResult Function(LoopMode loopMode) loopModeChanged,
  }) {
    return playerPlayingSongDataChanged(playingSong);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SongsContainer songsContainer, int songOrder)?
        playerNewSongPlayed,
    TResult Function(Song song, int songOrder)? playerSongFromQueuePlayed,
    TResult Function()? playerNextSongPlayed,
    TResult Function(PlayingSong playingSong)? playerPlayingSongDataChanged,
    TResult Function()? playerPerviousSongPlayed,
    TResult Function()? playerPaused,
    TResult Function()? playerResumed,
    TResult Function(Duration position)? playerSongSought,
    TResult Function(LoopMode loopMode)? loopModeChanged,
  }) {
    return playerPlayingSongDataChanged?.call(playingSong);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SongsContainer songsContainer, int songOrder)?
        playerNewSongPlayed,
    TResult Function(Song song, int songOrder)? playerSongFromQueuePlayed,
    TResult Function()? playerNextSongPlayed,
    TResult Function(PlayingSong playingSong)? playerPlayingSongDataChanged,
    TResult Function()? playerPerviousSongPlayed,
    TResult Function()? playerPaused,
    TResult Function()? playerResumed,
    TResult Function(Duration position)? playerSongSought,
    TResult Function(LoopMode loopMode)? loopModeChanged,
    required TResult orElse(),
  }) {
    if (playerPlayingSongDataChanged != null) {
      return playerPlayingSongDataChanged(playingSong);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayerNewSongPlayed value) playerNewSongPlayed,
    required TResult Function(PlayerSongFromQueuePlayed value)
        playerSongFromQueuePlayed,
    required TResult Function(PlayerNextSongPlayed value) playerNextSongPlayed,
    required TResult Function(PlayerPlayingSongDataChanged value)
        playerPlayingSongDataChanged,
    required TResult Function(PlayerPerviousSongPlayed value)
        playerPerviousSongPlayed,
    required TResult Function(PlayerPaused value) playerPaused,
    required TResult Function(PlayerResumed value) playerResumed,
    required TResult Function(PlayerSongSought value) playerSongSought,
    required TResult Function(PlayerLoopModeChanged value) loopModeChanged,
  }) {
    return playerPlayingSongDataChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PlayerNewSongPlayed value)? playerNewSongPlayed,
    TResult Function(PlayerSongFromQueuePlayed value)?
        playerSongFromQueuePlayed,
    TResult Function(PlayerNextSongPlayed value)? playerNextSongPlayed,
    TResult Function(PlayerPlayingSongDataChanged value)?
        playerPlayingSongDataChanged,
    TResult Function(PlayerPerviousSongPlayed value)? playerPerviousSongPlayed,
    TResult Function(PlayerPaused value)? playerPaused,
    TResult Function(PlayerResumed value)? playerResumed,
    TResult Function(PlayerSongSought value)? playerSongSought,
    TResult Function(PlayerLoopModeChanged value)? loopModeChanged,
  }) {
    return playerPlayingSongDataChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayerNewSongPlayed value)? playerNewSongPlayed,
    TResult Function(PlayerSongFromQueuePlayed value)?
        playerSongFromQueuePlayed,
    TResult Function(PlayerNextSongPlayed value)? playerNextSongPlayed,
    TResult Function(PlayerPlayingSongDataChanged value)?
        playerPlayingSongDataChanged,
    TResult Function(PlayerPerviousSongPlayed value)? playerPerviousSongPlayed,
    TResult Function(PlayerPaused value)? playerPaused,
    TResult Function(PlayerResumed value)? playerResumed,
    TResult Function(PlayerSongSought value)? playerSongSought,
    TResult Function(PlayerLoopModeChanged value)? loopModeChanged,
    required TResult orElse(),
  }) {
    if (playerPlayingSongDataChanged != null) {
      return playerPlayingSongDataChanged(this);
    }
    return orElse();
  }
}

abstract class PlayerPlayingSongDataChanged implements PlayerEvent {
  const factory PlayerPlayingSongDataChanged(PlayingSong playingSong) =
      _$PlayerPlayingSongDataChanged;

  PlayingSong get playingSong;
  @JsonKey(ignore: true)
  $PlayerPlayingSongDataChangedCopyWith<PlayerPlayingSongDataChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerPerviousSongPlayedCopyWith<$Res> {
  factory $PlayerPerviousSongPlayedCopyWith(PlayerPerviousSongPlayed value,
          $Res Function(PlayerPerviousSongPlayed) then) =
      _$PlayerPerviousSongPlayedCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlayerPerviousSongPlayedCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res>
    implements $PlayerPerviousSongPlayedCopyWith<$Res> {
  _$PlayerPerviousSongPlayedCopyWithImpl(PlayerPerviousSongPlayed _value,
      $Res Function(PlayerPerviousSongPlayed) _then)
      : super(_value, (v) => _then(v as PlayerPerviousSongPlayed));

  @override
  PlayerPerviousSongPlayed get _value =>
      super._value as PlayerPerviousSongPlayed;
}

/// @nodoc

class _$PlayerPerviousSongPlayed implements PlayerPerviousSongPlayed {
  const _$PlayerPerviousSongPlayed();

  @override
  String toString() {
    return 'PlayerEvent.playerPerviousSongPlayed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PlayerPerviousSongPlayed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SongsContainer songsContainer, int songOrder)
        playerNewSongPlayed,
    required TResult Function(Song song, int songOrder)
        playerSongFromQueuePlayed,
    required TResult Function() playerNextSongPlayed,
    required TResult Function(PlayingSong playingSong)
        playerPlayingSongDataChanged,
    required TResult Function() playerPerviousSongPlayed,
    required TResult Function() playerPaused,
    required TResult Function() playerResumed,
    required TResult Function(Duration position) playerSongSought,
    required TResult Function(LoopMode loopMode) loopModeChanged,
  }) {
    return playerPerviousSongPlayed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SongsContainer songsContainer, int songOrder)?
        playerNewSongPlayed,
    TResult Function(Song song, int songOrder)? playerSongFromQueuePlayed,
    TResult Function()? playerNextSongPlayed,
    TResult Function(PlayingSong playingSong)? playerPlayingSongDataChanged,
    TResult Function()? playerPerviousSongPlayed,
    TResult Function()? playerPaused,
    TResult Function()? playerResumed,
    TResult Function(Duration position)? playerSongSought,
    TResult Function(LoopMode loopMode)? loopModeChanged,
  }) {
    return playerPerviousSongPlayed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SongsContainer songsContainer, int songOrder)?
        playerNewSongPlayed,
    TResult Function(Song song, int songOrder)? playerSongFromQueuePlayed,
    TResult Function()? playerNextSongPlayed,
    TResult Function(PlayingSong playingSong)? playerPlayingSongDataChanged,
    TResult Function()? playerPerviousSongPlayed,
    TResult Function()? playerPaused,
    TResult Function()? playerResumed,
    TResult Function(Duration position)? playerSongSought,
    TResult Function(LoopMode loopMode)? loopModeChanged,
    required TResult orElse(),
  }) {
    if (playerPerviousSongPlayed != null) {
      return playerPerviousSongPlayed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayerNewSongPlayed value) playerNewSongPlayed,
    required TResult Function(PlayerSongFromQueuePlayed value)
        playerSongFromQueuePlayed,
    required TResult Function(PlayerNextSongPlayed value) playerNextSongPlayed,
    required TResult Function(PlayerPlayingSongDataChanged value)
        playerPlayingSongDataChanged,
    required TResult Function(PlayerPerviousSongPlayed value)
        playerPerviousSongPlayed,
    required TResult Function(PlayerPaused value) playerPaused,
    required TResult Function(PlayerResumed value) playerResumed,
    required TResult Function(PlayerSongSought value) playerSongSought,
    required TResult Function(PlayerLoopModeChanged value) loopModeChanged,
  }) {
    return playerPerviousSongPlayed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PlayerNewSongPlayed value)? playerNewSongPlayed,
    TResult Function(PlayerSongFromQueuePlayed value)?
        playerSongFromQueuePlayed,
    TResult Function(PlayerNextSongPlayed value)? playerNextSongPlayed,
    TResult Function(PlayerPlayingSongDataChanged value)?
        playerPlayingSongDataChanged,
    TResult Function(PlayerPerviousSongPlayed value)? playerPerviousSongPlayed,
    TResult Function(PlayerPaused value)? playerPaused,
    TResult Function(PlayerResumed value)? playerResumed,
    TResult Function(PlayerSongSought value)? playerSongSought,
    TResult Function(PlayerLoopModeChanged value)? loopModeChanged,
  }) {
    return playerPerviousSongPlayed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayerNewSongPlayed value)? playerNewSongPlayed,
    TResult Function(PlayerSongFromQueuePlayed value)?
        playerSongFromQueuePlayed,
    TResult Function(PlayerNextSongPlayed value)? playerNextSongPlayed,
    TResult Function(PlayerPlayingSongDataChanged value)?
        playerPlayingSongDataChanged,
    TResult Function(PlayerPerviousSongPlayed value)? playerPerviousSongPlayed,
    TResult Function(PlayerPaused value)? playerPaused,
    TResult Function(PlayerResumed value)? playerResumed,
    TResult Function(PlayerSongSought value)? playerSongSought,
    TResult Function(PlayerLoopModeChanged value)? loopModeChanged,
    required TResult orElse(),
  }) {
    if (playerPerviousSongPlayed != null) {
      return playerPerviousSongPlayed(this);
    }
    return orElse();
  }
}

abstract class PlayerPerviousSongPlayed implements PlayerEvent {
  const factory PlayerPerviousSongPlayed() = _$PlayerPerviousSongPlayed;
}

/// @nodoc
abstract class $PlayerPausedCopyWith<$Res> {
  factory $PlayerPausedCopyWith(
          PlayerPaused value, $Res Function(PlayerPaused) then) =
      _$PlayerPausedCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlayerPausedCopyWithImpl<$Res> extends _$PlayerEventCopyWithImpl<$Res>
    implements $PlayerPausedCopyWith<$Res> {
  _$PlayerPausedCopyWithImpl(
      PlayerPaused _value, $Res Function(PlayerPaused) _then)
      : super(_value, (v) => _then(v as PlayerPaused));

  @override
  PlayerPaused get _value => super._value as PlayerPaused;
}

/// @nodoc

class _$PlayerPaused implements PlayerPaused {
  const _$PlayerPaused();

  @override
  String toString() {
    return 'PlayerEvent.playerPaused()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PlayerPaused);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SongsContainer songsContainer, int songOrder)
        playerNewSongPlayed,
    required TResult Function(Song song, int songOrder)
        playerSongFromQueuePlayed,
    required TResult Function() playerNextSongPlayed,
    required TResult Function(PlayingSong playingSong)
        playerPlayingSongDataChanged,
    required TResult Function() playerPerviousSongPlayed,
    required TResult Function() playerPaused,
    required TResult Function() playerResumed,
    required TResult Function(Duration position) playerSongSought,
    required TResult Function(LoopMode loopMode) loopModeChanged,
  }) {
    return playerPaused();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SongsContainer songsContainer, int songOrder)?
        playerNewSongPlayed,
    TResult Function(Song song, int songOrder)? playerSongFromQueuePlayed,
    TResult Function()? playerNextSongPlayed,
    TResult Function(PlayingSong playingSong)? playerPlayingSongDataChanged,
    TResult Function()? playerPerviousSongPlayed,
    TResult Function()? playerPaused,
    TResult Function()? playerResumed,
    TResult Function(Duration position)? playerSongSought,
    TResult Function(LoopMode loopMode)? loopModeChanged,
  }) {
    return playerPaused?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SongsContainer songsContainer, int songOrder)?
        playerNewSongPlayed,
    TResult Function(Song song, int songOrder)? playerSongFromQueuePlayed,
    TResult Function()? playerNextSongPlayed,
    TResult Function(PlayingSong playingSong)? playerPlayingSongDataChanged,
    TResult Function()? playerPerviousSongPlayed,
    TResult Function()? playerPaused,
    TResult Function()? playerResumed,
    TResult Function(Duration position)? playerSongSought,
    TResult Function(LoopMode loopMode)? loopModeChanged,
    required TResult orElse(),
  }) {
    if (playerPaused != null) {
      return playerPaused();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayerNewSongPlayed value) playerNewSongPlayed,
    required TResult Function(PlayerSongFromQueuePlayed value)
        playerSongFromQueuePlayed,
    required TResult Function(PlayerNextSongPlayed value) playerNextSongPlayed,
    required TResult Function(PlayerPlayingSongDataChanged value)
        playerPlayingSongDataChanged,
    required TResult Function(PlayerPerviousSongPlayed value)
        playerPerviousSongPlayed,
    required TResult Function(PlayerPaused value) playerPaused,
    required TResult Function(PlayerResumed value) playerResumed,
    required TResult Function(PlayerSongSought value) playerSongSought,
    required TResult Function(PlayerLoopModeChanged value) loopModeChanged,
  }) {
    return playerPaused(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PlayerNewSongPlayed value)? playerNewSongPlayed,
    TResult Function(PlayerSongFromQueuePlayed value)?
        playerSongFromQueuePlayed,
    TResult Function(PlayerNextSongPlayed value)? playerNextSongPlayed,
    TResult Function(PlayerPlayingSongDataChanged value)?
        playerPlayingSongDataChanged,
    TResult Function(PlayerPerviousSongPlayed value)? playerPerviousSongPlayed,
    TResult Function(PlayerPaused value)? playerPaused,
    TResult Function(PlayerResumed value)? playerResumed,
    TResult Function(PlayerSongSought value)? playerSongSought,
    TResult Function(PlayerLoopModeChanged value)? loopModeChanged,
  }) {
    return playerPaused?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayerNewSongPlayed value)? playerNewSongPlayed,
    TResult Function(PlayerSongFromQueuePlayed value)?
        playerSongFromQueuePlayed,
    TResult Function(PlayerNextSongPlayed value)? playerNextSongPlayed,
    TResult Function(PlayerPlayingSongDataChanged value)?
        playerPlayingSongDataChanged,
    TResult Function(PlayerPerviousSongPlayed value)? playerPerviousSongPlayed,
    TResult Function(PlayerPaused value)? playerPaused,
    TResult Function(PlayerResumed value)? playerResumed,
    TResult Function(PlayerSongSought value)? playerSongSought,
    TResult Function(PlayerLoopModeChanged value)? loopModeChanged,
    required TResult orElse(),
  }) {
    if (playerPaused != null) {
      return playerPaused(this);
    }
    return orElse();
  }
}

abstract class PlayerPaused implements PlayerEvent {
  const factory PlayerPaused() = _$PlayerPaused;
}

/// @nodoc
abstract class $PlayerResumedCopyWith<$Res> {
  factory $PlayerResumedCopyWith(
          PlayerResumed value, $Res Function(PlayerResumed) then) =
      _$PlayerResumedCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlayerResumedCopyWithImpl<$Res> extends _$PlayerEventCopyWithImpl<$Res>
    implements $PlayerResumedCopyWith<$Res> {
  _$PlayerResumedCopyWithImpl(
      PlayerResumed _value, $Res Function(PlayerResumed) _then)
      : super(_value, (v) => _then(v as PlayerResumed));

  @override
  PlayerResumed get _value => super._value as PlayerResumed;
}

/// @nodoc

class _$PlayerResumed implements PlayerResumed {
  const _$PlayerResumed();

  @override
  String toString() {
    return 'PlayerEvent.playerResumed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PlayerResumed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SongsContainer songsContainer, int songOrder)
        playerNewSongPlayed,
    required TResult Function(Song song, int songOrder)
        playerSongFromQueuePlayed,
    required TResult Function() playerNextSongPlayed,
    required TResult Function(PlayingSong playingSong)
        playerPlayingSongDataChanged,
    required TResult Function() playerPerviousSongPlayed,
    required TResult Function() playerPaused,
    required TResult Function() playerResumed,
    required TResult Function(Duration position) playerSongSought,
    required TResult Function(LoopMode loopMode) loopModeChanged,
  }) {
    return playerResumed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SongsContainer songsContainer, int songOrder)?
        playerNewSongPlayed,
    TResult Function(Song song, int songOrder)? playerSongFromQueuePlayed,
    TResult Function()? playerNextSongPlayed,
    TResult Function(PlayingSong playingSong)? playerPlayingSongDataChanged,
    TResult Function()? playerPerviousSongPlayed,
    TResult Function()? playerPaused,
    TResult Function()? playerResumed,
    TResult Function(Duration position)? playerSongSought,
    TResult Function(LoopMode loopMode)? loopModeChanged,
  }) {
    return playerResumed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SongsContainer songsContainer, int songOrder)?
        playerNewSongPlayed,
    TResult Function(Song song, int songOrder)? playerSongFromQueuePlayed,
    TResult Function()? playerNextSongPlayed,
    TResult Function(PlayingSong playingSong)? playerPlayingSongDataChanged,
    TResult Function()? playerPerviousSongPlayed,
    TResult Function()? playerPaused,
    TResult Function()? playerResumed,
    TResult Function(Duration position)? playerSongSought,
    TResult Function(LoopMode loopMode)? loopModeChanged,
    required TResult orElse(),
  }) {
    if (playerResumed != null) {
      return playerResumed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayerNewSongPlayed value) playerNewSongPlayed,
    required TResult Function(PlayerSongFromQueuePlayed value)
        playerSongFromQueuePlayed,
    required TResult Function(PlayerNextSongPlayed value) playerNextSongPlayed,
    required TResult Function(PlayerPlayingSongDataChanged value)
        playerPlayingSongDataChanged,
    required TResult Function(PlayerPerviousSongPlayed value)
        playerPerviousSongPlayed,
    required TResult Function(PlayerPaused value) playerPaused,
    required TResult Function(PlayerResumed value) playerResumed,
    required TResult Function(PlayerSongSought value) playerSongSought,
    required TResult Function(PlayerLoopModeChanged value) loopModeChanged,
  }) {
    return playerResumed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PlayerNewSongPlayed value)? playerNewSongPlayed,
    TResult Function(PlayerSongFromQueuePlayed value)?
        playerSongFromQueuePlayed,
    TResult Function(PlayerNextSongPlayed value)? playerNextSongPlayed,
    TResult Function(PlayerPlayingSongDataChanged value)?
        playerPlayingSongDataChanged,
    TResult Function(PlayerPerviousSongPlayed value)? playerPerviousSongPlayed,
    TResult Function(PlayerPaused value)? playerPaused,
    TResult Function(PlayerResumed value)? playerResumed,
    TResult Function(PlayerSongSought value)? playerSongSought,
    TResult Function(PlayerLoopModeChanged value)? loopModeChanged,
  }) {
    return playerResumed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayerNewSongPlayed value)? playerNewSongPlayed,
    TResult Function(PlayerSongFromQueuePlayed value)?
        playerSongFromQueuePlayed,
    TResult Function(PlayerNextSongPlayed value)? playerNextSongPlayed,
    TResult Function(PlayerPlayingSongDataChanged value)?
        playerPlayingSongDataChanged,
    TResult Function(PlayerPerviousSongPlayed value)? playerPerviousSongPlayed,
    TResult Function(PlayerPaused value)? playerPaused,
    TResult Function(PlayerResumed value)? playerResumed,
    TResult Function(PlayerSongSought value)? playerSongSought,
    TResult Function(PlayerLoopModeChanged value)? loopModeChanged,
    required TResult orElse(),
  }) {
    if (playerResumed != null) {
      return playerResumed(this);
    }
    return orElse();
  }
}

abstract class PlayerResumed implements PlayerEvent {
  const factory PlayerResumed() = _$PlayerResumed;
}

/// @nodoc
abstract class $PlayerSongSoughtCopyWith<$Res> {
  factory $PlayerSongSoughtCopyWith(
          PlayerSongSought value, $Res Function(PlayerSongSought) then) =
      _$PlayerSongSoughtCopyWithImpl<$Res>;
  $Res call({Duration position});
}

/// @nodoc
class _$PlayerSongSoughtCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res>
    implements $PlayerSongSoughtCopyWith<$Res> {
  _$PlayerSongSoughtCopyWithImpl(
      PlayerSongSought _value, $Res Function(PlayerSongSought) _then)
      : super(_value, (v) => _then(v as PlayerSongSought));

  @override
  PlayerSongSought get _value => super._value as PlayerSongSought;

  @override
  $Res call({
    Object? position = freezed,
  }) {
    return _then(PlayerSongSought(
      position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$PlayerSongSought implements PlayerSongSought {
  const _$PlayerSongSought(this.position);

  @override
  final Duration position;

  @override
  String toString() {
    return 'PlayerEvent.playerSongSought(position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlayerSongSought &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position);

  @JsonKey(ignore: true)
  @override
  $PlayerSongSoughtCopyWith<PlayerSongSought> get copyWith =>
      _$PlayerSongSoughtCopyWithImpl<PlayerSongSought>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SongsContainer songsContainer, int songOrder)
        playerNewSongPlayed,
    required TResult Function(Song song, int songOrder)
        playerSongFromQueuePlayed,
    required TResult Function() playerNextSongPlayed,
    required TResult Function(PlayingSong playingSong)
        playerPlayingSongDataChanged,
    required TResult Function() playerPerviousSongPlayed,
    required TResult Function() playerPaused,
    required TResult Function() playerResumed,
    required TResult Function(Duration position) playerSongSought,
    required TResult Function(LoopMode loopMode) loopModeChanged,
  }) {
    return playerSongSought(position);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SongsContainer songsContainer, int songOrder)?
        playerNewSongPlayed,
    TResult Function(Song song, int songOrder)? playerSongFromQueuePlayed,
    TResult Function()? playerNextSongPlayed,
    TResult Function(PlayingSong playingSong)? playerPlayingSongDataChanged,
    TResult Function()? playerPerviousSongPlayed,
    TResult Function()? playerPaused,
    TResult Function()? playerResumed,
    TResult Function(Duration position)? playerSongSought,
    TResult Function(LoopMode loopMode)? loopModeChanged,
  }) {
    return playerSongSought?.call(position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SongsContainer songsContainer, int songOrder)?
        playerNewSongPlayed,
    TResult Function(Song song, int songOrder)? playerSongFromQueuePlayed,
    TResult Function()? playerNextSongPlayed,
    TResult Function(PlayingSong playingSong)? playerPlayingSongDataChanged,
    TResult Function()? playerPerviousSongPlayed,
    TResult Function()? playerPaused,
    TResult Function()? playerResumed,
    TResult Function(Duration position)? playerSongSought,
    TResult Function(LoopMode loopMode)? loopModeChanged,
    required TResult orElse(),
  }) {
    if (playerSongSought != null) {
      return playerSongSought(position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayerNewSongPlayed value) playerNewSongPlayed,
    required TResult Function(PlayerSongFromQueuePlayed value)
        playerSongFromQueuePlayed,
    required TResult Function(PlayerNextSongPlayed value) playerNextSongPlayed,
    required TResult Function(PlayerPlayingSongDataChanged value)
        playerPlayingSongDataChanged,
    required TResult Function(PlayerPerviousSongPlayed value)
        playerPerviousSongPlayed,
    required TResult Function(PlayerPaused value) playerPaused,
    required TResult Function(PlayerResumed value) playerResumed,
    required TResult Function(PlayerSongSought value) playerSongSought,
    required TResult Function(PlayerLoopModeChanged value) loopModeChanged,
  }) {
    return playerSongSought(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PlayerNewSongPlayed value)? playerNewSongPlayed,
    TResult Function(PlayerSongFromQueuePlayed value)?
        playerSongFromQueuePlayed,
    TResult Function(PlayerNextSongPlayed value)? playerNextSongPlayed,
    TResult Function(PlayerPlayingSongDataChanged value)?
        playerPlayingSongDataChanged,
    TResult Function(PlayerPerviousSongPlayed value)? playerPerviousSongPlayed,
    TResult Function(PlayerPaused value)? playerPaused,
    TResult Function(PlayerResumed value)? playerResumed,
    TResult Function(PlayerSongSought value)? playerSongSought,
    TResult Function(PlayerLoopModeChanged value)? loopModeChanged,
  }) {
    return playerSongSought?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayerNewSongPlayed value)? playerNewSongPlayed,
    TResult Function(PlayerSongFromQueuePlayed value)?
        playerSongFromQueuePlayed,
    TResult Function(PlayerNextSongPlayed value)? playerNextSongPlayed,
    TResult Function(PlayerPlayingSongDataChanged value)?
        playerPlayingSongDataChanged,
    TResult Function(PlayerPerviousSongPlayed value)? playerPerviousSongPlayed,
    TResult Function(PlayerPaused value)? playerPaused,
    TResult Function(PlayerResumed value)? playerResumed,
    TResult Function(PlayerSongSought value)? playerSongSought,
    TResult Function(PlayerLoopModeChanged value)? loopModeChanged,
    required TResult orElse(),
  }) {
    if (playerSongSought != null) {
      return playerSongSought(this);
    }
    return orElse();
  }
}

abstract class PlayerSongSought implements PlayerEvent {
  const factory PlayerSongSought(Duration position) = _$PlayerSongSought;

  Duration get position;
  @JsonKey(ignore: true)
  $PlayerSongSoughtCopyWith<PlayerSongSought> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerLoopModeChangedCopyWith<$Res> {
  factory $PlayerLoopModeChangedCopyWith(PlayerLoopModeChanged value,
          $Res Function(PlayerLoopModeChanged) then) =
      _$PlayerLoopModeChangedCopyWithImpl<$Res>;
  $Res call({LoopMode loopMode});
}

/// @nodoc
class _$PlayerLoopModeChangedCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res>
    implements $PlayerLoopModeChangedCopyWith<$Res> {
  _$PlayerLoopModeChangedCopyWithImpl(
      PlayerLoopModeChanged _value, $Res Function(PlayerLoopModeChanged) _then)
      : super(_value, (v) => _then(v as PlayerLoopModeChanged));

  @override
  PlayerLoopModeChanged get _value => super._value as PlayerLoopModeChanged;

  @override
  $Res call({
    Object? loopMode = freezed,
  }) {
    return _then(PlayerLoopModeChanged(
      loopMode == freezed
          ? _value.loopMode
          : loopMode // ignore: cast_nullable_to_non_nullable
              as LoopMode,
    ));
  }
}

/// @nodoc

class _$PlayerLoopModeChanged implements PlayerLoopModeChanged {
  const _$PlayerLoopModeChanged(this.loopMode);

  @override
  final LoopMode loopMode;

  @override
  String toString() {
    return 'PlayerEvent.loopModeChanged(loopMode: $loopMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlayerLoopModeChanged &&
            (identical(other.loopMode, loopMode) ||
                other.loopMode == loopMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loopMode);

  @JsonKey(ignore: true)
  @override
  $PlayerLoopModeChangedCopyWith<PlayerLoopModeChanged> get copyWith =>
      _$PlayerLoopModeChangedCopyWithImpl<PlayerLoopModeChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SongsContainer songsContainer, int songOrder)
        playerNewSongPlayed,
    required TResult Function(Song song, int songOrder)
        playerSongFromQueuePlayed,
    required TResult Function() playerNextSongPlayed,
    required TResult Function(PlayingSong playingSong)
        playerPlayingSongDataChanged,
    required TResult Function() playerPerviousSongPlayed,
    required TResult Function() playerPaused,
    required TResult Function() playerResumed,
    required TResult Function(Duration position) playerSongSought,
    required TResult Function(LoopMode loopMode) loopModeChanged,
  }) {
    return loopModeChanged(loopMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SongsContainer songsContainer, int songOrder)?
        playerNewSongPlayed,
    TResult Function(Song song, int songOrder)? playerSongFromQueuePlayed,
    TResult Function()? playerNextSongPlayed,
    TResult Function(PlayingSong playingSong)? playerPlayingSongDataChanged,
    TResult Function()? playerPerviousSongPlayed,
    TResult Function()? playerPaused,
    TResult Function()? playerResumed,
    TResult Function(Duration position)? playerSongSought,
    TResult Function(LoopMode loopMode)? loopModeChanged,
  }) {
    return loopModeChanged?.call(loopMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SongsContainer songsContainer, int songOrder)?
        playerNewSongPlayed,
    TResult Function(Song song, int songOrder)? playerSongFromQueuePlayed,
    TResult Function()? playerNextSongPlayed,
    TResult Function(PlayingSong playingSong)? playerPlayingSongDataChanged,
    TResult Function()? playerPerviousSongPlayed,
    TResult Function()? playerPaused,
    TResult Function()? playerResumed,
    TResult Function(Duration position)? playerSongSought,
    TResult Function(LoopMode loopMode)? loopModeChanged,
    required TResult orElse(),
  }) {
    if (loopModeChanged != null) {
      return loopModeChanged(loopMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayerNewSongPlayed value) playerNewSongPlayed,
    required TResult Function(PlayerSongFromQueuePlayed value)
        playerSongFromQueuePlayed,
    required TResult Function(PlayerNextSongPlayed value) playerNextSongPlayed,
    required TResult Function(PlayerPlayingSongDataChanged value)
        playerPlayingSongDataChanged,
    required TResult Function(PlayerPerviousSongPlayed value)
        playerPerviousSongPlayed,
    required TResult Function(PlayerPaused value) playerPaused,
    required TResult Function(PlayerResumed value) playerResumed,
    required TResult Function(PlayerSongSought value) playerSongSought,
    required TResult Function(PlayerLoopModeChanged value) loopModeChanged,
  }) {
    return loopModeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PlayerNewSongPlayed value)? playerNewSongPlayed,
    TResult Function(PlayerSongFromQueuePlayed value)?
        playerSongFromQueuePlayed,
    TResult Function(PlayerNextSongPlayed value)? playerNextSongPlayed,
    TResult Function(PlayerPlayingSongDataChanged value)?
        playerPlayingSongDataChanged,
    TResult Function(PlayerPerviousSongPlayed value)? playerPerviousSongPlayed,
    TResult Function(PlayerPaused value)? playerPaused,
    TResult Function(PlayerResumed value)? playerResumed,
    TResult Function(PlayerSongSought value)? playerSongSought,
    TResult Function(PlayerLoopModeChanged value)? loopModeChanged,
  }) {
    return loopModeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayerNewSongPlayed value)? playerNewSongPlayed,
    TResult Function(PlayerSongFromQueuePlayed value)?
        playerSongFromQueuePlayed,
    TResult Function(PlayerNextSongPlayed value)? playerNextSongPlayed,
    TResult Function(PlayerPlayingSongDataChanged value)?
        playerPlayingSongDataChanged,
    TResult Function(PlayerPerviousSongPlayed value)? playerPerviousSongPlayed,
    TResult Function(PlayerPaused value)? playerPaused,
    TResult Function(PlayerResumed value)? playerResumed,
    TResult Function(PlayerSongSought value)? playerSongSought,
    TResult Function(PlayerLoopModeChanged value)? loopModeChanged,
    required TResult orElse(),
  }) {
    if (loopModeChanged != null) {
      return loopModeChanged(this);
    }
    return orElse();
  }
}

abstract class PlayerLoopModeChanged implements PlayerEvent {
  const factory PlayerLoopModeChanged(LoopMode loopMode) =
      _$PlayerLoopModeChanged;

  LoopMode get loopMode;
  @JsonKey(ignore: true)
  $PlayerLoopModeChangedCopyWith<PlayerLoopModeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PlayerStateTearOff {
  const _$PlayerStateTearOff();

  PlayerInitial initial() {
    return const PlayerInitial();
  }

  PlayerPlaySuccuss playSuccuss(PlayingSong playingSong) {
    return PlayerPlaySuccuss(
      playingSong,
    );
  }

  PlayerPlaySongLoadFailure playSongFailure(PlayingSong playingSong) {
    return PlayerPlaySongLoadFailure(
      playingSong,
    );
  }
}

/// @nodoc
const $PlayerState = _$PlayerStateTearOff();

/// @nodoc
mixin _$PlayerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PlayingSong playingSong) playSuccuss,
    required TResult Function(PlayingSong playingSong) playSongFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PlayingSong playingSong)? playSuccuss,
    TResult Function(PlayingSong playingSong)? playSongFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PlayingSong playingSong)? playSuccuss,
    TResult Function(PlayingSong playingSong)? playSongFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayerInitial value) initial,
    required TResult Function(PlayerPlaySuccuss value) playSuccuss,
    required TResult Function(PlayerPlaySongLoadFailure value) playSongFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PlayerInitial value)? initial,
    TResult Function(PlayerPlaySuccuss value)? playSuccuss,
    TResult Function(PlayerPlaySongLoadFailure value)? playSongFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayerInitial value)? initial,
    TResult Function(PlayerPlaySuccuss value)? playSuccuss,
    TResult Function(PlayerPlaySongLoadFailure value)? playSongFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerStateCopyWith<$Res> {
  factory $PlayerStateCopyWith(
          PlayerState value, $Res Function(PlayerState) then) =
      _$PlayerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlayerStateCopyWithImpl<$Res> implements $PlayerStateCopyWith<$Res> {
  _$PlayerStateCopyWithImpl(this._value, this._then);

  final PlayerState _value;
  // ignore: unused_field
  final $Res Function(PlayerState) _then;
}

/// @nodoc
abstract class $PlayerInitialCopyWith<$Res> {
  factory $PlayerInitialCopyWith(
          PlayerInitial value, $Res Function(PlayerInitial) then) =
      _$PlayerInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlayerInitialCopyWithImpl<$Res> extends _$PlayerStateCopyWithImpl<$Res>
    implements $PlayerInitialCopyWith<$Res> {
  _$PlayerInitialCopyWithImpl(
      PlayerInitial _value, $Res Function(PlayerInitial) _then)
      : super(_value, (v) => _then(v as PlayerInitial));

  @override
  PlayerInitial get _value => super._value as PlayerInitial;
}

/// @nodoc

class _$PlayerInitial implements PlayerInitial {
  const _$PlayerInitial();

  @override
  String toString() {
    return 'PlayerState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PlayerInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PlayingSong playingSong) playSuccuss,
    required TResult Function(PlayingSong playingSong) playSongFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PlayingSong playingSong)? playSuccuss,
    TResult Function(PlayingSong playingSong)? playSongFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PlayingSong playingSong)? playSuccuss,
    TResult Function(PlayingSong playingSong)? playSongFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayerInitial value) initial,
    required TResult Function(PlayerPlaySuccuss value) playSuccuss,
    required TResult Function(PlayerPlaySongLoadFailure value) playSongFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PlayerInitial value)? initial,
    TResult Function(PlayerPlaySuccuss value)? playSuccuss,
    TResult Function(PlayerPlaySongLoadFailure value)? playSongFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayerInitial value)? initial,
    TResult Function(PlayerPlaySuccuss value)? playSuccuss,
    TResult Function(PlayerPlaySongLoadFailure value)? playSongFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PlayerInitial implements PlayerState {
  const factory PlayerInitial() = _$PlayerInitial;
}

/// @nodoc
abstract class $PlayerPlaySuccussCopyWith<$Res> {
  factory $PlayerPlaySuccussCopyWith(
          PlayerPlaySuccuss value, $Res Function(PlayerPlaySuccuss) then) =
      _$PlayerPlaySuccussCopyWithImpl<$Res>;
  $Res call({PlayingSong playingSong});

  $PlayingSongCopyWith<$Res> get playingSong;
}

/// @nodoc
class _$PlayerPlaySuccussCopyWithImpl<$Res>
    extends _$PlayerStateCopyWithImpl<$Res>
    implements $PlayerPlaySuccussCopyWith<$Res> {
  _$PlayerPlaySuccussCopyWithImpl(
      PlayerPlaySuccuss _value, $Res Function(PlayerPlaySuccuss) _then)
      : super(_value, (v) => _then(v as PlayerPlaySuccuss));

  @override
  PlayerPlaySuccuss get _value => super._value as PlayerPlaySuccuss;

  @override
  $Res call({
    Object? playingSong = freezed,
  }) {
    return _then(PlayerPlaySuccuss(
      playingSong == freezed
          ? _value.playingSong
          : playingSong // ignore: cast_nullable_to_non_nullable
              as PlayingSong,
    ));
  }

  @override
  $PlayingSongCopyWith<$Res> get playingSong {
    return $PlayingSongCopyWith<$Res>(_value.playingSong, (value) {
      return _then(_value.copyWith(playingSong: value));
    });
  }
}

/// @nodoc

class _$PlayerPlaySuccuss implements PlayerPlaySuccuss {
  const _$PlayerPlaySuccuss(this.playingSong);

  @override
  final PlayingSong playingSong;

  @override
  String toString() {
    return 'PlayerState.playSuccuss(playingSong: $playingSong)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlayerPlaySuccuss &&
            (identical(other.playingSong, playingSong) ||
                other.playingSong == playingSong));
  }

  @override
  int get hashCode => Object.hash(runtimeType, playingSong);

  @JsonKey(ignore: true)
  @override
  $PlayerPlaySuccussCopyWith<PlayerPlaySuccuss> get copyWith =>
      _$PlayerPlaySuccussCopyWithImpl<PlayerPlaySuccuss>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PlayingSong playingSong) playSuccuss,
    required TResult Function(PlayingSong playingSong) playSongFailure,
  }) {
    return playSuccuss(playingSong);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PlayingSong playingSong)? playSuccuss,
    TResult Function(PlayingSong playingSong)? playSongFailure,
  }) {
    return playSuccuss?.call(playingSong);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PlayingSong playingSong)? playSuccuss,
    TResult Function(PlayingSong playingSong)? playSongFailure,
    required TResult orElse(),
  }) {
    if (playSuccuss != null) {
      return playSuccuss(playingSong);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayerInitial value) initial,
    required TResult Function(PlayerPlaySuccuss value) playSuccuss,
    required TResult Function(PlayerPlaySongLoadFailure value) playSongFailure,
  }) {
    return playSuccuss(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PlayerInitial value)? initial,
    TResult Function(PlayerPlaySuccuss value)? playSuccuss,
    TResult Function(PlayerPlaySongLoadFailure value)? playSongFailure,
  }) {
    return playSuccuss?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayerInitial value)? initial,
    TResult Function(PlayerPlaySuccuss value)? playSuccuss,
    TResult Function(PlayerPlaySongLoadFailure value)? playSongFailure,
    required TResult orElse(),
  }) {
    if (playSuccuss != null) {
      return playSuccuss(this);
    }
    return orElse();
  }
}

abstract class PlayerPlaySuccuss implements PlayerState {
  const factory PlayerPlaySuccuss(PlayingSong playingSong) =
      _$PlayerPlaySuccuss;

  PlayingSong get playingSong;
  @JsonKey(ignore: true)
  $PlayerPlaySuccussCopyWith<PlayerPlaySuccuss> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerPlaySongLoadFailureCopyWith<$Res> {
  factory $PlayerPlaySongLoadFailureCopyWith(PlayerPlaySongLoadFailure value,
          $Res Function(PlayerPlaySongLoadFailure) then) =
      _$PlayerPlaySongLoadFailureCopyWithImpl<$Res>;
  $Res call({PlayingSong playingSong});

  $PlayingSongCopyWith<$Res> get playingSong;
}

/// @nodoc
class _$PlayerPlaySongLoadFailureCopyWithImpl<$Res>
    extends _$PlayerStateCopyWithImpl<$Res>
    implements $PlayerPlaySongLoadFailureCopyWith<$Res> {
  _$PlayerPlaySongLoadFailureCopyWithImpl(PlayerPlaySongLoadFailure _value,
      $Res Function(PlayerPlaySongLoadFailure) _then)
      : super(_value, (v) => _then(v as PlayerPlaySongLoadFailure));

  @override
  PlayerPlaySongLoadFailure get _value =>
      super._value as PlayerPlaySongLoadFailure;

  @override
  $Res call({
    Object? playingSong = freezed,
  }) {
    return _then(PlayerPlaySongLoadFailure(
      playingSong == freezed
          ? _value.playingSong
          : playingSong // ignore: cast_nullable_to_non_nullable
              as PlayingSong,
    ));
  }

  @override
  $PlayingSongCopyWith<$Res> get playingSong {
    return $PlayingSongCopyWith<$Res>(_value.playingSong, (value) {
      return _then(_value.copyWith(playingSong: value));
    });
  }
}

/// @nodoc

class _$PlayerPlaySongLoadFailure implements PlayerPlaySongLoadFailure {
  const _$PlayerPlaySongLoadFailure(this.playingSong);

  @override
  final PlayingSong playingSong;

  @override
  String toString() {
    return 'PlayerState.playSongFailure(playingSong: $playingSong)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlayerPlaySongLoadFailure &&
            (identical(other.playingSong, playingSong) ||
                other.playingSong == playingSong));
  }

  @override
  int get hashCode => Object.hash(runtimeType, playingSong);

  @JsonKey(ignore: true)
  @override
  $PlayerPlaySongLoadFailureCopyWith<PlayerPlaySongLoadFailure> get copyWith =>
      _$PlayerPlaySongLoadFailureCopyWithImpl<PlayerPlaySongLoadFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PlayingSong playingSong) playSuccuss,
    required TResult Function(PlayingSong playingSong) playSongFailure,
  }) {
    return playSongFailure(playingSong);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PlayingSong playingSong)? playSuccuss,
    TResult Function(PlayingSong playingSong)? playSongFailure,
  }) {
    return playSongFailure?.call(playingSong);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PlayingSong playingSong)? playSuccuss,
    TResult Function(PlayingSong playingSong)? playSongFailure,
    required TResult orElse(),
  }) {
    if (playSongFailure != null) {
      return playSongFailure(playingSong);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayerInitial value) initial,
    required TResult Function(PlayerPlaySuccuss value) playSuccuss,
    required TResult Function(PlayerPlaySongLoadFailure value) playSongFailure,
  }) {
    return playSongFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PlayerInitial value)? initial,
    TResult Function(PlayerPlaySuccuss value)? playSuccuss,
    TResult Function(PlayerPlaySongLoadFailure value)? playSongFailure,
  }) {
    return playSongFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayerInitial value)? initial,
    TResult Function(PlayerPlaySuccuss value)? playSuccuss,
    TResult Function(PlayerPlaySongLoadFailure value)? playSongFailure,
    required TResult orElse(),
  }) {
    if (playSongFailure != null) {
      return playSongFailure(this);
    }
    return orElse();
  }
}

abstract class PlayerPlaySongLoadFailure implements PlayerState {
  const factory PlayerPlaySongLoadFailure(PlayingSong playingSong) =
      _$PlayerPlaySongLoadFailure;

  PlayingSong get playingSong;
  @JsonKey(ignore: true)
  $PlayerPlaySongLoadFailureCopyWith<PlayerPlaySongLoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
