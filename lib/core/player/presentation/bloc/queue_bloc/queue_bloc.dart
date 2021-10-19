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
      await event.map(queueNewSongPlayed: (queueNewSongPlayed) {
        return _onNewSongPlayed(queueNewSongPlayed, emitter);
      }, queueLoaded: (queueLoaded) {
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
    await _emitNewQueue(emitter);
  }

  FutureOr<void> _onNewSongPlayed(
    QueueNewSongPlayed newSongPlayed,
    Emitter<QueueState> emitter,
  ) async {
    await _playerRepository.setQueue(
      newSongPlayed.songsContainer.songs,
      newSongPlayed.songsContainer.albumArtwork,
      newSongPlayed.songOrder,
    );

    await _emitNewQueue(emitter);
    
    _playerRepository.play();

  }

  Future<void> _emitNewQueue(Emitter<QueueState> emitter) async {
    final queueSongs = await _playerRepository.queryQueueSongs();
    final cpsIndexStream = _playerRepository.getCurrentlyPlayingIndexStream();
    emitter(QueueState.loadSuccess(
      queueSongs,
      cpsIndexStream,
    ));
  }

  FutureOr<void> _onQueueSongRemoved(
    QueueSongRemoved queueSongRemoved,
    Emitter<QueueState> emitter,
  ) async {
    await _playerRepository.removeSongFromQueue(queueSongRemoved.order);
    await _emitNewQueue(emitter);
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
    await _emitNewQueue(emitter);
  }

  FutureOr<void> _onQueueSongsAdded(
    QueueSongsAdded queueSongsAdded,
    Emitter<QueueState> emitter,
  ) async {
    await _playerRepository.addListOfSongsToPlayNext(
      queueSongsAdded.songsContainer.songs,
      queueSongsAdded.songsContainer.albumArtwork,
    );
    await _emitNewQueue(emitter);
  }

  FutureOr<void> _onQueueSongReordered(
    QueueSongReordered queueSongReordered,
    Emitter<QueueState> emitter,
  ) async {
    await _playerRepository.reorderSong(
        queueSongReordered.from, queueSongReordered.to);
    await _emitNewQueue(emitter);
  }

  FutureOr<void> _onQueueCleared(
    QueueCleared queueCleared,
    Emitter<QueueState> emitter,
  ) async {
    await _playerRepository.clearQueue();

    await _emitNewQueue(emitter);
  }
}
