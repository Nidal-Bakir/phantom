// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'queue_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$QueueEventTearOff {
  const _$QueueEventTearOff();

  QueueLoaded queueLoaded() {
    return const QueueLoaded();
  }

  QueueNewSongPlayed queueNewSongPlayed(
      int songOrder, SongsContainer songsContainer) {
    return QueueNewSongPlayed(
      songOrder,
      songsContainer,
    );
  }

  QueueSongRemoved queueSongRemoved(Song song, int order) {
    return QueueSongRemoved(
      song,
      order,
    );
  }

  QueueSongAdded queueSongAdded(Song song, Uint8List? artwork) {
    return QueueSongAdded(
      song,
      artwork,
    );
  }

  QueueSongsAdded queueSongsAdded(SongsContainer songsContainer) {
    return QueueSongsAdded(
      songsContainer,
    );
  }

  QueueSongReordered queueSongReordered(int from, int to) {
    return QueueSongReordered(
      from,
      to,
    );
  }

  QueueCleared queueCleared() {
    return const QueueCleared();
  }
}

/// @nodoc
const $QueueEvent = _$QueueEventTearOff();

/// @nodoc
mixin _$QueueEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() queueLoaded,
    required TResult Function(int songOrder, SongsContainer songsContainer)
        queueNewSongPlayed,
    required TResult Function(Song song, int order) queueSongRemoved,
    required TResult Function(Song song, Uint8List? artwork) queueSongAdded,
    required TResult Function(SongsContainer songsContainer) queueSongsAdded,
    required TResult Function(int from, int to) queueSongReordered,
    required TResult Function() queueCleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? queueLoaded,
    TResult Function(int songOrder, SongsContainer songsContainer)?
        queueNewSongPlayed,
    TResult Function(Song song, int order)? queueSongRemoved,
    TResult Function(Song song, Uint8List? artwork)? queueSongAdded,
    TResult Function(SongsContainer songsContainer)? queueSongsAdded,
    TResult Function(int from, int to)? queueSongReordered,
    TResult Function()? queueCleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? queueLoaded,
    TResult Function(int songOrder, SongsContainer songsContainer)?
        queueNewSongPlayed,
    TResult Function(Song song, int order)? queueSongRemoved,
    TResult Function(Song song, Uint8List? artwork)? queueSongAdded,
    TResult Function(SongsContainer songsContainer)? queueSongsAdded,
    TResult Function(int from, int to)? queueSongReordered,
    TResult Function()? queueCleared,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QueueLoaded value) queueLoaded,
    required TResult Function(QueueNewSongPlayed value) queueNewSongPlayed,
    required TResult Function(QueueSongRemoved value) queueSongRemoved,
    required TResult Function(QueueSongAdded value) queueSongAdded,
    required TResult Function(QueueSongsAdded value) queueSongsAdded,
    required TResult Function(QueueSongReordered value) queueSongReordered,
    required TResult Function(QueueCleared value) queueCleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QueueLoaded value)? queueLoaded,
    TResult Function(QueueNewSongPlayed value)? queueNewSongPlayed,
    TResult Function(QueueSongRemoved value)? queueSongRemoved,
    TResult Function(QueueSongAdded value)? queueSongAdded,
    TResult Function(QueueSongsAdded value)? queueSongsAdded,
    TResult Function(QueueSongReordered value)? queueSongReordered,
    TResult Function(QueueCleared value)? queueCleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QueueLoaded value)? queueLoaded,
    TResult Function(QueueNewSongPlayed value)? queueNewSongPlayed,
    TResult Function(QueueSongRemoved value)? queueSongRemoved,
    TResult Function(QueueSongAdded value)? queueSongAdded,
    TResult Function(QueueSongsAdded value)? queueSongsAdded,
    TResult Function(QueueSongReordered value)? queueSongReordered,
    TResult Function(QueueCleared value)? queueCleared,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueueEventCopyWith<$Res> {
  factory $QueueEventCopyWith(
          QueueEvent value, $Res Function(QueueEvent) then) =
      _$QueueEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$QueueEventCopyWithImpl<$Res> implements $QueueEventCopyWith<$Res> {
  _$QueueEventCopyWithImpl(this._value, this._then);

  final QueueEvent _value;
  // ignore: unused_field
  final $Res Function(QueueEvent) _then;
}

/// @nodoc
abstract class $QueueLoadedCopyWith<$Res> {
  factory $QueueLoadedCopyWith(
          QueueLoaded value, $Res Function(QueueLoaded) then) =
      _$QueueLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class _$QueueLoadedCopyWithImpl<$Res> extends _$QueueEventCopyWithImpl<$Res>
    implements $QueueLoadedCopyWith<$Res> {
  _$QueueLoadedCopyWithImpl(
      QueueLoaded _value, $Res Function(QueueLoaded) _then)
      : super(_value, (v) => _then(v as QueueLoaded));

  @override
  QueueLoaded get _value => super._value as QueueLoaded;
}

/// @nodoc

class _$QueueLoaded implements QueueLoaded {
  const _$QueueLoaded();

  @override
  String toString() {
    return 'QueueEvent.queueLoaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is QueueLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() queueLoaded,
    required TResult Function(int songOrder, SongsContainer songsContainer)
        queueNewSongPlayed,
    required TResult Function(Song song, int order) queueSongRemoved,
    required TResult Function(Song song, Uint8List? artwork) queueSongAdded,
    required TResult Function(SongsContainer songsContainer) queueSongsAdded,
    required TResult Function(int from, int to) queueSongReordered,
    required TResult Function() queueCleared,
  }) {
    return queueLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? queueLoaded,
    TResult Function(int songOrder, SongsContainer songsContainer)?
        queueNewSongPlayed,
    TResult Function(Song song, int order)? queueSongRemoved,
    TResult Function(Song song, Uint8List? artwork)? queueSongAdded,
    TResult Function(SongsContainer songsContainer)? queueSongsAdded,
    TResult Function(int from, int to)? queueSongReordered,
    TResult Function()? queueCleared,
  }) {
    return queueLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? queueLoaded,
    TResult Function(int songOrder, SongsContainer songsContainer)?
        queueNewSongPlayed,
    TResult Function(Song song, int order)? queueSongRemoved,
    TResult Function(Song song, Uint8List? artwork)? queueSongAdded,
    TResult Function(SongsContainer songsContainer)? queueSongsAdded,
    TResult Function(int from, int to)? queueSongReordered,
    TResult Function()? queueCleared,
    required TResult orElse(),
  }) {
    if (queueLoaded != null) {
      return queueLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QueueLoaded value) queueLoaded,
    required TResult Function(QueueNewSongPlayed value) queueNewSongPlayed,
    required TResult Function(QueueSongRemoved value) queueSongRemoved,
    required TResult Function(QueueSongAdded value) queueSongAdded,
    required TResult Function(QueueSongsAdded value) queueSongsAdded,
    required TResult Function(QueueSongReordered value) queueSongReordered,
    required TResult Function(QueueCleared value) queueCleared,
  }) {
    return queueLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QueueLoaded value)? queueLoaded,
    TResult Function(QueueNewSongPlayed value)? queueNewSongPlayed,
    TResult Function(QueueSongRemoved value)? queueSongRemoved,
    TResult Function(QueueSongAdded value)? queueSongAdded,
    TResult Function(QueueSongsAdded value)? queueSongsAdded,
    TResult Function(QueueSongReordered value)? queueSongReordered,
    TResult Function(QueueCleared value)? queueCleared,
  }) {
    return queueLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QueueLoaded value)? queueLoaded,
    TResult Function(QueueNewSongPlayed value)? queueNewSongPlayed,
    TResult Function(QueueSongRemoved value)? queueSongRemoved,
    TResult Function(QueueSongAdded value)? queueSongAdded,
    TResult Function(QueueSongsAdded value)? queueSongsAdded,
    TResult Function(QueueSongReordered value)? queueSongReordered,
    TResult Function(QueueCleared value)? queueCleared,
    required TResult orElse(),
  }) {
    if (queueLoaded != null) {
      return queueLoaded(this);
    }
    return orElse();
  }
}

abstract class QueueLoaded implements QueueEvent {
  const factory QueueLoaded() = _$QueueLoaded;
}

/// @nodoc
abstract class $QueueNewSongPlayedCopyWith<$Res> {
  factory $QueueNewSongPlayedCopyWith(
          QueueNewSongPlayed value, $Res Function(QueueNewSongPlayed) then) =
      _$QueueNewSongPlayedCopyWithImpl<$Res>;
  $Res call({int songOrder, SongsContainer songsContainer});
}

/// @nodoc
class _$QueueNewSongPlayedCopyWithImpl<$Res>
    extends _$QueueEventCopyWithImpl<$Res>
    implements $QueueNewSongPlayedCopyWith<$Res> {
  _$QueueNewSongPlayedCopyWithImpl(
      QueueNewSongPlayed _value, $Res Function(QueueNewSongPlayed) _then)
      : super(_value, (v) => _then(v as QueueNewSongPlayed));

  @override
  QueueNewSongPlayed get _value => super._value as QueueNewSongPlayed;

  @override
  $Res call({
    Object? songOrder = freezed,
    Object? songsContainer = freezed,
  }) {
    return _then(QueueNewSongPlayed(
      songOrder == freezed
          ? _value.songOrder
          : songOrder // ignore: cast_nullable_to_non_nullable
              as int,
      songsContainer == freezed
          ? _value.songsContainer
          : songsContainer // ignore: cast_nullable_to_non_nullable
              as SongsContainer,
    ));
  }
}

/// @nodoc

class _$QueueNewSongPlayed implements QueueNewSongPlayed {
  const _$QueueNewSongPlayed(this.songOrder, this.songsContainer);

  @override
  final int songOrder;
  @override
  final SongsContainer songsContainer;

  @override
  String toString() {
    return 'QueueEvent.queueNewSongPlayed(songOrder: $songOrder, songsContainer: $songsContainer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is QueueNewSongPlayed &&
            (identical(other.songOrder, songOrder) ||
                other.songOrder == songOrder) &&
            (identical(other.songsContainer, songsContainer) ||
                other.songsContainer == songsContainer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, songOrder, songsContainer);

  @JsonKey(ignore: true)
  @override
  $QueueNewSongPlayedCopyWith<QueueNewSongPlayed> get copyWith =>
      _$QueueNewSongPlayedCopyWithImpl<QueueNewSongPlayed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() queueLoaded,
    required TResult Function(int songOrder, SongsContainer songsContainer)
        queueNewSongPlayed,
    required TResult Function(Song song, int order) queueSongRemoved,
    required TResult Function(Song song, Uint8List? artwork) queueSongAdded,
    required TResult Function(SongsContainer songsContainer) queueSongsAdded,
    required TResult Function(int from, int to) queueSongReordered,
    required TResult Function() queueCleared,
  }) {
    return queueNewSongPlayed(songOrder, songsContainer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? queueLoaded,
    TResult Function(int songOrder, SongsContainer songsContainer)?
        queueNewSongPlayed,
    TResult Function(Song song, int order)? queueSongRemoved,
    TResult Function(Song song, Uint8List? artwork)? queueSongAdded,
    TResult Function(SongsContainer songsContainer)? queueSongsAdded,
    TResult Function(int from, int to)? queueSongReordered,
    TResult Function()? queueCleared,
  }) {
    return queueNewSongPlayed?.call(songOrder, songsContainer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? queueLoaded,
    TResult Function(int songOrder, SongsContainer songsContainer)?
        queueNewSongPlayed,
    TResult Function(Song song, int order)? queueSongRemoved,
    TResult Function(Song song, Uint8List? artwork)? queueSongAdded,
    TResult Function(SongsContainer songsContainer)? queueSongsAdded,
    TResult Function(int from, int to)? queueSongReordered,
    TResult Function()? queueCleared,
    required TResult orElse(),
  }) {
    if (queueNewSongPlayed != null) {
      return queueNewSongPlayed(songOrder, songsContainer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QueueLoaded value) queueLoaded,
    required TResult Function(QueueNewSongPlayed value) queueNewSongPlayed,
    required TResult Function(QueueSongRemoved value) queueSongRemoved,
    required TResult Function(QueueSongAdded value) queueSongAdded,
    required TResult Function(QueueSongsAdded value) queueSongsAdded,
    required TResult Function(QueueSongReordered value) queueSongReordered,
    required TResult Function(QueueCleared value) queueCleared,
  }) {
    return queueNewSongPlayed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QueueLoaded value)? queueLoaded,
    TResult Function(QueueNewSongPlayed value)? queueNewSongPlayed,
    TResult Function(QueueSongRemoved value)? queueSongRemoved,
    TResult Function(QueueSongAdded value)? queueSongAdded,
    TResult Function(QueueSongsAdded value)? queueSongsAdded,
    TResult Function(QueueSongReordered value)? queueSongReordered,
    TResult Function(QueueCleared value)? queueCleared,
  }) {
    return queueNewSongPlayed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QueueLoaded value)? queueLoaded,
    TResult Function(QueueNewSongPlayed value)? queueNewSongPlayed,
    TResult Function(QueueSongRemoved value)? queueSongRemoved,
    TResult Function(QueueSongAdded value)? queueSongAdded,
    TResult Function(QueueSongsAdded value)? queueSongsAdded,
    TResult Function(QueueSongReordered value)? queueSongReordered,
    TResult Function(QueueCleared value)? queueCleared,
    required TResult orElse(),
  }) {
    if (queueNewSongPlayed != null) {
      return queueNewSongPlayed(this);
    }
    return orElse();
  }
}

abstract class QueueNewSongPlayed implements QueueEvent {
  const factory QueueNewSongPlayed(
      int songOrder, SongsContainer songsContainer) = _$QueueNewSongPlayed;

  int get songOrder;
  SongsContainer get songsContainer;
  @JsonKey(ignore: true)
  $QueueNewSongPlayedCopyWith<QueueNewSongPlayed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueueSongRemovedCopyWith<$Res> {
  factory $QueueSongRemovedCopyWith(
          QueueSongRemoved value, $Res Function(QueueSongRemoved) then) =
      _$QueueSongRemovedCopyWithImpl<$Res>;
  $Res call({Song song, int order});

  $SongCopyWith<$Res> get song;
}

/// @nodoc
class _$QueueSongRemovedCopyWithImpl<$Res>
    extends _$QueueEventCopyWithImpl<$Res>
    implements $QueueSongRemovedCopyWith<$Res> {
  _$QueueSongRemovedCopyWithImpl(
      QueueSongRemoved _value, $Res Function(QueueSongRemoved) _then)
      : super(_value, (v) => _then(v as QueueSongRemoved));

  @override
  QueueSongRemoved get _value => super._value as QueueSongRemoved;

  @override
  $Res call({
    Object? song = freezed,
    Object? order = freezed,
  }) {
    return _then(QueueSongRemoved(
      song == freezed
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as Song,
      order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
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

class _$QueueSongRemoved implements QueueSongRemoved {
  const _$QueueSongRemoved(this.song, this.order);

  @override
  final Song song;
  @override
  final int order;

  @override
  String toString() {
    return 'QueueEvent.queueSongRemoved(song: $song, order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is QueueSongRemoved &&
            (identical(other.song, song) || other.song == song) &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, song, order);

  @JsonKey(ignore: true)
  @override
  $QueueSongRemovedCopyWith<QueueSongRemoved> get copyWith =>
      _$QueueSongRemovedCopyWithImpl<QueueSongRemoved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() queueLoaded,
    required TResult Function(int songOrder, SongsContainer songsContainer)
        queueNewSongPlayed,
    required TResult Function(Song song, int order) queueSongRemoved,
    required TResult Function(Song song, Uint8List? artwork) queueSongAdded,
    required TResult Function(SongsContainer songsContainer) queueSongsAdded,
    required TResult Function(int from, int to) queueSongReordered,
    required TResult Function() queueCleared,
  }) {
    return queueSongRemoved(song, order);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? queueLoaded,
    TResult Function(int songOrder, SongsContainer songsContainer)?
        queueNewSongPlayed,
    TResult Function(Song song, int order)? queueSongRemoved,
    TResult Function(Song song, Uint8List? artwork)? queueSongAdded,
    TResult Function(SongsContainer songsContainer)? queueSongsAdded,
    TResult Function(int from, int to)? queueSongReordered,
    TResult Function()? queueCleared,
  }) {
    return queueSongRemoved?.call(song, order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? queueLoaded,
    TResult Function(int songOrder, SongsContainer songsContainer)?
        queueNewSongPlayed,
    TResult Function(Song song, int order)? queueSongRemoved,
    TResult Function(Song song, Uint8List? artwork)? queueSongAdded,
    TResult Function(SongsContainer songsContainer)? queueSongsAdded,
    TResult Function(int from, int to)? queueSongReordered,
    TResult Function()? queueCleared,
    required TResult orElse(),
  }) {
    if (queueSongRemoved != null) {
      return queueSongRemoved(song, order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QueueLoaded value) queueLoaded,
    required TResult Function(QueueNewSongPlayed value) queueNewSongPlayed,
    required TResult Function(QueueSongRemoved value) queueSongRemoved,
    required TResult Function(QueueSongAdded value) queueSongAdded,
    required TResult Function(QueueSongsAdded value) queueSongsAdded,
    required TResult Function(QueueSongReordered value) queueSongReordered,
    required TResult Function(QueueCleared value) queueCleared,
  }) {
    return queueSongRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QueueLoaded value)? queueLoaded,
    TResult Function(QueueNewSongPlayed value)? queueNewSongPlayed,
    TResult Function(QueueSongRemoved value)? queueSongRemoved,
    TResult Function(QueueSongAdded value)? queueSongAdded,
    TResult Function(QueueSongsAdded value)? queueSongsAdded,
    TResult Function(QueueSongReordered value)? queueSongReordered,
    TResult Function(QueueCleared value)? queueCleared,
  }) {
    return queueSongRemoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QueueLoaded value)? queueLoaded,
    TResult Function(QueueNewSongPlayed value)? queueNewSongPlayed,
    TResult Function(QueueSongRemoved value)? queueSongRemoved,
    TResult Function(QueueSongAdded value)? queueSongAdded,
    TResult Function(QueueSongsAdded value)? queueSongsAdded,
    TResult Function(QueueSongReordered value)? queueSongReordered,
    TResult Function(QueueCleared value)? queueCleared,
    required TResult orElse(),
  }) {
    if (queueSongRemoved != null) {
      return queueSongRemoved(this);
    }
    return orElse();
  }
}

abstract class QueueSongRemoved implements QueueEvent {
  const factory QueueSongRemoved(Song song, int order) = _$QueueSongRemoved;

  Song get song;
  int get order;
  @JsonKey(ignore: true)
  $QueueSongRemovedCopyWith<QueueSongRemoved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueueSongAddedCopyWith<$Res> {
  factory $QueueSongAddedCopyWith(
          QueueSongAdded value, $Res Function(QueueSongAdded) then) =
      _$QueueSongAddedCopyWithImpl<$Res>;
  $Res call({Song song, Uint8List? artwork});

  $SongCopyWith<$Res> get song;
}

/// @nodoc
class _$QueueSongAddedCopyWithImpl<$Res> extends _$QueueEventCopyWithImpl<$Res>
    implements $QueueSongAddedCopyWith<$Res> {
  _$QueueSongAddedCopyWithImpl(
      QueueSongAdded _value, $Res Function(QueueSongAdded) _then)
      : super(_value, (v) => _then(v as QueueSongAdded));

  @override
  QueueSongAdded get _value => super._value as QueueSongAdded;

  @override
  $Res call({
    Object? song = freezed,
    Object? artwork = freezed,
  }) {
    return _then(QueueSongAdded(
      song == freezed
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as Song,
      artwork == freezed
          ? _value.artwork
          : artwork // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
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

class _$QueueSongAdded implements QueueSongAdded {
  const _$QueueSongAdded(this.song, this.artwork);

  @override
  final Song song;
  @override
  final Uint8List? artwork;

  @override
  String toString() {
    return 'QueueEvent.queueSongAdded(song: $song, artwork: $artwork)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is QueueSongAdded &&
            (identical(other.song, song) || other.song == song) &&
            (identical(other.artwork, artwork) || other.artwork == artwork));
  }

  @override
  int get hashCode => Object.hash(runtimeType, song, artwork);

  @JsonKey(ignore: true)
  @override
  $QueueSongAddedCopyWith<QueueSongAdded> get copyWith =>
      _$QueueSongAddedCopyWithImpl<QueueSongAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() queueLoaded,
    required TResult Function(int songOrder, SongsContainer songsContainer)
        queueNewSongPlayed,
    required TResult Function(Song song, int order) queueSongRemoved,
    required TResult Function(Song song, Uint8List? artwork) queueSongAdded,
    required TResult Function(SongsContainer songsContainer) queueSongsAdded,
    required TResult Function(int from, int to) queueSongReordered,
    required TResult Function() queueCleared,
  }) {
    return queueSongAdded(song, artwork);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? queueLoaded,
    TResult Function(int songOrder, SongsContainer songsContainer)?
        queueNewSongPlayed,
    TResult Function(Song song, int order)? queueSongRemoved,
    TResult Function(Song song, Uint8List? artwork)? queueSongAdded,
    TResult Function(SongsContainer songsContainer)? queueSongsAdded,
    TResult Function(int from, int to)? queueSongReordered,
    TResult Function()? queueCleared,
  }) {
    return queueSongAdded?.call(song, artwork);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? queueLoaded,
    TResult Function(int songOrder, SongsContainer songsContainer)?
        queueNewSongPlayed,
    TResult Function(Song song, int order)? queueSongRemoved,
    TResult Function(Song song, Uint8List? artwork)? queueSongAdded,
    TResult Function(SongsContainer songsContainer)? queueSongsAdded,
    TResult Function(int from, int to)? queueSongReordered,
    TResult Function()? queueCleared,
    required TResult orElse(),
  }) {
    if (queueSongAdded != null) {
      return queueSongAdded(song, artwork);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QueueLoaded value) queueLoaded,
    required TResult Function(QueueNewSongPlayed value) queueNewSongPlayed,
    required TResult Function(QueueSongRemoved value) queueSongRemoved,
    required TResult Function(QueueSongAdded value) queueSongAdded,
    required TResult Function(QueueSongsAdded value) queueSongsAdded,
    required TResult Function(QueueSongReordered value) queueSongReordered,
    required TResult Function(QueueCleared value) queueCleared,
  }) {
    return queueSongAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QueueLoaded value)? queueLoaded,
    TResult Function(QueueNewSongPlayed value)? queueNewSongPlayed,
    TResult Function(QueueSongRemoved value)? queueSongRemoved,
    TResult Function(QueueSongAdded value)? queueSongAdded,
    TResult Function(QueueSongsAdded value)? queueSongsAdded,
    TResult Function(QueueSongReordered value)? queueSongReordered,
    TResult Function(QueueCleared value)? queueCleared,
  }) {
    return queueSongAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QueueLoaded value)? queueLoaded,
    TResult Function(QueueNewSongPlayed value)? queueNewSongPlayed,
    TResult Function(QueueSongRemoved value)? queueSongRemoved,
    TResult Function(QueueSongAdded value)? queueSongAdded,
    TResult Function(QueueSongsAdded value)? queueSongsAdded,
    TResult Function(QueueSongReordered value)? queueSongReordered,
    TResult Function(QueueCleared value)? queueCleared,
    required TResult orElse(),
  }) {
    if (queueSongAdded != null) {
      return queueSongAdded(this);
    }
    return orElse();
  }
}

abstract class QueueSongAdded implements QueueEvent {
  const factory QueueSongAdded(Song song, Uint8List? artwork) =
      _$QueueSongAdded;

  Song get song;
  Uint8List? get artwork;
  @JsonKey(ignore: true)
  $QueueSongAddedCopyWith<QueueSongAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueueSongsAddedCopyWith<$Res> {
  factory $QueueSongsAddedCopyWith(
          QueueSongsAdded value, $Res Function(QueueSongsAdded) then) =
      _$QueueSongsAddedCopyWithImpl<$Res>;
  $Res call({SongsContainer songsContainer});
}

/// @nodoc
class _$QueueSongsAddedCopyWithImpl<$Res> extends _$QueueEventCopyWithImpl<$Res>
    implements $QueueSongsAddedCopyWith<$Res> {
  _$QueueSongsAddedCopyWithImpl(
      QueueSongsAdded _value, $Res Function(QueueSongsAdded) _then)
      : super(_value, (v) => _then(v as QueueSongsAdded));

  @override
  QueueSongsAdded get _value => super._value as QueueSongsAdded;

  @override
  $Res call({
    Object? songsContainer = freezed,
  }) {
    return _then(QueueSongsAdded(
      songsContainer == freezed
          ? _value.songsContainer
          : songsContainer // ignore: cast_nullable_to_non_nullable
              as SongsContainer,
    ));
  }
}

/// @nodoc

class _$QueueSongsAdded implements QueueSongsAdded {
  const _$QueueSongsAdded(this.songsContainer);

  @override
  final SongsContainer songsContainer;

  @override
  String toString() {
    return 'QueueEvent.queueSongsAdded(songsContainer: $songsContainer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is QueueSongsAdded &&
            (identical(other.songsContainer, songsContainer) ||
                other.songsContainer == songsContainer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, songsContainer);

  @JsonKey(ignore: true)
  @override
  $QueueSongsAddedCopyWith<QueueSongsAdded> get copyWith =>
      _$QueueSongsAddedCopyWithImpl<QueueSongsAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() queueLoaded,
    required TResult Function(int songOrder, SongsContainer songsContainer)
        queueNewSongPlayed,
    required TResult Function(Song song, int order) queueSongRemoved,
    required TResult Function(Song song, Uint8List? artwork) queueSongAdded,
    required TResult Function(SongsContainer songsContainer) queueSongsAdded,
    required TResult Function(int from, int to) queueSongReordered,
    required TResult Function() queueCleared,
  }) {
    return queueSongsAdded(songsContainer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? queueLoaded,
    TResult Function(int songOrder, SongsContainer songsContainer)?
        queueNewSongPlayed,
    TResult Function(Song song, int order)? queueSongRemoved,
    TResult Function(Song song, Uint8List? artwork)? queueSongAdded,
    TResult Function(SongsContainer songsContainer)? queueSongsAdded,
    TResult Function(int from, int to)? queueSongReordered,
    TResult Function()? queueCleared,
  }) {
    return queueSongsAdded?.call(songsContainer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? queueLoaded,
    TResult Function(int songOrder, SongsContainer songsContainer)?
        queueNewSongPlayed,
    TResult Function(Song song, int order)? queueSongRemoved,
    TResult Function(Song song, Uint8List? artwork)? queueSongAdded,
    TResult Function(SongsContainer songsContainer)? queueSongsAdded,
    TResult Function(int from, int to)? queueSongReordered,
    TResult Function()? queueCleared,
    required TResult orElse(),
  }) {
    if (queueSongsAdded != null) {
      return queueSongsAdded(songsContainer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QueueLoaded value) queueLoaded,
    required TResult Function(QueueNewSongPlayed value) queueNewSongPlayed,
    required TResult Function(QueueSongRemoved value) queueSongRemoved,
    required TResult Function(QueueSongAdded value) queueSongAdded,
    required TResult Function(QueueSongsAdded value) queueSongsAdded,
    required TResult Function(QueueSongReordered value) queueSongReordered,
    required TResult Function(QueueCleared value) queueCleared,
  }) {
    return queueSongsAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QueueLoaded value)? queueLoaded,
    TResult Function(QueueNewSongPlayed value)? queueNewSongPlayed,
    TResult Function(QueueSongRemoved value)? queueSongRemoved,
    TResult Function(QueueSongAdded value)? queueSongAdded,
    TResult Function(QueueSongsAdded value)? queueSongsAdded,
    TResult Function(QueueSongReordered value)? queueSongReordered,
    TResult Function(QueueCleared value)? queueCleared,
  }) {
    return queueSongsAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QueueLoaded value)? queueLoaded,
    TResult Function(QueueNewSongPlayed value)? queueNewSongPlayed,
    TResult Function(QueueSongRemoved value)? queueSongRemoved,
    TResult Function(QueueSongAdded value)? queueSongAdded,
    TResult Function(QueueSongsAdded value)? queueSongsAdded,
    TResult Function(QueueSongReordered value)? queueSongReordered,
    TResult Function(QueueCleared value)? queueCleared,
    required TResult orElse(),
  }) {
    if (queueSongsAdded != null) {
      return queueSongsAdded(this);
    }
    return orElse();
  }
}

abstract class QueueSongsAdded implements QueueEvent {
  const factory QueueSongsAdded(SongsContainer songsContainer) =
      _$QueueSongsAdded;

  SongsContainer get songsContainer;
  @JsonKey(ignore: true)
  $QueueSongsAddedCopyWith<QueueSongsAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueueSongReorderedCopyWith<$Res> {
  factory $QueueSongReorderedCopyWith(
          QueueSongReordered value, $Res Function(QueueSongReordered) then) =
      _$QueueSongReorderedCopyWithImpl<$Res>;
  $Res call({int from, int to});
}

/// @nodoc
class _$QueueSongReorderedCopyWithImpl<$Res>
    extends _$QueueEventCopyWithImpl<$Res>
    implements $QueueSongReorderedCopyWith<$Res> {
  _$QueueSongReorderedCopyWithImpl(
      QueueSongReordered _value, $Res Function(QueueSongReordered) _then)
      : super(_value, (v) => _then(v as QueueSongReordered));

  @override
  QueueSongReordered get _value => super._value as QueueSongReordered;

  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(QueueSongReordered(
      from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int,
      to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$QueueSongReordered implements QueueSongReordered {
  const _$QueueSongReordered(this.from, this.to);

  @override
  final int from;
  @override
  final int to;

  @override
  String toString() {
    return 'QueueEvent.queueSongReordered(from: $from, to: $to)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is QueueSongReordered &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to));
  }

  @override
  int get hashCode => Object.hash(runtimeType, from, to);

  @JsonKey(ignore: true)
  @override
  $QueueSongReorderedCopyWith<QueueSongReordered> get copyWith =>
      _$QueueSongReorderedCopyWithImpl<QueueSongReordered>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() queueLoaded,
    required TResult Function(int songOrder, SongsContainer songsContainer)
        queueNewSongPlayed,
    required TResult Function(Song song, int order) queueSongRemoved,
    required TResult Function(Song song, Uint8List? artwork) queueSongAdded,
    required TResult Function(SongsContainer songsContainer) queueSongsAdded,
    required TResult Function(int from, int to) queueSongReordered,
    required TResult Function() queueCleared,
  }) {
    return queueSongReordered(from, to);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? queueLoaded,
    TResult Function(int songOrder, SongsContainer songsContainer)?
        queueNewSongPlayed,
    TResult Function(Song song, int order)? queueSongRemoved,
    TResult Function(Song song, Uint8List? artwork)? queueSongAdded,
    TResult Function(SongsContainer songsContainer)? queueSongsAdded,
    TResult Function(int from, int to)? queueSongReordered,
    TResult Function()? queueCleared,
  }) {
    return queueSongReordered?.call(from, to);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? queueLoaded,
    TResult Function(int songOrder, SongsContainer songsContainer)?
        queueNewSongPlayed,
    TResult Function(Song song, int order)? queueSongRemoved,
    TResult Function(Song song, Uint8List? artwork)? queueSongAdded,
    TResult Function(SongsContainer songsContainer)? queueSongsAdded,
    TResult Function(int from, int to)? queueSongReordered,
    TResult Function()? queueCleared,
    required TResult orElse(),
  }) {
    if (queueSongReordered != null) {
      return queueSongReordered(from, to);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QueueLoaded value) queueLoaded,
    required TResult Function(QueueNewSongPlayed value) queueNewSongPlayed,
    required TResult Function(QueueSongRemoved value) queueSongRemoved,
    required TResult Function(QueueSongAdded value) queueSongAdded,
    required TResult Function(QueueSongsAdded value) queueSongsAdded,
    required TResult Function(QueueSongReordered value) queueSongReordered,
    required TResult Function(QueueCleared value) queueCleared,
  }) {
    return queueSongReordered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QueueLoaded value)? queueLoaded,
    TResult Function(QueueNewSongPlayed value)? queueNewSongPlayed,
    TResult Function(QueueSongRemoved value)? queueSongRemoved,
    TResult Function(QueueSongAdded value)? queueSongAdded,
    TResult Function(QueueSongsAdded value)? queueSongsAdded,
    TResult Function(QueueSongReordered value)? queueSongReordered,
    TResult Function(QueueCleared value)? queueCleared,
  }) {
    return queueSongReordered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QueueLoaded value)? queueLoaded,
    TResult Function(QueueNewSongPlayed value)? queueNewSongPlayed,
    TResult Function(QueueSongRemoved value)? queueSongRemoved,
    TResult Function(QueueSongAdded value)? queueSongAdded,
    TResult Function(QueueSongsAdded value)? queueSongsAdded,
    TResult Function(QueueSongReordered value)? queueSongReordered,
    TResult Function(QueueCleared value)? queueCleared,
    required TResult orElse(),
  }) {
    if (queueSongReordered != null) {
      return queueSongReordered(this);
    }
    return orElse();
  }
}

abstract class QueueSongReordered implements QueueEvent {
  const factory QueueSongReordered(int from, int to) = _$QueueSongReordered;

  int get from;
  int get to;
  @JsonKey(ignore: true)
  $QueueSongReorderedCopyWith<QueueSongReordered> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueueClearedCopyWith<$Res> {
  factory $QueueClearedCopyWith(
          QueueCleared value, $Res Function(QueueCleared) then) =
      _$QueueClearedCopyWithImpl<$Res>;
}

/// @nodoc
class _$QueueClearedCopyWithImpl<$Res> extends _$QueueEventCopyWithImpl<$Res>
    implements $QueueClearedCopyWith<$Res> {
  _$QueueClearedCopyWithImpl(
      QueueCleared _value, $Res Function(QueueCleared) _then)
      : super(_value, (v) => _then(v as QueueCleared));

  @override
  QueueCleared get _value => super._value as QueueCleared;
}

/// @nodoc

class _$QueueCleared implements QueueCleared {
  const _$QueueCleared();

  @override
  String toString() {
    return 'QueueEvent.queueCleared()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is QueueCleared);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() queueLoaded,
    required TResult Function(int songOrder, SongsContainer songsContainer)
        queueNewSongPlayed,
    required TResult Function(Song song, int order) queueSongRemoved,
    required TResult Function(Song song, Uint8List? artwork) queueSongAdded,
    required TResult Function(SongsContainer songsContainer) queueSongsAdded,
    required TResult Function(int from, int to) queueSongReordered,
    required TResult Function() queueCleared,
  }) {
    return queueCleared();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? queueLoaded,
    TResult Function(int songOrder, SongsContainer songsContainer)?
        queueNewSongPlayed,
    TResult Function(Song song, int order)? queueSongRemoved,
    TResult Function(Song song, Uint8List? artwork)? queueSongAdded,
    TResult Function(SongsContainer songsContainer)? queueSongsAdded,
    TResult Function(int from, int to)? queueSongReordered,
    TResult Function()? queueCleared,
  }) {
    return queueCleared?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? queueLoaded,
    TResult Function(int songOrder, SongsContainer songsContainer)?
        queueNewSongPlayed,
    TResult Function(Song song, int order)? queueSongRemoved,
    TResult Function(Song song, Uint8List? artwork)? queueSongAdded,
    TResult Function(SongsContainer songsContainer)? queueSongsAdded,
    TResult Function(int from, int to)? queueSongReordered,
    TResult Function()? queueCleared,
    required TResult orElse(),
  }) {
    if (queueCleared != null) {
      return queueCleared();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QueueLoaded value) queueLoaded,
    required TResult Function(QueueNewSongPlayed value) queueNewSongPlayed,
    required TResult Function(QueueSongRemoved value) queueSongRemoved,
    required TResult Function(QueueSongAdded value) queueSongAdded,
    required TResult Function(QueueSongsAdded value) queueSongsAdded,
    required TResult Function(QueueSongReordered value) queueSongReordered,
    required TResult Function(QueueCleared value) queueCleared,
  }) {
    return queueCleared(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QueueLoaded value)? queueLoaded,
    TResult Function(QueueNewSongPlayed value)? queueNewSongPlayed,
    TResult Function(QueueSongRemoved value)? queueSongRemoved,
    TResult Function(QueueSongAdded value)? queueSongAdded,
    TResult Function(QueueSongsAdded value)? queueSongsAdded,
    TResult Function(QueueSongReordered value)? queueSongReordered,
    TResult Function(QueueCleared value)? queueCleared,
  }) {
    return queueCleared?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QueueLoaded value)? queueLoaded,
    TResult Function(QueueNewSongPlayed value)? queueNewSongPlayed,
    TResult Function(QueueSongRemoved value)? queueSongRemoved,
    TResult Function(QueueSongAdded value)? queueSongAdded,
    TResult Function(QueueSongsAdded value)? queueSongsAdded,
    TResult Function(QueueSongReordered value)? queueSongReordered,
    TResult Function(QueueCleared value)? queueCleared,
    required TResult orElse(),
  }) {
    if (queueCleared != null) {
      return queueCleared(this);
    }
    return orElse();
  }
}

abstract class QueueCleared implements QueueEvent {
  const factory QueueCleared() = _$QueueCleared;
}

/// @nodoc
class _$QueueStateTearOff {
  const _$QueueStateTearOff();

  QueueInProgress inProgress() {
    return const QueueInProgress();
  }

  QueueLoadSuccess loadSuccess(
      Stream<int?> cpsIndexStream, SongsContainer songsContainer) {
    return QueueLoadSuccess(
      cpsIndexStream,
      songsContainer,
    );
  }
}

/// @nodoc
const $QueueState = _$QueueStateTearOff();

/// @nodoc
mixin _$QueueState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(
            Stream<int?> cpsIndexStream, SongsContainer songsContainer)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(
            Stream<int?> cpsIndexStream, SongsContainer songsContainer)?
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(
            Stream<int?> cpsIndexStream, SongsContainer songsContainer)?
        loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QueueInProgress value) inProgress,
    required TResult Function(QueueLoadSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QueueInProgress value)? inProgress,
    TResult Function(QueueLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QueueInProgress value)? inProgress,
    TResult Function(QueueLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueueStateCopyWith<$Res> {
  factory $QueueStateCopyWith(
          QueueState value, $Res Function(QueueState) then) =
      _$QueueStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$QueueStateCopyWithImpl<$Res> implements $QueueStateCopyWith<$Res> {
  _$QueueStateCopyWithImpl(this._value, this._then);

  final QueueState _value;
  // ignore: unused_field
  final $Res Function(QueueState) _then;
}

/// @nodoc
abstract class $QueueInProgressCopyWith<$Res> {
  factory $QueueInProgressCopyWith(
          QueueInProgress value, $Res Function(QueueInProgress) then) =
      _$QueueInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$QueueInProgressCopyWithImpl<$Res> extends _$QueueStateCopyWithImpl<$Res>
    implements $QueueInProgressCopyWith<$Res> {
  _$QueueInProgressCopyWithImpl(
      QueueInProgress _value, $Res Function(QueueInProgress) _then)
      : super(_value, (v) => _then(v as QueueInProgress));

  @override
  QueueInProgress get _value => super._value as QueueInProgress;
}

/// @nodoc

class _$QueueInProgress implements QueueInProgress {
  const _$QueueInProgress();

  @override
  String toString() {
    return 'QueueState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is QueueInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(
            Stream<int?> cpsIndexStream, SongsContainer songsContainer)
        loadSuccess,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(
            Stream<int?> cpsIndexStream, SongsContainer songsContainer)?
        loadSuccess,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(
            Stream<int?> cpsIndexStream, SongsContainer songsContainer)?
        loadSuccess,
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
    required TResult Function(QueueInProgress value) inProgress,
    required TResult Function(QueueLoadSuccess value) loadSuccess,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QueueInProgress value)? inProgress,
    TResult Function(QueueLoadSuccess value)? loadSuccess,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QueueInProgress value)? inProgress,
    TResult Function(QueueLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class QueueInProgress implements QueueState {
  const factory QueueInProgress() = _$QueueInProgress;
}

/// @nodoc
abstract class $QueueLoadSuccessCopyWith<$Res> {
  factory $QueueLoadSuccessCopyWith(
          QueueLoadSuccess value, $Res Function(QueueLoadSuccess) then) =
      _$QueueLoadSuccessCopyWithImpl<$Res>;
  $Res call({Stream<int?> cpsIndexStream, SongsContainer songsContainer});
}

/// @nodoc
class _$QueueLoadSuccessCopyWithImpl<$Res>
    extends _$QueueStateCopyWithImpl<$Res>
    implements $QueueLoadSuccessCopyWith<$Res> {
  _$QueueLoadSuccessCopyWithImpl(
      QueueLoadSuccess _value, $Res Function(QueueLoadSuccess) _then)
      : super(_value, (v) => _then(v as QueueLoadSuccess));

  @override
  QueueLoadSuccess get _value => super._value as QueueLoadSuccess;

  @override
  $Res call({
    Object? cpsIndexStream = freezed,
    Object? songsContainer = freezed,
  }) {
    return _then(QueueLoadSuccess(
      cpsIndexStream == freezed
          ? _value.cpsIndexStream
          : cpsIndexStream // ignore: cast_nullable_to_non_nullable
              as Stream<int?>,
      songsContainer == freezed
          ? _value.songsContainer
          : songsContainer // ignore: cast_nullable_to_non_nullable
              as SongsContainer,
    ));
  }
}

/// @nodoc

class _$QueueLoadSuccess implements QueueLoadSuccess {
  const _$QueueLoadSuccess(this.cpsIndexStream, this.songsContainer);

  @override
  final Stream<int?> cpsIndexStream;
  @override
  final SongsContainer songsContainer;

  @override
  String toString() {
    return 'QueueState.loadSuccess(cpsIndexStream: $cpsIndexStream, songsContainer: $songsContainer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is QueueLoadSuccess &&
            (identical(other.cpsIndexStream, cpsIndexStream) ||
                other.cpsIndexStream == cpsIndexStream) &&
            (identical(other.songsContainer, songsContainer) ||
                other.songsContainer == songsContainer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cpsIndexStream, songsContainer);

  @JsonKey(ignore: true)
  @override
  $QueueLoadSuccessCopyWith<QueueLoadSuccess> get copyWith =>
      _$QueueLoadSuccessCopyWithImpl<QueueLoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(
            Stream<int?> cpsIndexStream, SongsContainer songsContainer)
        loadSuccess,
  }) {
    return loadSuccess(cpsIndexStream, songsContainer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(
            Stream<int?> cpsIndexStream, SongsContainer songsContainer)?
        loadSuccess,
  }) {
    return loadSuccess?.call(cpsIndexStream, songsContainer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(
            Stream<int?> cpsIndexStream, SongsContainer songsContainer)?
        loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(cpsIndexStream, songsContainer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QueueInProgress value) inProgress,
    required TResult Function(QueueLoadSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QueueInProgress value)? inProgress,
    TResult Function(QueueLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QueueInProgress value)? inProgress,
    TResult Function(QueueLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class QueueLoadSuccess implements QueueState {
  const factory QueueLoadSuccess(
          Stream<int?> cpsIndexStream, SongsContainer songsContainer) =
      _$QueueLoadSuccess;

  Stream<int?> get cpsIndexStream;
  SongsContainer get songsContainer;
  @JsonKey(ignore: true)
  $QueueLoadSuccessCopyWith<QueueLoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
