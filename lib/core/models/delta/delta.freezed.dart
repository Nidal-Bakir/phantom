// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'delta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Delta _$DeltaFromJson(Map<String, dynamic> json) {
  return SongsDelta.fromJson(json);
}

/// @nodoc
class _$DeltaTearOff {
  const _$DeltaTearOff();

  SongsDelta songsDelta(
      {required List<Song> newSongs, required Set<int> deletedSongsIds}) {
    return SongsDelta(
      newSongs: newSongs,
      deletedSongsIds: deletedSongsIds,
    );
  }

  Delta fromJson(Map<String, Object> json) {
    return Delta.fromJson(json);
  }
}

/// @nodoc
const $Delta = _$DeltaTearOff();

/// @nodoc
mixin _$Delta {
  List<Song> get newSongs => throw _privateConstructorUsedError;
  Set<int> get deletedSongsIds => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Song> newSongs, Set<int> deletedSongsIds)
        songsDelta,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Song> newSongs, Set<int> deletedSongsIds)? songsDelta,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Song> newSongs, Set<int> deletedSongsIds)? songsDelta,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SongsDelta value) songsDelta,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SongsDelta value)? songsDelta,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SongsDelta value)? songsDelta,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeltaCopyWith<Delta> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeltaCopyWith<$Res> {
  factory $DeltaCopyWith(Delta value, $Res Function(Delta) then) =
      _$DeltaCopyWithImpl<$Res>;
  $Res call({List<Song> newSongs, Set<int> deletedSongsIds});
}

/// @nodoc
class _$DeltaCopyWithImpl<$Res> implements $DeltaCopyWith<$Res> {
  _$DeltaCopyWithImpl(this._value, this._then);

  final Delta _value;
  // ignore: unused_field
  final $Res Function(Delta) _then;

  @override
  $Res call({
    Object? newSongs = freezed,
    Object? deletedSongsIds = freezed,
  }) {
    return _then(_value.copyWith(
      newSongs: newSongs == freezed
          ? _value.newSongs
          : newSongs // ignore: cast_nullable_to_non_nullable
              as List<Song>,
      deletedSongsIds: deletedSongsIds == freezed
          ? _value.deletedSongsIds
          : deletedSongsIds // ignore: cast_nullable_to_non_nullable
              as Set<int>,
    ));
  }
}

/// @nodoc
abstract class $SongsDeltaCopyWith<$Res> implements $DeltaCopyWith<$Res> {
  factory $SongsDeltaCopyWith(
          SongsDelta value, $Res Function(SongsDelta) then) =
      _$SongsDeltaCopyWithImpl<$Res>;
  @override
  $Res call({List<Song> newSongs, Set<int> deletedSongsIds});
}

/// @nodoc
class _$SongsDeltaCopyWithImpl<$Res> extends _$DeltaCopyWithImpl<$Res>
    implements $SongsDeltaCopyWith<$Res> {
  _$SongsDeltaCopyWithImpl(SongsDelta _value, $Res Function(SongsDelta) _then)
      : super(_value, (v) => _then(v as SongsDelta));

  @override
  SongsDelta get _value => super._value as SongsDelta;

  @override
  $Res call({
    Object? newSongs = freezed,
    Object? deletedSongsIds = freezed,
  }) {
    return _then(SongsDelta(
      newSongs: newSongs == freezed
          ? _value.newSongs
          : newSongs // ignore: cast_nullable_to_non_nullable
              as List<Song>,
      deletedSongsIds: deletedSongsIds == freezed
          ? _value.deletedSongsIds
          : deletedSongsIds // ignore: cast_nullable_to_non_nullable
              as Set<int>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SongsDelta implements SongsDelta {
  const _$SongsDelta({required this.newSongs, required this.deletedSongsIds});

  factory _$SongsDelta.fromJson(Map<String, dynamic> json) =>
      _$$SongsDeltaFromJson(json);

  @override
  final List<Song> newSongs;
  @override
  final Set<int> deletedSongsIds;

  @override
  String toString() {
    return 'Delta.songsDelta(newSongs: $newSongs, deletedSongsIds: $deletedSongsIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SongsDelta &&
            (identical(other.newSongs, newSongs) ||
                const DeepCollectionEquality()
                    .equals(other.newSongs, newSongs)) &&
            (identical(other.deletedSongsIds, deletedSongsIds) ||
                const DeepCollectionEquality()
                    .equals(other.deletedSongsIds, deletedSongsIds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(newSongs) ^
      const DeepCollectionEquality().hash(deletedSongsIds);

  @JsonKey(ignore: true)
  @override
  $SongsDeltaCopyWith<SongsDelta> get copyWith =>
      _$SongsDeltaCopyWithImpl<SongsDelta>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Song> newSongs, Set<int> deletedSongsIds)
        songsDelta,
  }) {
    return songsDelta(newSongs, deletedSongsIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Song> newSongs, Set<int> deletedSongsIds)? songsDelta,
  }) {
    return songsDelta?.call(newSongs, deletedSongsIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Song> newSongs, Set<int> deletedSongsIds)? songsDelta,
    required TResult orElse(),
  }) {
    if (songsDelta != null) {
      return songsDelta(newSongs, deletedSongsIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SongsDelta value) songsDelta,
  }) {
    return songsDelta(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SongsDelta value)? songsDelta,
  }) {
    return songsDelta?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SongsDelta value)? songsDelta,
    required TResult orElse(),
  }) {
    if (songsDelta != null) {
      return songsDelta(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SongsDeltaToJson(this);
  }
}

abstract class SongsDelta implements Delta {
  const factory SongsDelta(
      {required List<Song> newSongs,
      required Set<int> deletedSongsIds}) = _$SongsDelta;

  factory SongsDelta.fromJson(Map<String, dynamic> json) =
      _$SongsDelta.fromJson;

  @override
  List<Song> get newSongs => throw _privateConstructorUsedError;
  @override
  Set<int> get deletedSongsIds => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $SongsDeltaCopyWith<SongsDelta> get copyWith =>
      throw _privateConstructorUsedError;
}
