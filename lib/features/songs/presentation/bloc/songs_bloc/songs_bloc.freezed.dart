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

  SongsLoaded songsLoaded({required Sort sort}) {
    return SongsLoaded(
      sort: sort,
    );
  }

  SongsSorted songsSorted({required Sort sort}) {
    return SongsSorted(
      sort: sort,
    );
  }

  SongsRefreshed songsRefreshed({bool fromDevice = false}) {
    return SongsRefreshed(
      fromDevice: fromDevice,
    );
  }

  SongsAdded songsAdded(List<Song> newSongs) {
    return SongsAdded(
      newSongs,
    );
  }

  SongsDeleted songsDeleted(Set<int> deletedSongsIds) {
    return SongsDeleted(
      deletedSongsIds,
    );
  }

  SongsUpdated songsUpdated(List<Song> updatedSongs) {
    return SongsUpdated(
      updatedSongs,
    );
  }
}

/// @nodoc
const $SongsEvent = _$SongsEventTearOff();

/// @nodoc
mixin _$SongsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Sort sort) songsLoaded,
    required TResult Function(Sort sort) songsSorted,
    required TResult Function(bool fromDevice) songsRefreshed,
    required TResult Function(List<Song> newSongs) songsAdded,
    required TResult Function(Set<int> deletedSongsIds) songsDeleted,
    required TResult Function(List<Song> updatedSongs) songsUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Sort sort)? songsLoaded,
    TResult Function(Sort sort)? songsSorted,
    TResult Function(bool fromDevice)? songsRefreshed,
    TResult Function(List<Song> newSongs)? songsAdded,
    TResult Function(Set<int> deletedSongsIds)? songsDeleted,
    TResult Function(List<Song> updatedSongs)? songsUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Sort sort)? songsLoaded,
    TResult Function(Sort sort)? songsSorted,
    TResult Function(bool fromDevice)? songsRefreshed,
    TResult Function(List<Song> newSongs)? songsAdded,
    TResult Function(Set<int> deletedSongsIds)? songsDeleted,
    TResult Function(List<Song> updatedSongs)? songsUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SongsLoaded value) songsLoaded,
    required TResult Function(SongsSorted value) songsSorted,
    required TResult Function(SongsRefreshed value) songsRefreshed,
    required TResult Function(SongsAdded value) songsAdded,
    required TResult Function(SongsDeleted value) songsDeleted,
    required TResult Function(SongsUpdated value) songsUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SongsLoaded value)? songsLoaded,
    TResult Function(SongsSorted value)? songsSorted,
    TResult Function(SongsRefreshed value)? songsRefreshed,
    TResult Function(SongsAdded value)? songsAdded,
    TResult Function(SongsDeleted value)? songsDeleted,
    TResult Function(SongsUpdated value)? songsUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SongsLoaded value)? songsLoaded,
    TResult Function(SongsSorted value)? songsSorted,
    TResult Function(SongsRefreshed value)? songsRefreshed,
    TResult Function(SongsAdded value)? songsAdded,
    TResult Function(SongsDeleted value)? songsDeleted,
    TResult Function(SongsUpdated value)? songsUpdated,
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
  $Res call({Sort sort});
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
    Object? sort = freezed,
  }) {
    return _then(SongsLoaded(
      sort: sort == freezed
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as Sort,
    ));
  }
}

/// @nodoc

class _$SongsLoaded implements SongsLoaded {
  const _$SongsLoaded({required this.sort});

  @override
  final Sort sort;

  @override
  String toString() {
    return 'SongsEvent.songsLoaded(sort: $sort)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SongsLoaded &&
            (identical(other.sort, sort) || other.sort == sort));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sort);

  @JsonKey(ignore: true)
  @override
  $SongsLoadedCopyWith<SongsLoaded> get copyWith =>
      _$SongsLoadedCopyWithImpl<SongsLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Sort sort) songsLoaded,
    required TResult Function(Sort sort) songsSorted,
    required TResult Function(bool fromDevice) songsRefreshed,
    required TResult Function(List<Song> newSongs) songsAdded,
    required TResult Function(Set<int> deletedSongsIds) songsDeleted,
    required TResult Function(List<Song> updatedSongs) songsUpdated,
  }) {
    return songsLoaded(sort);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Sort sort)? songsLoaded,
    TResult Function(Sort sort)? songsSorted,
    TResult Function(bool fromDevice)? songsRefreshed,
    TResult Function(List<Song> newSongs)? songsAdded,
    TResult Function(Set<int> deletedSongsIds)? songsDeleted,
    TResult Function(List<Song> updatedSongs)? songsUpdated,
  }) {
    return songsLoaded?.call(sort);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Sort sort)? songsLoaded,
    TResult Function(Sort sort)? songsSorted,
    TResult Function(bool fromDevice)? songsRefreshed,
    TResult Function(List<Song> newSongs)? songsAdded,
    TResult Function(Set<int> deletedSongsIds)? songsDeleted,
    TResult Function(List<Song> updatedSongs)? songsUpdated,
    required TResult orElse(),
  }) {
    if (songsLoaded != null) {
      return songsLoaded(sort);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SongsLoaded value) songsLoaded,
    required TResult Function(SongsSorted value) songsSorted,
    required TResult Function(SongsRefreshed value) songsRefreshed,
    required TResult Function(SongsAdded value) songsAdded,
    required TResult Function(SongsDeleted value) songsDeleted,
    required TResult Function(SongsUpdated value) songsUpdated,
  }) {
    return songsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SongsLoaded value)? songsLoaded,
    TResult Function(SongsSorted value)? songsSorted,
    TResult Function(SongsRefreshed value)? songsRefreshed,
    TResult Function(SongsAdded value)? songsAdded,
    TResult Function(SongsDeleted value)? songsDeleted,
    TResult Function(SongsUpdated value)? songsUpdated,
  }) {
    return songsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SongsLoaded value)? songsLoaded,
    TResult Function(SongsSorted value)? songsSorted,
    TResult Function(SongsRefreshed value)? songsRefreshed,
    TResult Function(SongsAdded value)? songsAdded,
    TResult Function(SongsDeleted value)? songsDeleted,
    TResult Function(SongsUpdated value)? songsUpdated,
    required TResult orElse(),
  }) {
    if (songsLoaded != null) {
      return songsLoaded(this);
    }
    return orElse();
  }
}

abstract class SongsLoaded implements SongsEvent {
  const factory SongsLoaded({required Sort sort}) = _$SongsLoaded;

  Sort get sort;
  @JsonKey(ignore: true)
  $SongsLoadedCopyWith<SongsLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongsSortedCopyWith<$Res> {
  factory $SongsSortedCopyWith(
          SongsSorted value, $Res Function(SongsSorted) then) =
      _$SongsSortedCopyWithImpl<$Res>;
  $Res call({Sort sort});
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
    Object? sort = freezed,
  }) {
    return _then(SongsSorted(
      sort: sort == freezed
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as Sort,
    ));
  }
}

/// @nodoc

class _$SongsSorted implements SongsSorted {
  const _$SongsSorted({required this.sort});

  @override
  final Sort sort;

  @override
  String toString() {
    return 'SongsEvent.songsSorted(sort: $sort)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SongsSorted &&
            (identical(other.sort, sort) || other.sort == sort));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sort);

  @JsonKey(ignore: true)
  @override
  $SongsSortedCopyWith<SongsSorted> get copyWith =>
      _$SongsSortedCopyWithImpl<SongsSorted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Sort sort) songsLoaded,
    required TResult Function(Sort sort) songsSorted,
    required TResult Function(bool fromDevice) songsRefreshed,
    required TResult Function(List<Song> newSongs) songsAdded,
    required TResult Function(Set<int> deletedSongsIds) songsDeleted,
    required TResult Function(List<Song> updatedSongs) songsUpdated,
  }) {
    return songsSorted(sort);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Sort sort)? songsLoaded,
    TResult Function(Sort sort)? songsSorted,
    TResult Function(bool fromDevice)? songsRefreshed,
    TResult Function(List<Song> newSongs)? songsAdded,
    TResult Function(Set<int> deletedSongsIds)? songsDeleted,
    TResult Function(List<Song> updatedSongs)? songsUpdated,
  }) {
    return songsSorted?.call(sort);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Sort sort)? songsLoaded,
    TResult Function(Sort sort)? songsSorted,
    TResult Function(bool fromDevice)? songsRefreshed,
    TResult Function(List<Song> newSongs)? songsAdded,
    TResult Function(Set<int> deletedSongsIds)? songsDeleted,
    TResult Function(List<Song> updatedSongs)? songsUpdated,
    required TResult orElse(),
  }) {
    if (songsSorted != null) {
      return songsSorted(sort);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SongsLoaded value) songsLoaded,
    required TResult Function(SongsSorted value) songsSorted,
    required TResult Function(SongsRefreshed value) songsRefreshed,
    required TResult Function(SongsAdded value) songsAdded,
    required TResult Function(SongsDeleted value) songsDeleted,
    required TResult Function(SongsUpdated value) songsUpdated,
  }) {
    return songsSorted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SongsLoaded value)? songsLoaded,
    TResult Function(SongsSorted value)? songsSorted,
    TResult Function(SongsRefreshed value)? songsRefreshed,
    TResult Function(SongsAdded value)? songsAdded,
    TResult Function(SongsDeleted value)? songsDeleted,
    TResult Function(SongsUpdated value)? songsUpdated,
  }) {
    return songsSorted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SongsLoaded value)? songsLoaded,
    TResult Function(SongsSorted value)? songsSorted,
    TResult Function(SongsRefreshed value)? songsRefreshed,
    TResult Function(SongsAdded value)? songsAdded,
    TResult Function(SongsDeleted value)? songsDeleted,
    TResult Function(SongsUpdated value)? songsUpdated,
    required TResult orElse(),
  }) {
    if (songsSorted != null) {
      return songsSorted(this);
    }
    return orElse();
  }
}

abstract class SongsSorted implements SongsEvent {
  const factory SongsSorted({required Sort sort}) = _$SongsSorted;

  Sort get sort;
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
        (other.runtimeType == runtimeType &&
            other is SongsRefreshed &&
            (identical(other.fromDevice, fromDevice) ||
                other.fromDevice == fromDevice));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fromDevice);

  @JsonKey(ignore: true)
  @override
  $SongsRefreshedCopyWith<SongsRefreshed> get copyWith =>
      _$SongsRefreshedCopyWithImpl<SongsRefreshed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Sort sort) songsLoaded,
    required TResult Function(Sort sort) songsSorted,
    required TResult Function(bool fromDevice) songsRefreshed,
    required TResult Function(List<Song> newSongs) songsAdded,
    required TResult Function(Set<int> deletedSongsIds) songsDeleted,
    required TResult Function(List<Song> updatedSongs) songsUpdated,
  }) {
    return songsRefreshed(fromDevice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Sort sort)? songsLoaded,
    TResult Function(Sort sort)? songsSorted,
    TResult Function(bool fromDevice)? songsRefreshed,
    TResult Function(List<Song> newSongs)? songsAdded,
    TResult Function(Set<int> deletedSongsIds)? songsDeleted,
    TResult Function(List<Song> updatedSongs)? songsUpdated,
  }) {
    return songsRefreshed?.call(fromDevice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Sort sort)? songsLoaded,
    TResult Function(Sort sort)? songsSorted,
    TResult Function(bool fromDevice)? songsRefreshed,
    TResult Function(List<Song> newSongs)? songsAdded,
    TResult Function(Set<int> deletedSongsIds)? songsDeleted,
    TResult Function(List<Song> updatedSongs)? songsUpdated,
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
    required TResult Function(SongsAdded value) songsAdded,
    required TResult Function(SongsDeleted value) songsDeleted,
    required TResult Function(SongsUpdated value) songsUpdated,
  }) {
    return songsRefreshed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SongsLoaded value)? songsLoaded,
    TResult Function(SongsSorted value)? songsSorted,
    TResult Function(SongsRefreshed value)? songsRefreshed,
    TResult Function(SongsAdded value)? songsAdded,
    TResult Function(SongsDeleted value)? songsDeleted,
    TResult Function(SongsUpdated value)? songsUpdated,
  }) {
    return songsRefreshed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SongsLoaded value)? songsLoaded,
    TResult Function(SongsSorted value)? songsSorted,
    TResult Function(SongsRefreshed value)? songsRefreshed,
    TResult Function(SongsAdded value)? songsAdded,
    TResult Function(SongsDeleted value)? songsDeleted,
    TResult Function(SongsUpdated value)? songsUpdated,
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

  bool get fromDevice;
  @JsonKey(ignore: true)
  $SongsRefreshedCopyWith<SongsRefreshed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongsAddedCopyWith<$Res> {
  factory $SongsAddedCopyWith(
          SongsAdded value, $Res Function(SongsAdded) then) =
      _$SongsAddedCopyWithImpl<$Res>;
  $Res call({List<Song> newSongs});
}

/// @nodoc
class _$SongsAddedCopyWithImpl<$Res> extends _$SongsEventCopyWithImpl<$Res>
    implements $SongsAddedCopyWith<$Res> {
  _$SongsAddedCopyWithImpl(SongsAdded _value, $Res Function(SongsAdded) _then)
      : super(_value, (v) => _then(v as SongsAdded));

  @override
  SongsAdded get _value => super._value as SongsAdded;

  @override
  $Res call({
    Object? newSongs = freezed,
  }) {
    return _then(SongsAdded(
      newSongs == freezed
          ? _value.newSongs
          : newSongs // ignore: cast_nullable_to_non_nullable
              as List<Song>,
    ));
  }
}

/// @nodoc

class _$SongsAdded implements SongsAdded {
  const _$SongsAdded(this.newSongs);

  @override
  final List<Song> newSongs;

  @override
  String toString() {
    return 'SongsEvent.songsAdded(newSongs: $newSongs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SongsAdded &&
            const DeepCollectionEquality().equals(other.newSongs, newSongs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(newSongs));

  @JsonKey(ignore: true)
  @override
  $SongsAddedCopyWith<SongsAdded> get copyWith =>
      _$SongsAddedCopyWithImpl<SongsAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Sort sort) songsLoaded,
    required TResult Function(Sort sort) songsSorted,
    required TResult Function(bool fromDevice) songsRefreshed,
    required TResult Function(List<Song> newSongs) songsAdded,
    required TResult Function(Set<int> deletedSongsIds) songsDeleted,
    required TResult Function(List<Song> updatedSongs) songsUpdated,
  }) {
    return songsAdded(newSongs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Sort sort)? songsLoaded,
    TResult Function(Sort sort)? songsSorted,
    TResult Function(bool fromDevice)? songsRefreshed,
    TResult Function(List<Song> newSongs)? songsAdded,
    TResult Function(Set<int> deletedSongsIds)? songsDeleted,
    TResult Function(List<Song> updatedSongs)? songsUpdated,
  }) {
    return songsAdded?.call(newSongs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Sort sort)? songsLoaded,
    TResult Function(Sort sort)? songsSorted,
    TResult Function(bool fromDevice)? songsRefreshed,
    TResult Function(List<Song> newSongs)? songsAdded,
    TResult Function(Set<int> deletedSongsIds)? songsDeleted,
    TResult Function(List<Song> updatedSongs)? songsUpdated,
    required TResult orElse(),
  }) {
    if (songsAdded != null) {
      return songsAdded(newSongs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SongsLoaded value) songsLoaded,
    required TResult Function(SongsSorted value) songsSorted,
    required TResult Function(SongsRefreshed value) songsRefreshed,
    required TResult Function(SongsAdded value) songsAdded,
    required TResult Function(SongsDeleted value) songsDeleted,
    required TResult Function(SongsUpdated value) songsUpdated,
  }) {
    return songsAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SongsLoaded value)? songsLoaded,
    TResult Function(SongsSorted value)? songsSorted,
    TResult Function(SongsRefreshed value)? songsRefreshed,
    TResult Function(SongsAdded value)? songsAdded,
    TResult Function(SongsDeleted value)? songsDeleted,
    TResult Function(SongsUpdated value)? songsUpdated,
  }) {
    return songsAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SongsLoaded value)? songsLoaded,
    TResult Function(SongsSorted value)? songsSorted,
    TResult Function(SongsRefreshed value)? songsRefreshed,
    TResult Function(SongsAdded value)? songsAdded,
    TResult Function(SongsDeleted value)? songsDeleted,
    TResult Function(SongsUpdated value)? songsUpdated,
    required TResult orElse(),
  }) {
    if (songsAdded != null) {
      return songsAdded(this);
    }
    return orElse();
  }
}

abstract class SongsAdded implements SongsEvent {
  const factory SongsAdded(List<Song> newSongs) = _$SongsAdded;

  List<Song> get newSongs;
  @JsonKey(ignore: true)
  $SongsAddedCopyWith<SongsAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongsDeletedCopyWith<$Res> {
  factory $SongsDeletedCopyWith(
          SongsDeleted value, $Res Function(SongsDeleted) then) =
      _$SongsDeletedCopyWithImpl<$Res>;
  $Res call({Set<int> deletedSongsIds});
}

/// @nodoc
class _$SongsDeletedCopyWithImpl<$Res> extends _$SongsEventCopyWithImpl<$Res>
    implements $SongsDeletedCopyWith<$Res> {
  _$SongsDeletedCopyWithImpl(
      SongsDeleted _value, $Res Function(SongsDeleted) _then)
      : super(_value, (v) => _then(v as SongsDeleted));

  @override
  SongsDeleted get _value => super._value as SongsDeleted;

  @override
  $Res call({
    Object? deletedSongsIds = freezed,
  }) {
    return _then(SongsDeleted(
      deletedSongsIds == freezed
          ? _value.deletedSongsIds
          : deletedSongsIds // ignore: cast_nullable_to_non_nullable
              as Set<int>,
    ));
  }
}

/// @nodoc

class _$SongsDeleted implements SongsDeleted {
  const _$SongsDeleted(this.deletedSongsIds);

  @override
  final Set<int> deletedSongsIds;

  @override
  String toString() {
    return 'SongsEvent.songsDeleted(deletedSongsIds: $deletedSongsIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SongsDeleted &&
            const DeepCollectionEquality()
                .equals(other.deletedSongsIds, deletedSongsIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(deletedSongsIds));

  @JsonKey(ignore: true)
  @override
  $SongsDeletedCopyWith<SongsDeleted> get copyWith =>
      _$SongsDeletedCopyWithImpl<SongsDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Sort sort) songsLoaded,
    required TResult Function(Sort sort) songsSorted,
    required TResult Function(bool fromDevice) songsRefreshed,
    required TResult Function(List<Song> newSongs) songsAdded,
    required TResult Function(Set<int> deletedSongsIds) songsDeleted,
    required TResult Function(List<Song> updatedSongs) songsUpdated,
  }) {
    return songsDeleted(deletedSongsIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Sort sort)? songsLoaded,
    TResult Function(Sort sort)? songsSorted,
    TResult Function(bool fromDevice)? songsRefreshed,
    TResult Function(List<Song> newSongs)? songsAdded,
    TResult Function(Set<int> deletedSongsIds)? songsDeleted,
    TResult Function(List<Song> updatedSongs)? songsUpdated,
  }) {
    return songsDeleted?.call(deletedSongsIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Sort sort)? songsLoaded,
    TResult Function(Sort sort)? songsSorted,
    TResult Function(bool fromDevice)? songsRefreshed,
    TResult Function(List<Song> newSongs)? songsAdded,
    TResult Function(Set<int> deletedSongsIds)? songsDeleted,
    TResult Function(List<Song> updatedSongs)? songsUpdated,
    required TResult orElse(),
  }) {
    if (songsDeleted != null) {
      return songsDeleted(deletedSongsIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SongsLoaded value) songsLoaded,
    required TResult Function(SongsSorted value) songsSorted,
    required TResult Function(SongsRefreshed value) songsRefreshed,
    required TResult Function(SongsAdded value) songsAdded,
    required TResult Function(SongsDeleted value) songsDeleted,
    required TResult Function(SongsUpdated value) songsUpdated,
  }) {
    return songsDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SongsLoaded value)? songsLoaded,
    TResult Function(SongsSorted value)? songsSorted,
    TResult Function(SongsRefreshed value)? songsRefreshed,
    TResult Function(SongsAdded value)? songsAdded,
    TResult Function(SongsDeleted value)? songsDeleted,
    TResult Function(SongsUpdated value)? songsUpdated,
  }) {
    return songsDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SongsLoaded value)? songsLoaded,
    TResult Function(SongsSorted value)? songsSorted,
    TResult Function(SongsRefreshed value)? songsRefreshed,
    TResult Function(SongsAdded value)? songsAdded,
    TResult Function(SongsDeleted value)? songsDeleted,
    TResult Function(SongsUpdated value)? songsUpdated,
    required TResult orElse(),
  }) {
    if (songsDeleted != null) {
      return songsDeleted(this);
    }
    return orElse();
  }
}

abstract class SongsDeleted implements SongsEvent {
  const factory SongsDeleted(Set<int> deletedSongsIds) = _$SongsDeleted;

  Set<int> get deletedSongsIds;
  @JsonKey(ignore: true)
  $SongsDeletedCopyWith<SongsDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongsUpdatedCopyWith<$Res> {
  factory $SongsUpdatedCopyWith(
          SongsUpdated value, $Res Function(SongsUpdated) then) =
      _$SongsUpdatedCopyWithImpl<$Res>;
  $Res call({List<Song> updatedSongs});
}

/// @nodoc
class _$SongsUpdatedCopyWithImpl<$Res> extends _$SongsEventCopyWithImpl<$Res>
    implements $SongsUpdatedCopyWith<$Res> {
  _$SongsUpdatedCopyWithImpl(
      SongsUpdated _value, $Res Function(SongsUpdated) _then)
      : super(_value, (v) => _then(v as SongsUpdated));

  @override
  SongsUpdated get _value => super._value as SongsUpdated;

  @override
  $Res call({
    Object? updatedSongs = freezed,
  }) {
    return _then(SongsUpdated(
      updatedSongs == freezed
          ? _value.updatedSongs
          : updatedSongs // ignore: cast_nullable_to_non_nullable
              as List<Song>,
    ));
  }
}

/// @nodoc

class _$SongsUpdated implements SongsUpdated {
  const _$SongsUpdated(this.updatedSongs);

  @override
  final List<Song> updatedSongs;

  @override
  String toString() {
    return 'SongsEvent.songsUpdated(updatedSongs: $updatedSongs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SongsUpdated &&
            const DeepCollectionEquality()
                .equals(other.updatedSongs, updatedSongs));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(updatedSongs));

  @JsonKey(ignore: true)
  @override
  $SongsUpdatedCopyWith<SongsUpdated> get copyWith =>
      _$SongsUpdatedCopyWithImpl<SongsUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Sort sort) songsLoaded,
    required TResult Function(Sort sort) songsSorted,
    required TResult Function(bool fromDevice) songsRefreshed,
    required TResult Function(List<Song> newSongs) songsAdded,
    required TResult Function(Set<int> deletedSongsIds) songsDeleted,
    required TResult Function(List<Song> updatedSongs) songsUpdated,
  }) {
    return songsUpdated(updatedSongs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Sort sort)? songsLoaded,
    TResult Function(Sort sort)? songsSorted,
    TResult Function(bool fromDevice)? songsRefreshed,
    TResult Function(List<Song> newSongs)? songsAdded,
    TResult Function(Set<int> deletedSongsIds)? songsDeleted,
    TResult Function(List<Song> updatedSongs)? songsUpdated,
  }) {
    return songsUpdated?.call(updatedSongs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Sort sort)? songsLoaded,
    TResult Function(Sort sort)? songsSorted,
    TResult Function(bool fromDevice)? songsRefreshed,
    TResult Function(List<Song> newSongs)? songsAdded,
    TResult Function(Set<int> deletedSongsIds)? songsDeleted,
    TResult Function(List<Song> updatedSongs)? songsUpdated,
    required TResult orElse(),
  }) {
    if (songsUpdated != null) {
      return songsUpdated(updatedSongs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SongsLoaded value) songsLoaded,
    required TResult Function(SongsSorted value) songsSorted,
    required TResult Function(SongsRefreshed value) songsRefreshed,
    required TResult Function(SongsAdded value) songsAdded,
    required TResult Function(SongsDeleted value) songsDeleted,
    required TResult Function(SongsUpdated value) songsUpdated,
  }) {
    return songsUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SongsLoaded value)? songsLoaded,
    TResult Function(SongsSorted value)? songsSorted,
    TResult Function(SongsRefreshed value)? songsRefreshed,
    TResult Function(SongsAdded value)? songsAdded,
    TResult Function(SongsDeleted value)? songsDeleted,
    TResult Function(SongsUpdated value)? songsUpdated,
  }) {
    return songsUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SongsLoaded value)? songsLoaded,
    TResult Function(SongsSorted value)? songsSorted,
    TResult Function(SongsRefreshed value)? songsRefreshed,
    TResult Function(SongsAdded value)? songsAdded,
    TResult Function(SongsDeleted value)? songsDeleted,
    TResult Function(SongsUpdated value)? songsUpdated,
    required TResult orElse(),
  }) {
    if (songsUpdated != null) {
      return songsUpdated(this);
    }
    return orElse();
  }
}

abstract class SongsUpdated implements SongsEvent {
  const factory SongsUpdated(List<Song> updatedSongs) = _$SongsUpdated;

  List<Song> get updatedSongs;
  @JsonKey(ignore: true)
  $SongsUpdatedCopyWith<SongsUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SongsStateTearOff {
  const _$SongsStateTearOff();

  SongsInProgress inProgress() {
    return const SongsInProgress();
  }

  SongsLoadSuccess songLoadSuccess(
      {required Sort sort, required dynamic songsContainer}) {
    return SongsLoadSuccess(
      sort: sort,
      songsContainer: songsContainer,
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
    required TResult Function(Sort sort, dynamic songsContainer)
        songLoadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(Sort sort, dynamic songsContainer)? songLoadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(Sort sort, dynamic songsContainer)? songLoadSuccess,
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SongsInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(Sort sort, dynamic songsContainer)
        songLoadSuccess,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(Sort sort, dynamic songsContainer)? songLoadSuccess,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(Sort sort, dynamic songsContainer)? songLoadSuccess,
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
  $Res call({Sort sort, dynamic songsContainer});
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
    Object? sort = freezed,
    Object? songsContainer = freezed,
  }) {
    return _then(SongsLoadSuccess(
      sort: sort == freezed
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as Sort,
      songsContainer:
          songsContainer == freezed ? _value.songsContainer : songsContainer,
    ));
  }
}

/// @nodoc

class _$SongsLoadSuccess implements SongsLoadSuccess {
  const _$SongsLoadSuccess({required this.sort, required this.songsContainer});

  @override
  final Sort sort;
  @override
  final dynamic songsContainer;

  @override
  String toString() {
    return 'SongsState.songLoadSuccess(sort: $sort, songsContainer: $songsContainer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SongsLoadSuccess &&
            (identical(other.sort, sort) || other.sort == sort) &&
            const DeepCollectionEquality()
                .equals(other.songsContainer, songsContainer));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, sort, const DeepCollectionEquality().hash(songsContainer));

  @JsonKey(ignore: true)
  @override
  $SongsLoadSuccessCopyWith<SongsLoadSuccess> get copyWith =>
      _$SongsLoadSuccessCopyWithImpl<SongsLoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(Sort sort, dynamic songsContainer)
        songLoadSuccess,
  }) {
    return songLoadSuccess(sort, songsContainer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(Sort sort, dynamic songsContainer)? songLoadSuccess,
  }) {
    return songLoadSuccess?.call(sort, songsContainer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(Sort sort, dynamic songsContainer)? songLoadSuccess,
    required TResult orElse(),
  }) {
    if (songLoadSuccess != null) {
      return songLoadSuccess(sort, songsContainer);
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
      {required Sort sort,
      required dynamic songsContainer}) = _$SongsLoadSuccess;

  Sort get sort;
  dynamic get songsContainer;
  @JsonKey(ignore: true)
  $SongsLoadSuccessCopyWith<SongsLoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
