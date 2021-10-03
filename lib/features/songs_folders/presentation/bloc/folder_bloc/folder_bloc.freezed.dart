// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'folder_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FolderEventTearOff {
  const _$FolderEventTearOff();

  FolderLoaded folderLoaded() {
    return const FolderLoaded();
  }
}

/// @nodoc
const $FolderEvent = _$FolderEventTearOff();

/// @nodoc
mixin _$FolderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() folderLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? folderLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? folderLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FolderLoaded value) folderLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FolderLoaded value)? folderLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FolderLoaded value)? folderLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FolderEventCopyWith<$Res> {
  factory $FolderEventCopyWith(
          FolderEvent value, $Res Function(FolderEvent) then) =
      _$FolderEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FolderEventCopyWithImpl<$Res> implements $FolderEventCopyWith<$Res> {
  _$FolderEventCopyWithImpl(this._value, this._then);

  final FolderEvent _value;
  // ignore: unused_field
  final $Res Function(FolderEvent) _then;
}

/// @nodoc
abstract class $FolderLoadedCopyWith<$Res> {
  factory $FolderLoadedCopyWith(
          FolderLoaded value, $Res Function(FolderLoaded) then) =
      _$FolderLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class _$FolderLoadedCopyWithImpl<$Res> extends _$FolderEventCopyWithImpl<$Res>
    implements $FolderLoadedCopyWith<$Res> {
  _$FolderLoadedCopyWithImpl(
      FolderLoaded _value, $Res Function(FolderLoaded) _then)
      : super(_value, (v) => _then(v as FolderLoaded));

  @override
  FolderLoaded get _value => super._value as FolderLoaded;
}

/// @nodoc

class _$FolderLoaded implements FolderLoaded {
  const _$FolderLoaded();

  @override
  String toString() {
    return 'FolderEvent.folderLoaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FolderLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() folderLoaded,
  }) {
    return folderLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? folderLoaded,
  }) {
    return folderLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? folderLoaded,
    required TResult orElse(),
  }) {
    if (folderLoaded != null) {
      return folderLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FolderLoaded value) folderLoaded,
  }) {
    return folderLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FolderLoaded value)? folderLoaded,
  }) {
    return folderLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FolderLoaded value)? folderLoaded,
    required TResult orElse(),
  }) {
    if (folderLoaded != null) {
      return folderLoaded(this);
    }
    return orElse();
  }
}

abstract class FolderLoaded implements FolderEvent {
  const factory FolderLoaded() = _$FolderLoaded;
}

/// @nodoc
class _$FolderStateTearOff {
  const _$FolderStateTearOff();

  FolderInProgress folderInProgress() {
    return const FolderInProgress();
  }

  FolderLoadSuccess folderLoadSuccess(
      UnmodifiableListView<SongsFolder> folders) {
    return FolderLoadSuccess(
      folders,
    );
  }
}

/// @nodoc
const $FolderState = _$FolderStateTearOff();

/// @nodoc
mixin _$FolderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() folderInProgress,
    required TResult Function(UnmodifiableListView<SongsFolder> folders)
        folderLoadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? folderInProgress,
    TResult Function(UnmodifiableListView<SongsFolder> folders)?
        folderLoadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? folderInProgress,
    TResult Function(UnmodifiableListView<SongsFolder> folders)?
        folderLoadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FolderInProgress value) folderInProgress,
    required TResult Function(FolderLoadSuccess value) folderLoadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FolderInProgress value)? folderInProgress,
    TResult Function(FolderLoadSuccess value)? folderLoadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FolderInProgress value)? folderInProgress,
    TResult Function(FolderLoadSuccess value)? folderLoadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FolderStateCopyWith<$Res> {
  factory $FolderStateCopyWith(
          FolderState value, $Res Function(FolderState) then) =
      _$FolderStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FolderStateCopyWithImpl<$Res> implements $FolderStateCopyWith<$Res> {
  _$FolderStateCopyWithImpl(this._value, this._then);

  final FolderState _value;
  // ignore: unused_field
  final $Res Function(FolderState) _then;
}

/// @nodoc
abstract class $FolderInProgressCopyWith<$Res> {
  factory $FolderInProgressCopyWith(
          FolderInProgress value, $Res Function(FolderInProgress) then) =
      _$FolderInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$FolderInProgressCopyWithImpl<$Res>
    extends _$FolderStateCopyWithImpl<$Res>
    implements $FolderInProgressCopyWith<$Res> {
  _$FolderInProgressCopyWithImpl(
      FolderInProgress _value, $Res Function(FolderInProgress) _then)
      : super(_value, (v) => _then(v as FolderInProgress));

  @override
  FolderInProgress get _value => super._value as FolderInProgress;
}

/// @nodoc

class _$FolderInProgress implements FolderInProgress {
  const _$FolderInProgress();

  @override
  String toString() {
    return 'FolderState.folderInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FolderInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() folderInProgress,
    required TResult Function(UnmodifiableListView<SongsFolder> folders)
        folderLoadSuccess,
  }) {
    return folderInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? folderInProgress,
    TResult Function(UnmodifiableListView<SongsFolder> folders)?
        folderLoadSuccess,
  }) {
    return folderInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? folderInProgress,
    TResult Function(UnmodifiableListView<SongsFolder> folders)?
        folderLoadSuccess,
    required TResult orElse(),
  }) {
    if (folderInProgress != null) {
      return folderInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FolderInProgress value) folderInProgress,
    required TResult Function(FolderLoadSuccess value) folderLoadSuccess,
  }) {
    return folderInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FolderInProgress value)? folderInProgress,
    TResult Function(FolderLoadSuccess value)? folderLoadSuccess,
  }) {
    return folderInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FolderInProgress value)? folderInProgress,
    TResult Function(FolderLoadSuccess value)? folderLoadSuccess,
    required TResult orElse(),
  }) {
    if (folderInProgress != null) {
      return folderInProgress(this);
    }
    return orElse();
  }
}

abstract class FolderInProgress implements FolderState {
  const factory FolderInProgress() = _$FolderInProgress;
}

/// @nodoc
abstract class $FolderLoadSuccessCopyWith<$Res> {
  factory $FolderLoadSuccessCopyWith(
          FolderLoadSuccess value, $Res Function(FolderLoadSuccess) then) =
      _$FolderLoadSuccessCopyWithImpl<$Res>;
  $Res call({UnmodifiableListView<SongsFolder> folders});
}

/// @nodoc
class _$FolderLoadSuccessCopyWithImpl<$Res>
    extends _$FolderStateCopyWithImpl<$Res>
    implements $FolderLoadSuccessCopyWith<$Res> {
  _$FolderLoadSuccessCopyWithImpl(
      FolderLoadSuccess _value, $Res Function(FolderLoadSuccess) _then)
      : super(_value, (v) => _then(v as FolderLoadSuccess));

  @override
  FolderLoadSuccess get _value => super._value as FolderLoadSuccess;

  @override
  $Res call({
    Object? folders = freezed,
  }) {
    return _then(FolderLoadSuccess(
      folders == freezed
          ? _value.folders
          : folders // ignore: cast_nullable_to_non_nullable
              as UnmodifiableListView<SongsFolder>,
    ));
  }
}

/// @nodoc

class _$FolderLoadSuccess implements FolderLoadSuccess {
  const _$FolderLoadSuccess(this.folders);

  @override
  final UnmodifiableListView<SongsFolder> folders;

  @override
  String toString() {
    return 'FolderState.folderLoadSuccess(folders: $folders)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FolderLoadSuccess &&
            (identical(other.folders, folders) ||
                const DeepCollectionEquality().equals(other.folders, folders)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(folders);

  @JsonKey(ignore: true)
  @override
  $FolderLoadSuccessCopyWith<FolderLoadSuccess> get copyWith =>
      _$FolderLoadSuccessCopyWithImpl<FolderLoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() folderInProgress,
    required TResult Function(UnmodifiableListView<SongsFolder> folders)
        folderLoadSuccess,
  }) {
    return folderLoadSuccess(folders);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? folderInProgress,
    TResult Function(UnmodifiableListView<SongsFolder> folders)?
        folderLoadSuccess,
  }) {
    return folderLoadSuccess?.call(folders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? folderInProgress,
    TResult Function(UnmodifiableListView<SongsFolder> folders)?
        folderLoadSuccess,
    required TResult orElse(),
  }) {
    if (folderLoadSuccess != null) {
      return folderLoadSuccess(folders);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FolderInProgress value) folderInProgress,
    required TResult Function(FolderLoadSuccess value) folderLoadSuccess,
  }) {
    return folderLoadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FolderInProgress value)? folderInProgress,
    TResult Function(FolderLoadSuccess value)? folderLoadSuccess,
  }) {
    return folderLoadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FolderInProgress value)? folderInProgress,
    TResult Function(FolderLoadSuccess value)? folderLoadSuccess,
    required TResult orElse(),
  }) {
    if (folderLoadSuccess != null) {
      return folderLoadSuccess(this);
    }
    return orElse();
  }
}

abstract class FolderLoadSuccess implements FolderState {
  const factory FolderLoadSuccess(UnmodifiableListView<SongsFolder> folders) =
      _$FolderLoadSuccess;

  UnmodifiableListView<SongsFolder> get folders =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FolderLoadSuccessCopyWith<FolderLoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
