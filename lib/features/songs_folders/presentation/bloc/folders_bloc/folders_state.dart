part of 'folders_bloc.dart';
@freezed
class FoldersState with _$FoldersState  {
 const factory FoldersState.foldersInProgress()=FoldersInProgress;

 const factory FoldersState.foldersLoadSuccess(UnmodifiableListView<SongsFolder> folders)=FoldersLoadSuccess;
}