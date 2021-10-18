part of 'queue_bloc.dart';

@freezed
class QueueEvent with _$QueueEvent {
  const factory QueueEvent.queueLoaded() = QueueLoaded;

  const factory QueueEvent.queueNewSongPlayed(
    SongsContainer songsContainer,
    int songOrder,
  ) = QueueNewSongPlayed;

  const factory QueueEvent.queueSongRemoved(Song song, int order) =
      QueueSongRemoved;

  const factory QueueEvent.queueSongAdded(Song song, Uint8List? artwork) =
      QueueSongAdded;

  const factory QueueEvent.queueSongsAdded(
          SongsContainer<UnmodifiableListView<Song>> songsContainer) =
      QueueSongsAdded;

  const factory QueueEvent.queueSongReordered(int from, int to) =
      QueueSongReordered;

  const factory QueueEvent.queueCleared() = QueueCleared;
}
