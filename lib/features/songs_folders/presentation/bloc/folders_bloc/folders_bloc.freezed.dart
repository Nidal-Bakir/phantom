// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'folders_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FoldersEventTearOff {
  const _$FoldersEventTearOff();

  FoldersLoaded folderLoaded() {
    return const FoldersLoaded();
  }

  FolderRefreshed folderRefreshed() {
    return const FolderRefreshed();
  }
}

/// @nodoc
const $FoldersEvent = _$FoldersEventTearOff();

/// @nodoc
mixin _$FoldersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() folderLoaded,
    required TResult Function() folderRefreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? folderLoaded,
    TResult Function()? folderRefreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? folderLoaded,
    TResult Function()? folderRefreshed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FoldersLoaded value) folderLoaded,
    required TResult Function(FolderRefreshed value) folderRefreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FoldersLoaded value)? folderLoaded,
    TResult Function(FolderRefreshed value)? folderRefreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FoldersLoaded value)? folderLoaded,
    TResult Function(FolderRefreshed value)? folderRefreshed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoldersEventCopyWith<$Res> {
  factory $FoldersEventCopyWith(
          FoldersEvent value, $Res Function(FoldersEvent) then) =
      _$FoldersEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FoldersEventCopyWithImpl<$Res> implements $FoldersEventCopyWith<$Res> {
  _$FoldersEventCopyWithImpl(this._value, this._then);

  final FoldersEvent _value;
  // ignore: unused_field
  final $Res Function(FoldersEvent) _then;
}

/// @nodoc
abstract class $FoldersLoadedCopyWith<$Res> {
  factory $FoldersLoadedCopyWith(
          FoldersLoaded value, $Res Function(FoldersLoaded) then) =
      _$FoldersLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class _$FoldersLoadedCopyWithImpl<$Res> extends _$FoldersEventCopyWithImpl<$Res>
    implements $FoldersLoadedCopyWith<$Res> {
  _$FoldersLoadedCopyWithImpl(
      FoldersLoaded _value, $Res Function(FoldersLoaded) _then)
      : super(_value, (v) => _then(v as FoldersLoaded));

  @override
  FoldersLoaded get _value => super._value as FoldersLoaded;
}

/// @nodoc

class _$FoldersLoaded implements FoldersLoaded {
  const _$FoldersLoaded();

  @override
  String toString() {
    return 'FoldersEvent.folderLoaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FoldersLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() folderLoaded,
    required TResult Function() folderRefreshed,
  }) {
    return folderLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? folderLoaded,
    TResult Function()? folderRefreshed,
  }) {
    return folderLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? folderLoaded,
    TResult Function()? folderRefreshed,
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
    required TResult Function(FoldersLoaded value) folderLoaded,
    required TResult Function(FolderRefreshed value) folderRefreshed,
  }) {
    return folderLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FoldersLoaded value)? folderLoaded,
    TResult Function(FolderRefreshed value)? folderRefreshed,
  }) {
    return folderLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FoldersLoaded value)? folderLoaded,
    TResult Function(FolderRefreshed value)? folderRefreshed,
    required TResult orElse(),
  }) {
    if (folderLoaded != null) {
      return folderLoaded(this);
    }
    return orElse();
  }
}

abstract class FoldersLoaded implements FoldersEvent {
  const factory FoldersLoaded() = _$FoldersLoaded;
}

/// @nodoc
abstract class $FolderRefreshedCopyWith<$Res> {
  factory $FolderRefreshedCopyWith(
          FolderRefreshed value, $Res Function(FolderRefreshed) then) =
      _$FolderRefreshedCopyWithImpl<$Res>;
}

/// @nodoc
class _$FolderRefreshedCopyWithImpl<$Res>
    extends _$FoldersEventCopyWithImpl<$Res>
    implements $FolderRefreshedCopyWith<$Res> {
  _$FolderRefreshedCopyWithImpl(
      FolderRefreshed _value, $Res Function(FolderRefreshed) _then)
      : super(_value, (v) => _then(v as FolderRefreshed));

  @override
  FolderRefreshed get _value => super._value as FolderRefreshed;
}

/// @nodoc

class _$FolderRefreshed implements FolderRefreshed {
  const _$FolderRefreshed();

  @override
  String toString() {
    return 'FoldersEvent.folderRefreshed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FolderRefreshed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() folderLoaded,
    required TResult Function() folderRefreshed,
  }) {
    return folderRefreshed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? folderLoaded,
    TResult Function()? folderRefreshed,
  }) {
    return folderRefreshed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? folderLoaded,
    TResult Function()? folderRefreshed,
    required TResult orElse(),
  }) {
    if (folderRefreshed != null) {
      return folderRefreshed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FoldersLoaded value) folderLoaded,
    required TResult Function(FolderRefreshed value) folderRefreshed,
  }) {
    return folderRefreshed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FoldersLoaded value)? folderLoaded,
    TResult Function(FolderRefreshed value)? folderRefreshed,
  }) {
    return folderRefreshed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FoldersLoaded value)? folderLoaded,
    TResult Function(FolderRefreshed value)? folderRefreshed,
    required TResult orElse(),
  }) {
    if (folderRefreshed != null) {
      return folderRefreshed(this);
    }
    return orElse();
  }
}

abstract class FolderRefreshed implements FoldersEvent {
  const factory FolderRefreshed() = _$FolderRefreshed;
}

/// @nodoc
class _$FoldersStateTearOff {
  const _$FoldersStateTearOff();

  FoldersInProgress foldersInProgress() {
    return const FoldersInProgress();
  }

  FoldersLoadSuccess foldersLoadSuccess(
      UnmodifiableListView<SongsFolder> folders) {
    return FoldersLoadSuccess(
      folders,
    );
  }
}

/// @nodoc
const $FoldersState = _$FoldersStateTearOff();

/// @nodoc
mixin _$FoldersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() foldersInProgress,
    required TResult Function(UnmodifiableListView<SongsFolder> folders)
        foldersLoadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? foldersInProgress,
    TResult Function(UnmodifiableListView<SongsFolder> folders)?
        foldersLoadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? foldersInProgress,
    TResult Function(UnmodifiableListView<SongsFolder> folders)?
        foldersLoadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FoldersInProgress value) foldersInProgress,
    required TResult Function(FoldersLoadSuccess value) foldersLoadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FoldersInProgress value)? foldersInProgress,
    TResult Function(FoldersLoadSuccess value)? foldersLoadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FoldersInProgress value)? foldersInProgress,
    TResult Function(FoldersLoadSuccess value)? foldersLoadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoldersStateCopyWith<$Res> {
  factory $FoldersStateCopyWith(
          FoldersState value, $Res Function(FoldersState) then) =
      _$FoldersStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FoldersStateCopyWithImpl<$Res> implements $FoldersStateCopyWith<$Res> {
  _$FoldersStateCopyWithImpl(this._value, this._then);

  final FoldersState _value;
  // ignore: unused_field
  final $Res Function(FoldersState) _then;
}

/// @nodoc
abstract class $FoldersInProgressCopyWith<$Res> {
  factory $FoldersInProgressCopyWith(
          FoldersInProgress value, $Res Function(FoldersInProgress) then) =
      _$FoldersInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$FoldersInProgressCopyWithImpl<$Res>
    extends _$FoldersStateCopyWithImpl<$Res>
    implements $FoldersInProgressCopyWith<$Res> {
  _$FoldersInProgressCopyWithImpl(
      FoldersInProgress _value, $Res Function(FoldersInProgress) _then)
      : super(_value, (v) => _then(v as FoldersInProgress));

  @override
  FoldersInProgress get _value => super._value as FoldersInProgress;
}

/// @nodoc

class _$FoldersInProgress implements FoldersInProgress {
  const _$FoldersInProgress();

  @override
  String toString() {
    return 'FoldersState.foldersInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FoldersInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() foldersInProgress,
    required TResult Function(UnmodifiableListView<SongsFolder> folders)
        foldersLoadSuccess,
  }) {
    return foldersInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? foldersInProgress,
    TResult Function(UnmodifiableListView<SongsFolder> folders)?
        foldersLoadSuccess,
  }) {
    return foldersInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? foldersInProgress,
    TResult Function(UnmodifiableListView<SongsFolder> folders)?
        foldersLoadSuccess,
    required TResult orElse(),
  }) {
    if (foldersInProgress != null) {
      return foldersInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FoldersInProgress value) foldersInProgress,
    required TResult Function(FoldersLoadSuccess value) foldersLoadSuccess,
  }) {
    return foldersInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FoldersInProgress value)? foldersInProgress,
    TResult Function(FoldersLoadSuccess value)? foldersLoadSuccess,
  }) {
    return foldersInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FoldersInProgress value)? foldersInProgress,
    TResult Function(FoldersLoadSuccess value)? foldersLoadSuccess,
    required TResult orElse(),
  }) {
    if (foldersInProgress != null) {
      return foldersInProgress(this);
    }
    return orElse();
  }
}

abstract class FoldersInProgress implements FoldersState {
  const factory FoldersInProgress() = _$FoldersInProgress;
}

/// @nodoc
abstract class $FoldersLoadSuccessCopyWith<$Res> {
  factory $FoldersLoadSuccessCopyWith(
          FoldersLoadSuccess value, $Res Function(FoldersLoadSuccess) then) =
      _$FoldersLoadSuccessCopyWithImpl<$Res>;
  $Res call({UnmodifiableListView<SongsFolder> folders});
}

/// @nodoc
class _$FoldersLoadSuccessCopyWithImpl<$Res>
    extends _$FoldersStateCopyWithImpl<$Res>
    implements $FoldersLoadSuccessCopyWith<$Res> {
  _$FoldersLoadSuccessCopyWithImpl(
      FoldersLoadSuccess _value, $Res Function(FoldersLoadSuccess) _then)
      : super(_value, (v) => _then(v as FoldersLoadSuccess));

  @override
  FoldersLoadSuccess get _value => super._value as FoldersLoadSuccess;

  @override
  $Res call({
    Object? folders = freezed,
  }) {
    return _then(FoldersLoadSuccess(
      folders == freezed
          ? _value.folders
          : folders // ignore: cast_nullable_to_non_nullable
              as UnmodifiableListView<SongsFolder>,
    ));
  }
}

/// @nodoc

class _$FoldersLoadSuccess implements FoldersLoadSuccess {
  const _$FoldersLoadSuccess(this.folders);

  @override
  final UnmodifiableListView<SongsFolder> folders;

  @override
  String toString() {
    return 'FoldersState.foldersLoadSuccess(folders: $folders)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FoldersLoadSuccess &&
            (identical(other.folders, folders) ||
                const DeepCollectionEquality().equals(other.folders, folders)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(folders);

  @JsonKey(ignore: true)
  @override
  $FoldersLoadSuccessCopyWith<FoldersLoadSuccess> get copyWith =>
      _$FoldersLoadSuccessCopyWithImpl<FoldersLoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() foldersInProgress,
    required TResult Function(UnmodifiableListView<SongsFolder> folders)
        foldersLoadSuccess,
  }) {
    return foldersLoadSuccess(folders);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? foldersInProgress,
    TResult Function(UnmodifiableListView<SongsFolder> folders)?
        foldersLoadSuccess,
  }) {
    return foldersLoadSuccess?.call(folders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? foldersInProgress,
    TResult Function(UnmodifiableListView<SongsFolder> folders)?
        foldersLoadSuccess,
    required TResult orElse(),
  }) {
    if (foldersLoadSuccess != null) {
      return foldersLoadSuccess(folders);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FoldersInProgress value) foldersInProgress,
    required TResult Function(FoldersLoadSuccess value) foldersLoadSuccess,
  }) {
    return foldersLoadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FoldersInProgress value)? foldersInProgress,
    TResult Function(FoldersLoadSuccess value)? foldersLoadSuccess,
  }) {
    return foldersLoadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FoldersInProgress value)? foldersInProgress,
    TResult Function(FoldersLoadSuccess value)? foldersLoadSuccess,
    required TResult orElse(),
  }) {
    if (foldersLoadSuccess != null) {
      return foldersLoadSuccess(this);
    }
    return orElse();
  }
}

abstract class FoldersLoadSuccess implements FoldersState {
  const factory FoldersLoadSuccess(UnmodifiableListView<SongsFolder> folders) =
      _$FoldersLoadSuccess;

  UnmodifiableListView<SongsFolder> get folders =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FoldersLoadSuccessCopyWith<FoldersLoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
