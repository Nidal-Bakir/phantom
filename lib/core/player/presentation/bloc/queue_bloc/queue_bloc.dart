import 'dart:async';
import 'dart:collection';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:phantom/core/models/song/song.dart';
import 'package:phantom/core/models/songs_container/songs_container.dart';
import 'package:phantom/core/player/repository/player_repository.dart';

part 'queue_event.dart';
part 'queue_state.dart';
part 'queue_bloc.freezed.dart';

class QueueBloc extends Bloc<QueueEvent, QueueState> {
  final PlayerRepository _playerRepository;
  QueueBloc(this._playerRepository) : super(const QueueInProgress()) {
    on<QueueEvent>((event, emitter) async {
      await event.map(queueLoaded: (queueLoaded) {
        return _onQueueLoaded(queueLoaded, emitter);
      }, queueSongRemoved: (queueSongRemoved) {
        return _onQueueSongRemoved(queueSongRemoved, emitter);
      }, queueSongAdded: (queueSongAdded) {
        return _onQueueSongAdded(queueSongAdded, emitter);
      }, queueSongsAdded: (queueSongsAdded) {
        return _onQueueSongsAdded(queueSongsAdded, emitter);
      }, queueSongReordered: (queueSongReordered) {
        return _onQueueSongReordered(queueSongReordered, emitter);
      }, queueCleared: (queueCleared) {
        return _onQueueCleared(queueCleared, emitter);
      });
    });
  }
  FutureOr<void> _onQueueLoaded(
    QueueLoaded queueLoaded,
    Emitter<QueueState> emitter,
  ) async {
    emitter(QueueState.loadSuccess(await _playerRepository.queryQueueSongs()));
  }

  FutureOr<void> _onQueueSongRemoved(
    QueueSongRemoved queueSongRemoved,
    Emitter<QueueState> emitter,
  ) async {
    await _playerRepository.removeSongFromQueue(queueSongRemoved.order);
    emitter(QueueState.loadSuccess(await _playerRepository.queryQueueSongs()));
  }

  FutureOr<void> _onQueueSongAdded(
    QueueSongAdded queueSongAdded,
    Emitter<QueueState> emitter,
  ) async {
    await _playerRepository.addListOfSongsToPlayNext(
      [queueSongAdded.song],
      queueSongAdded.song.albumId != null
          ? {queueSongAdded.song.albumId!: queueSongAdded.artwork}
          : null,
    );
    emitter(QueueState.loadSuccess(await _playerRepository.queryQueueSongs()));
  }

  FutureOr<void> _onQueueSongsAdded(
    QueueSongsAdded queueSongsAdded,
    Emitter<QueueState> emitter,
  ) async {
    await _playerRepository.addListOfSongsToPlayNext(
      queueSongsAdded.songsContainer.songs,
      queueSongsAdded.songsContainer.albumArtwork,
    );
    emitter(QueueState.loadSuccess(await _playerRepository.queryQueueSongs()));
  }

  FutureOr<void> _onQueueSongReordered(
    QueueSongReordered queueSongReordered,
    Emitter<QueueState> emitter,
  ) async {
    await _playerRepository.reorderSong(
        queueSongReordered.from, queueSongReordered.to);
    emitter(QueueState.loadSuccess(await _playerRepository.queryQueueSongs()));
  }

  FutureOr<void> _onQueueCleared(
    QueueCleared queueCleared,
    Emitter<QueueState> emitter,
  ) async {
    await _playerRepository.clearQueue();
    emitter(QueueState.loadSuccess(await _playerRepository.queryQueueSongs()));
  }
}
