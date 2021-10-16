part of 'queue_bloc.dart';

@freezed
class QueueState with _$QueueState {
  const factory QueueState.inProgress() = QueueInProgress;

  const factory QueueState.loadSuccess(
    SongsContainer songsContainer,
  ) = QueueLoadSuccess;
 
}
