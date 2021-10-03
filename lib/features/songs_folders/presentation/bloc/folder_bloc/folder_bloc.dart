import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:phantom/features/songs_folders/model/songs_folder.dart';
import 'package:phantom/features/songs_folders/repository/folder_repository.dart';

part 'folder_event.dart';
part 'folder_state.dart';
part 'folder_bloc.freezed.dart';

class FolderBloc extends Bloc<FolderEvent, FolderState> {
  final FolderRepository _folderRepository;
  FolderBloc(this._folderRepository) : super(const FolderInProgress()) {
    on<FolderLoaded>(_onFolderLoaded);
  }
  FutureOr<void> _onFolderLoaded(
      FolderLoaded folderLoaded, Emitter<FolderState> emitter) async {
    final folders = await _folderRepository.querySongsFolders();
    
    emitter(FolderLoadSuccess(UnmodifiableListView(folders)));
  }
}
