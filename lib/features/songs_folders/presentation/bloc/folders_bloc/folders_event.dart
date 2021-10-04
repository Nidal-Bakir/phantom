part of 'folders_bloc.dart';

@freezed
class FoldersEvent with _$FoldersEvent {
  const factory FoldersEvent.folderLoaded() = FoldersLoaded;
  const factory FoldersEvent.folderRefreshed() = FolderRefreshed;
}
