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
  switch (json['runtimeType'] as String?) {
    case 'newAddedSongs':
      return NewAddedSongs.fromJson(json);
    case 'deletedSongsIds':
      return DeletedSongsIds.fromJson(json);
    case 'updatedSongs':
      return UpdatedSongs.fromJson(json);
    case 'donePublishing':
      return DonePublishing.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Delta',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$DeltaTearOff {
  const _$DeltaTearOff();

  NewAddedSongs newAddedSongs({required SongsContainer newSongsContainer}) {
    return NewAddedSongs(
      newSongsContainer: newSongsContainer,
    );
  }

  DeletedSongsIds deletedSongsIds({required Set<int> deletedSongsIds}) {
    return DeletedSongsIds(
      deletedSongsIds: deletedSongsIds,
    );
  }

  UpdatedSongs updatedSongs({required List<Song> updatedSongs}) {
    return UpdatedSongs(
      updatedSongs: updatedSongs,
    );
  }

  DonePublishing donePublishing() {
    return const DonePublishing();
  }

  Delta fromJson(Map<String, Object> json) {
    return Delta.fromJson(json);
  }
}

/// @nodoc
const $Delta = _$DeltaTearOff();

/// @nodoc
mixin _$Delta {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SongsContainer newSongsContainer) newAddedSongs,
    required TResult Function(Set<int> deletedSongsIds) deletedSongsIds,
    required TResult Function(List<Song> updatedSongs) updatedSongs,
    required TResult Function() donePublishing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SongsContainer newSongsContainer)? newAddedSongs,
    TResult Function(Set<int> deletedSongsIds)? deletedSongsIds,
    TResult Function(List<Song> updatedSongs)? updatedSongs,
    TResult Function()? donePublishing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SongsContainer newSongsContainer)? newAddedSongs,
    TResult Function(Set<int> deletedSongsIds)? deletedSongsIds,
    TResult Function(List<Song> updatedSongs)? updatedSongs,
    TResult Function()? donePublishing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewAddedSongs value) newAddedSongs,
    required TResult Function(DeletedSongsIds value) deletedSongsIds,
    required TResult Function(UpdatedSongs value) updatedSongs,
    required TResult Function(DonePublishing value) donePublishing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NewAddedSongs value)? newAddedSongs,
    TResult Function(DeletedSongsIds value)? deletedSongsIds,
    TResult Function(UpdatedSongs value)? updatedSongs,
    TResult Function(DonePublishing value)? donePublishing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewAddedSongs value)? newAddedSongs,
    TResult Function(DeletedSongsIds value)? deletedSongsIds,
    TResult Function(UpdatedSongs value)? updatedSongs,
    TResult Function(DonePublishing value)? donePublishing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeltaCopyWith<$Res> {
  factory $DeltaCopyWith(Delta value, $Res Function(Delta) then) =
      _$DeltaCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeltaCopyWithImpl<$Res> implements $DeltaCopyWith<$Res> {
  _$DeltaCopyWithImpl(this._value, this._then);

  final Delta _value;
  // ignore: unused_field
  final $Res Function(Delta) _then;
}

/// @nodoc
abstract class $NewAddedSongsCopyWith<$Res> {
  factory $NewAddedSongsCopyWith(
          NewAddedSongs value, $Res Function(NewAddedSongs) then) =
      _$NewAddedSongsCopyWithImpl<$Res>;
  $Res call({SongsContainer newSongsContainer});
}

/// @nodoc
class _$NewAddedSongsCopyWithImpl<$Res> extends _$DeltaCopyWithImpl<$Res>
    implements $NewAddedSongsCopyWith<$Res> {
  _$NewAddedSongsCopyWithImpl(
      NewAddedSongs _value, $Res Function(NewAddedSongs) _then)
      : super(_value, (v) => _then(v as NewAddedSongs));

  @override
  NewAddedSongs get _value => super._value as NewAddedSongs;

  @override
  $Res call({
    Object? newSongsContainer = freezed,
  }) {
    return _then(NewAddedSongs(
      newSongsContainer: newSongsContainer == freezed
          ? _value.newSongsContainer
          : newSongsContainer // ignore: cast_nullable_to_non_nullable
              as SongsContainer,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$NewAddedSongs implements NewAddedSongs {
  const _$NewAddedSongs({required this.newSongsContainer});

  factory _$NewAddedSongs.fromJson(Map<String, dynamic> json) =>
      _$$NewAddedSongsFromJson(json);

  @override
  final SongsContainer newSongsContainer;

  @override
  String toString() {
    return 'Delta.newAddedSongs(newSongsContainer: $newSongsContainer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NewAddedSongs &&
            (identical(other.newSongsContainer, newSongsContainer) ||
                const DeepCollectionEquality()
                    .equals(other.newSongsContainer, newSongsContainer)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(newSongsContainer);

  @JsonKey(ignore: true)
  @override
  $NewAddedSongsCopyWith<NewAddedSongs> get copyWith =>
      _$NewAddedSongsCopyWithImpl<NewAddedSongs>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SongsContainer newSongsContainer) newAddedSongs,
    required TResult Function(Set<int> deletedSongsIds) deletedSongsIds,
    required TResult Function(List<Song> updatedSongs) updatedSongs,
    required TResult Function() donePublishing,
  }) {
    return newAddedSongs(newSongsContainer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SongsContainer newSongsContainer)? newAddedSongs,
    TResult Function(Set<int> deletedSongsIds)? deletedSongsIds,
    TResult Function(List<Song> updatedSongs)? updatedSongs,
    TResult Function()? donePublishing,
  }) {
    return newAddedSongs?.call(newSongsContainer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SongsContainer newSongsContainer)? newAddedSongs,
    TResult Function(Set<int> deletedSongsIds)? deletedSongsIds,
    TResult Function(List<Song> updatedSongs)? updatedSongs,
    TResult Function()? donePublishing,
    required TResult orElse(),
  }) {
    if (newAddedSongs != null) {
      return newAddedSongs(newSongsContainer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewAddedSongs value) newAddedSongs,
    required TResult Function(DeletedSongsIds value) deletedSongsIds,
    required TResult Function(UpdatedSongs value) updatedSongs,
    required TResult Function(DonePublishing value) donePublishing,
  }) {
    return newAddedSongs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NewAddedSongs value)? newAddedSongs,
    TResult Function(DeletedSongsIds value)? deletedSongsIds,
    TResult Function(UpdatedSongs value)? updatedSongs,
    TResult Function(DonePublishing value)? donePublishing,
  }) {
    return newAddedSongs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewAddedSongs value)? newAddedSongs,
    TResult Function(DeletedSongsIds value)? deletedSongsIds,
    TResult Function(UpdatedSongs value)? updatedSongs,
    TResult Function(DonePublishing value)? donePublishing,
    required TResult orElse(),
  }) {
    if (newAddedSongs != null) {
      return newAddedSongs(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NewAddedSongsToJson(this)..['runtimeType'] = 'newAddedSongs';
  }
}

abstract class NewAddedSongs implements Delta {
  const factory NewAddedSongs({required SongsContainer newSongsContainer}) =
      _$NewAddedSongs;

  factory NewAddedSongs.fromJson(Map<String, dynamic> json) =
      _$NewAddedSongs.fromJson;

  SongsContainer get newSongsContainer => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewAddedSongsCopyWith<NewAddedSongs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeletedSongsIdsCopyWith<$Res> {
  factory $DeletedSongsIdsCopyWith(
          DeletedSongsIds value, $Res Function(DeletedSongsIds) then) =
      _$DeletedSongsIdsCopyWithImpl<$Res>;
  $Res call({Set<int> deletedSongsIds});
}

/// @nodoc
class _$DeletedSongsIdsCopyWithImpl<$Res> extends _$DeltaCopyWithImpl<$Res>
    implements $DeletedSongsIdsCopyWith<$Res> {
  _$DeletedSongsIdsCopyWithImpl(
      DeletedSongsIds _value, $Res Function(DeletedSongsIds) _then)
      : super(_value, (v) => _then(v as DeletedSongsIds));

  @override
  DeletedSongsIds get _value => super._value as DeletedSongsIds;

  @override
  $Res call({
    Object? deletedSongsIds = freezed,
  }) {
    return _then(DeletedSongsIds(
      deletedSongsIds: deletedSongsIds == freezed
          ? _value.deletedSongsIds
          : deletedSongsIds // ignore: cast_nullable_to_non_nullable
              as Set<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeletedSongsIds implements DeletedSongsIds {
  const _$DeletedSongsIds({required this.deletedSongsIds});

  factory _$DeletedSongsIds.fromJson(Map<String, dynamic> json) =>
      _$$DeletedSongsIdsFromJson(json);

  @override
  final Set<int> deletedSongsIds;

  @override
  String toString() {
    return 'Delta.deletedSongsIds(deletedSongsIds: $deletedSongsIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeletedSongsIds &&
            (identical(other.deletedSongsIds, deletedSongsIds) ||
                const DeepCollectionEquality()
                    .equals(other.deletedSongsIds, deletedSongsIds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(deletedSongsIds);

  @JsonKey(ignore: true)
  @override
  $DeletedSongsIdsCopyWith<DeletedSongsIds> get copyWith =>
      _$DeletedSongsIdsCopyWithImpl<DeletedSongsIds>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SongsContainer newSongsContainer) newAddedSongs,
    required TResult Function(Set<int> deletedSongsIds) deletedSongsIds,
    required TResult Function(List<Song> updatedSongs) updatedSongs,
    required TResult Function() donePublishing,
  }) {
    return deletedSongsIds(this.deletedSongsIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SongsContainer newSongsContainer)? newAddedSongs,
    TResult Function(Set<int> deletedSongsIds)? deletedSongsIds,
    TResult Function(List<Song> updatedSongs)? updatedSongs,
    TResult Function()? donePublishing,
  }) {
    return deletedSongsIds?.call(this.deletedSongsIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SongsContainer newSongsContainer)? newAddedSongs,
    TResult Function(Set<int> deletedSongsIds)? deletedSongsIds,
    TResult Function(List<Song> updatedSongs)? updatedSongs,
    TResult Function()? donePublishing,
    required TResult orElse(),
  }) {
    if (deletedSongsIds != null) {
      return deletedSongsIds(this.deletedSongsIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewAddedSongs value) newAddedSongs,
    required TResult Function(DeletedSongsIds value) deletedSongsIds,
    required TResult Function(UpdatedSongs value) updatedSongs,
    required TResult Function(DonePublishing value) donePublishing,
  }) {
    return deletedSongsIds(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NewAddedSongs value)? newAddedSongs,
    TResult Function(DeletedSongsIds value)? deletedSongsIds,
    TResult Function(UpdatedSongs value)? updatedSongs,
    TResult Function(DonePublishing value)? donePublishing,
  }) {
    return deletedSongsIds?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewAddedSongs value)? newAddedSongs,
    TResult Function(DeletedSongsIds value)? deletedSongsIds,
    TResult Function(UpdatedSongs value)? updatedSongs,
    TResult Function(DonePublishing value)? donePublishing,
    required TResult orElse(),
  }) {
    if (deletedSongsIds != null) {
      return deletedSongsIds(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DeletedSongsIdsToJson(this)..['runtimeType'] = 'deletedSongsIds';
  }
}

abstract class DeletedSongsIds implements Delta {
  const factory DeletedSongsIds({required Set<int> deletedSongsIds}) =
      _$DeletedSongsIds;

  factory DeletedSongsIds.fromJson(Map<String, dynamic> json) =
      _$DeletedSongsIds.fromJson;

  Set<int> get deletedSongsIds => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeletedSongsIdsCopyWith<DeletedSongsIds> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatedSongsCopyWith<$Res> {
  factory $UpdatedSongsCopyWith(
          UpdatedSongs value, $Res Function(UpdatedSongs) then) =
      _$UpdatedSongsCopyWithImpl<$Res>;
  $Res call({List<Song> updatedSongs});
}

/// @nodoc
class _$UpdatedSongsCopyWithImpl<$Res> extends _$DeltaCopyWithImpl<$Res>
    implements $UpdatedSongsCopyWith<$Res> {
  _$UpdatedSongsCopyWithImpl(
      UpdatedSongs _value, $Res Function(UpdatedSongs) _then)
      : super(_value, (v) => _then(v as UpdatedSongs));

  @override
  UpdatedSongs get _value => super._value as UpdatedSongs;

  @override
  $Res call({
    Object? updatedSongs = freezed,
  }) {
    return _then(UpdatedSongs(
      updatedSongs: updatedSongs == freezed
          ? _value.updatedSongs
          : updatedSongs // ignore: cast_nullable_to_non_nullable
              as List<Song>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdatedSongs implements UpdatedSongs {
  const _$UpdatedSongs({required this.updatedSongs});

  factory _$UpdatedSongs.fromJson(Map<String, dynamic> json) =>
      _$$UpdatedSongsFromJson(json);

  @override
  final List<Song> updatedSongs;

  @override
  String toString() {
    return 'Delta.updatedSongs(updatedSongs: $updatedSongs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdatedSongs &&
            (identical(other.updatedSongs, updatedSongs) ||
                const DeepCollectionEquality()
                    .equals(other.updatedSongs, updatedSongs)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(updatedSongs);

  @JsonKey(ignore: true)
  @override
  $UpdatedSongsCopyWith<UpdatedSongs> get copyWith =>
      _$UpdatedSongsCopyWithImpl<UpdatedSongs>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SongsContainer newSongsContainer) newAddedSongs,
    required TResult Function(Set<int> deletedSongsIds) deletedSongsIds,
    required TResult Function(List<Song> updatedSongs) updatedSongs,
    required TResult Function() donePublishing,
  }) {
    return updatedSongs(this.updatedSongs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SongsContainer newSongsContainer)? newAddedSongs,
    TResult Function(Set<int> deletedSongsIds)? deletedSongsIds,
    TResult Function(List<Song> updatedSongs)? updatedSongs,
    TResult Function()? donePublishing,
  }) {
    return updatedSongs?.call(this.updatedSongs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SongsContainer newSongsContainer)? newAddedSongs,
    TResult Function(Set<int> deletedSongsIds)? deletedSongsIds,
    TResult Function(List<Song> updatedSongs)? updatedSongs,
    TResult Function()? donePublishing,
    required TResult orElse(),
  }) {
    if (updatedSongs != null) {
      return updatedSongs(this.updatedSongs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewAddedSongs value) newAddedSongs,
    required TResult Function(DeletedSongsIds value) deletedSongsIds,
    required TResult Function(UpdatedSongs value) updatedSongs,
    required TResult Function(DonePublishing value) donePublishing,
  }) {
    return updatedSongs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NewAddedSongs value)? newAddedSongs,
    TResult Function(DeletedSongsIds value)? deletedSongsIds,
    TResult Function(UpdatedSongs value)? updatedSongs,
    TResult Function(DonePublishing value)? donePublishing,
  }) {
    return updatedSongs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewAddedSongs value)? newAddedSongs,
    TResult Function(DeletedSongsIds value)? deletedSongsIds,
    TResult Function(UpdatedSongs value)? updatedSongs,
    TResult Function(DonePublishing value)? donePublishing,
    required TResult orElse(),
  }) {
    if (updatedSongs != null) {
      return updatedSongs(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdatedSongsToJson(this)..['runtimeType'] = 'updatedSongs';
  }
}

abstract class UpdatedSongs implements Delta {
  const factory UpdatedSongs({required List<Song> updatedSongs}) =
      _$UpdatedSongs;

  factory UpdatedSongs.fromJson(Map<String, dynamic> json) =
      _$UpdatedSongs.fromJson;

  List<Song> get updatedSongs => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdatedSongsCopyWith<UpdatedSongs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DonePublishingCopyWith<$Res> {
  factory $DonePublishingCopyWith(
          DonePublishing value, $Res Function(DonePublishing) then) =
      _$DonePublishingCopyWithImpl<$Res>;
}

/// @nodoc
class _$DonePublishingCopyWithImpl<$Res> extends _$DeltaCopyWithImpl<$Res>
    implements $DonePublishingCopyWith<$Res> {
  _$DonePublishingCopyWithImpl(
      DonePublishing _value, $Res Function(DonePublishing) _then)
      : super(_value, (v) => _then(v as DonePublishing));

  @override
  DonePublishing get _value => super._value as DonePublishing;
}

/// @nodoc
@JsonSerializable()
class _$DonePublishing implements DonePublishing {
  const _$DonePublishing();

  factory _$DonePublishing.fromJson(Map<String, dynamic> json) =>
      _$$DonePublishingFromJson(json);

  @override
  String toString() {
    return 'Delta.donePublishing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DonePublishing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SongsContainer newSongsContainer) newAddedSongs,
    required TResult Function(Set<int> deletedSongsIds) deletedSongsIds,
    required TResult Function(List<Song> updatedSongs) updatedSongs,
    required TResult Function() donePublishing,
  }) {
    return donePublishing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SongsContainer newSongsContainer)? newAddedSongs,
    TResult Function(Set<int> deletedSongsIds)? deletedSongsIds,
    TResult Function(List<Song> updatedSongs)? updatedSongs,
    TResult Function()? donePublishing,
  }) {
    return donePublishing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SongsContainer newSongsContainer)? newAddedSongs,
    TResult Function(Set<int> deletedSongsIds)? deletedSongsIds,
    TResult Function(List<Song> updatedSongs)? updatedSongs,
    TResult Function()? donePublishing,
    required TResult orElse(),
  }) {
    if (donePublishing != null) {
      return donePublishing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewAddedSongs value) newAddedSongs,
    required TResult Function(DeletedSongsIds value) deletedSongsIds,
    required TResult Function(UpdatedSongs value) updatedSongs,
    required TResult Function(DonePublishing value) donePublishing,
  }) {
    return donePublishing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NewAddedSongs value)? newAddedSongs,
    TResult Function(DeletedSongsIds value)? deletedSongsIds,
    TResult Function(UpdatedSongs value)? updatedSongs,
    TResult Function(DonePublishing value)? donePublishing,
  }) {
    return donePublishing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewAddedSongs value)? newAddedSongs,
    TResult Function(DeletedSongsIds value)? deletedSongsIds,
    TResult Function(UpdatedSongs value)? updatedSongs,
    TResult Function(DonePublishing value)? donePublishing,
    required TResult orElse(),
  }) {
    if (donePublishing != null) {
      return donePublishing(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DonePublishingToJson(this)..['runtimeType'] = 'donePublishing';
  }
}

abstract class DonePublishing implements Delta {
  const factory DonePublishing() = _$DonePublishing;

  factory DonePublishing.fromJson(Map<String, dynamic> json) =
      _$DonePublishing.fromJson;
}
