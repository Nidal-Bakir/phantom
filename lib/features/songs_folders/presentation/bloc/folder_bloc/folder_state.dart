part of 'folder_bloc.dart';
@freezed
class FolderState with _$FolderState  {
 const factory FolderState.folderInProgress()=FolderInProgress;

 const factory FolderState.folderLoadSuccess(UnmodifiableListView<SongsFolder> folders)=FolderLoadSuccess;
}