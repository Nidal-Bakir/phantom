// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'currently_playing_song.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrentlyPlayingSong _$CurrentlyPlayingSongFromJson(Map<String, dynamic> json) {
  return _CurrentlyPlayingSong.fromJson(json);
}

/// @nodoc
class _$CurrentlyPlayingSongTearOff {
  const _$CurrentlyPlayingSongTearOff();

  _CurrentlyPlayingSong call(Duration currentPlayPosition, String songPath) {
    return _CurrentlyPlayingSong(
      currentPlayPosition,
      songPath,
    );
  }

  CurrentlyPlayingSong fromJson(Map<String, Object?> json) {
    return CurrentlyPlayingSong.fromJson(json);
  }
}

/// @nodoc
const $CurrentlyPlayingSong = _$CurrentlyPlayingSongTearOff();

/// @nodoc
mixin _$CurrentlyPlayingSong {
  Duration get currentPlayPosition => throw _privateConstructorUsedError;
  String get songPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentlyPlayingSongCopyWith<CurrentlyPlayingSong> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentlyPlayingSongCopyWith<$Res> {
  factory $CurrentlyPlayingSongCopyWith(CurrentlyPlayingSong value,
          $Res Function(CurrentlyPlayingSong) then) =
      _$CurrentlyPlayingSongCopyWithImpl<$Res>;
  $Res call({Duration currentPlayPosition, String songPath});
}

/// @nodoc
class _$CurrentlyPlayingSongCopyWithImpl<$Res>
    implements $CurrentlyPlayingSongCopyWith<$Res> {
  _$CurrentlyPlayingSongCopyWithImpl(this._value, this._then);

  final CurrentlyPlayingSong _value;
  // ignore: unused_field
  final $Res Function(CurrentlyPlayingSong) _then;

  @override
  $Res call({
    Object? currentPlayPosition = freezed,
    Object? songPath = freezed,
  }) {
    return _then(_value.copyWith(
      currentPlayPosition: currentPlayPosition == freezed
          ? _value.currentPlayPosition
          : currentPlayPosition // ignore: cast_nullable_to_non_nullable
              as Duration,
      songPath: songPath == freezed
          ? _value.songPath
          : songPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CurrentlyPlayingSongCopyWith<$Res>
    implements $CurrentlyPlayingSongCopyWith<$Res> {
  factory _$CurrentlyPlayingSongCopyWith(_CurrentlyPlayingSong value,
          $Res Function(_CurrentlyPlayingSong) then) =
      __$CurrentlyPlayingSongCopyWithImpl<$Res>;
  @override
  $Res call({Duration currentPlayPosition, String songPath});
}

/// @nodoc
class __$CurrentlyPlayingSongCopyWithImpl<$Res>
    extends _$CurrentlyPlayingSongCopyWithImpl<$Res>
    implements _$CurrentlyPlayingSongCopyWith<$Res> {
  __$CurrentlyPlayingSongCopyWithImpl(
      _CurrentlyPlayingSong _value, $Res Function(_CurrentlyPlayingSong) _then)
      : super(_value, (v) => _then(v as _CurrentlyPlayingSong));

  @override
  _CurrentlyPlayingSong get _value => super._value as _CurrentlyPlayingSong;

  @override
  $Res call({
    Object? currentPlayPosition = freezed,
    Object? songPath = freezed,
  }) {
    return _then(_CurrentlyPlayingSong(
      currentPlayPosition == freezed
          ? _value.currentPlayPosition
          : currentPlayPosition // ignore: cast_nullable_to_non_nullable
              as Duration,
      songPath == freezed
          ? _value.songPath
          : songPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CurrentlyPlayingSong implements _CurrentlyPlayingSong {
  const _$_CurrentlyPlayingSong(this.currentPlayPosition, this.songPath);

  factory _$_CurrentlyPlayingSong.fromJson(Map<String, dynamic> json) =>
      _$$_CurrentlyPlayingSongFromJson(json);

  @override
  final Duration currentPlayPosition;
  @override
  final String songPath;

  @override
  String toString() {
    return 'CurrentlyPlayingSong(currentPlayPosition: $currentPlayPosition, songPath: $songPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CurrentlyPlayingSong &&
            (identical(other.currentPlayPosition, currentPlayPosition) ||
                other.currentPlayPosition == currentPlayPosition) &&
            (identical(other.songPath, songPath) ||
                other.songPath == songPath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentPlayPosition, songPath);

  @JsonKey(ignore: true)
  @override
  _$CurrentlyPlayingSongCopyWith<_CurrentlyPlayingSong> get copyWith =>
      __$CurrentlyPlayingSongCopyWithImpl<_CurrentlyPlayingSong>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrentlyPlayingSongToJson(this);
  }
}

abstract class _CurrentlyPlayingSong implements CurrentlyPlayingSong {
  const factory _CurrentlyPlayingSong(
      Duration currentPlayPosition, String songPath) = _$_CurrentlyPlayingSong;

  factory _CurrentlyPlayingSong.fromJson(Map<String, dynamic> json) =
      _$_CurrentlyPlayingSong.fromJson;

  @override
  Duration get currentPlayPosition;
  @override
  String get songPath;
  @override
  @JsonKey(ignore: true)
  _$CurrentlyPlayingSongCopyWith<_CurrentlyPlayingSong> get copyWith =>
      throw _privateConstructorUsedError;
}
