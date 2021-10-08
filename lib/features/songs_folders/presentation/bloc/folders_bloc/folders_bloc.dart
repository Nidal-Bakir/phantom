import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:phantom/core/sync/dispatcher/delta_dispatcher.dart';
import 'package:phantom/features/songs_folders/model/songs_folder.dart';
import 'package:phantom/features/songs_folders/repository/folder_repository.dart';

part 'folders_event.dart';
part 'folders_state.dart';
part 'folders_bloc.freezed.dart';

class FoldersBloc extends Bloc<FoldersEvent, FoldersState> {
  final FoldersRepository _foldersRepository;
  final DeltaDispatcher _deltaDispatcher;

  late final StreamSubscription streamSubscription;
  FoldersBloc(this._foldersRepository, this._deltaDispatcher)
      : super(const FoldersInProgress()) {
    on<FoldersLoaded>(_onFoldersLoaded);
    on<FolderRefreshed>(_onFolderRefreshed);

    streamSubscription = _deltaDispatcher.deltaStream.listen((deltaEvent) {
      // when new songs added or deleted form database.
      deltaEvent.whenOrNull(
        newAddedSongs: (newSongs) => add(const FolderRefreshed()),
        donePublishing: () => add(const FolderRefreshed()),
      );
    });
  }
  
  @override
  Future<void> close() {
    streamSubscription.cancel();
    return super.close();
  }

  FutureOr<void> _onFoldersLoaded(
      FoldersLoaded folderLoaded, Emitter<FoldersState> emitter) async {
    await _loadFolders(emitter);
  }

  FutureOr<void> _onFolderRefreshed(
      FolderRefreshed folderRefreshed, Emitter<FoldersState> emitter) async {
    await _loadFolders(emitter);
  }

  Future<void> _loadFolders(Emitter<FoldersState> emitter) async {
    final folders = await _foldersRepository.querySongsFolders();

    emitter(FoldersLoadSuccess(UnmodifiableListView(folders)));
  }
}
