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
  return DeltaSongs.fromJson(json);
}

/// @nodoc
class _$DeltaTearOff {
  const _$DeltaTearOff();

  DeltaSongs deltaSongs(
      {required Set<int> newSongsIds, required Set<int> deletedSongsIds}) {
    return DeltaSongs(
      newSongsIds: newSongsIds,
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
  Set<int> get newSongsIds => throw _privateConstructorUsedError;
  Set<int> get deletedSongsIds => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Set<int> newSongsIds, Set<int> deletedSongsIds)
        deltaSongs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Set<int> newSongsIds, Set<int> deletedSongsIds)?
        deltaSongs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Set<int> newSongsIds, Set<int> deletedSongsIds)?
        deltaSongs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeltaSongs value) deltaSongs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DeltaSongs value)? deltaSongs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeltaSongs value)? deltaSongs,
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
  $Res call({Set<int> newSongsIds, Set<int> deletedSongsIds});
}

/// @nodoc
class _$DeltaCopyWithImpl<$Res> implements $DeltaCopyWith<$Res> {
  _$DeltaCopyWithImpl(this._value, this._then);

  final Delta _value;
  // ignore: unused_field
  final $Res Function(Delta) _then;

  @override
  $Res call({
    Object? newSongsIds = freezed,
    Object? deletedSongsIds = freezed,
  }) {
    return _then(_value.copyWith(
      newSongsIds: newSongsIds == freezed
          ? _value.newSongsIds
          : newSongsIds // ignore: cast_nullable_to_non_nullable
              as Set<int>,
      deletedSongsIds: deletedSongsIds == freezed
          ? _value.deletedSongsIds
          : deletedSongsIds // ignore: cast_nullable_to_non_nullable
              as Set<int>,
    ));
  }
}

/// @nodoc
abstract class $DeltaSongsCopyWith<$Res> implements $DeltaCopyWith<$Res> {
  factory $DeltaSongsCopyWith(
          DeltaSongs value, $Res Function(DeltaSongs) then) =
      _$DeltaSongsCopyWithImpl<$Res>;
  @override
  $Res call({Set<int> newSongsIds, Set<int> deletedSongsIds});
}

/// @nodoc
class _$DeltaSongsCopyWithImpl<$Res> extends _$DeltaCopyWithImpl<$Res>
    implements $DeltaSongsCopyWith<$Res> {
  _$DeltaSongsCopyWithImpl(DeltaSongs _value, $Res Function(DeltaSongs) _then)
      : super(_value, (v) => _then(v as DeltaSongs));

  @override
  DeltaSongs get _value => super._value as DeltaSongs;

  @override
  $Res call({
    Object? newSongsIds = freezed,
    Object? deletedSongsIds = freezed,
  }) {
    return _then(DeltaSongs(
      newSongsIds: newSongsIds == freezed
          ? _value.newSongsIds
          : newSongsIds // ignore: cast_nullable_to_non_nullable
              as Set<int>,
      deletedSongsIds: deletedSongsIds == freezed
          ? _value.deletedSongsIds
          : deletedSongsIds // ignore: cast_nullable_to_non_nullable
              as Set<int>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$DeltaSongs implements DeltaSongs {
  const _$DeltaSongs(
      {required this.newSongsIds, required this.deletedSongsIds});

  factory _$DeltaSongs.fromJson(Map<String, dynamic> json) =>
      _$$DeltaSongsFromJson(json);

  @override
  final Set<int> newSongsIds;
  @override
  final Set<int> deletedSongsIds;

  @override
  String toString() {
    return 'Delta.deltaSongs(newSongsIds: $newSongsIds, deletedSongsIds: $deletedSongsIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeltaSongs &&
            (identical(other.newSongsIds, newSongsIds) ||
                const DeepCollectionEquality()
                    .equals(other.newSongsIds, newSongsIds)) &&
            (identical(other.deletedSongsIds, deletedSongsIds) ||
                const DeepCollectionEquality()
                    .equals(other.deletedSongsIds, deletedSongsIds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(newSongsIds) ^
      const DeepCollectionEquality().hash(deletedSongsIds);

  @JsonKey(ignore: true)
  @override
  $DeltaSongsCopyWith<DeltaSongs> get copyWith =>
      _$DeltaSongsCopyWithImpl<DeltaSongs>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Set<int> newSongsIds, Set<int> deletedSongsIds)
        deltaSongs,
  }) {
    return deltaSongs(newSongsIds, deletedSongsIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Set<int> newSongsIds, Set<int> deletedSongsIds)?
        deltaSongs,
  }) {
    return deltaSongs?.call(newSongsIds, deletedSongsIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Set<int> newSongsIds, Set<int> deletedSongsIds)?
        deltaSongs,
    required TResult orElse(),
  }) {
    if (deltaSongs != null) {
      return deltaSongs(newSongsIds, deletedSongsIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeltaSongs value) deltaSongs,
  }) {
    return deltaSongs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DeltaSongs value)? deltaSongs,
  }) {
    return deltaSongs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeltaSongs value)? deltaSongs,
    required TResult orElse(),
  }) {
    if (deltaSongs != null) {
      return deltaSongs(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DeltaSongsToJson(this);
  }
}

abstract class DeltaSongs implements Delta {
  const factory DeltaSongs(
      {required Set<int> newSongsIds,
      required Set<int> deletedSongsIds}) = _$DeltaSongs;

  factory DeltaSongs.fromJson(Map<String, dynamic> json) =
      _$DeltaSongs.fromJson;

  @override
  Set<int> get newSongsIds => throw _privateConstructorUsedError;
  @override
  Set<int> get deletedSongsIds => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $DeltaSongsCopyWith<DeltaSongs> get copyWith =>
      throw _privateConstructorUsedError;
}
