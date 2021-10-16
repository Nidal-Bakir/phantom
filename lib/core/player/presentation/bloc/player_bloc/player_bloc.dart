import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:just_audio/just_audio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:phantom/core/models/song/song.dart';
import 'package:phantom/core/models/songs_container/songs_container.dart';
import 'package:phantom/core/player/model/playing_song.dart';
import 'package:phantom/core/player/repository/player_repository.dart';

part 'player_event.dart';
part 'player_state.dart';
part 'player_bloc.freezed.dart';

class PlayerBloc extends Bloc<PlayerEvent, PlayerState> {
  final PlayerRepository _playerRepository;
  PlayerBloc(this._playerRepository) : super(const PlayerInitial()) {
    _playerRepository.playingSongStream.stream.listen((playingSong) {
      add(PlayerPlayingSongDataChanged(playingSong));
    });
    on<PlayerEvent>((event, emitter) async {
      await event.map(playerNewSongPlayed: (playerNewSongPlayed) {
        return _onNewSongPlayed(playerNewSongPlayed, emitter);
      }, playerSongFromQueuePlayed: (playerSongFromQueuePlayed) {
        return _onSongFromQueuePlayed(playerSongFromQueuePlayed, emitter);
      }, playerNextSongPlayed: (nextSongPlayed) {
        return _onNextSongPlayed(nextSongPlayed, emitter);
      }, playerPerviousSongPlayed: (perviousSongPlayed) {
        return _onPerviousSongPlayed(perviousSongPlayed, emitter);
      }, playerPlayingSongDataChanged: (playingSongDataChanged) {
        return _onPlayingSongDataChanged(playingSongDataChanged, emitter);
      }, playerPaused: (paused) {
        return _onPaused(paused, emitter);
      }, playerResumed: (resumed) {
        return _onResumed(resumed, emitter);
      }, loopModeChanged: (loopModeChanged) {
        return _onLoopModeChanged(loopModeChanged, emitter);
      }, playerSongSought: (songSought) {
        return _onSongSought(songSought, emitter);
      });
    });
  }
  FutureOr<void> _onNewSongPlayed(
    PlayerNewSongPlayed newSongPlayed,
    Emitter<PlayerState> emitter,
  ) async {
    await _playerRepository.setQueue(
      newSongPlayed.songsContainer.songs,
      newSongPlayed.songsContainer.albumArtwork,
      newSongPlayed.songOrder,
    );

    _playerRepository.play();
  }

  FutureOr<void> _onSongFromQueuePlayed(
      PlayerSongFromQueuePlayed songFromQueuePlayed,
      Emitter<PlayerState> emitter) async {
    await _playerRepository.seekToSongInQueue(songFromQueuePlayed.songOrder);
  }

  FutureOr<void> _onNextSongPlayed(
      PlayerNextSongPlayed nextSongPlayed, Emitter<PlayerState> emitter) async {
    await _playerRepository.seekToNext();
  }

  FutureOr<void> _onPerviousSongPlayed(
      PlayerPerviousSongPlayed perviousSongPlayed,
      Emitter<PlayerState> emitter) async {
    await _playerRepository.seekToPrevious();
  }

  FutureOr<void> _onPlayingSongDataChanged(
      PlayerPlayingSongDataChanged playerPlayingSongDataChanged,
      Emitter<PlayerState> emitter) async {
    emitter(PlayerPlaySuccuss(playerPlayingSongDataChanged.playingSong));
  }

  FutureOr<void> _onPaused(
      PlayerPaused playerPaused, Emitter<PlayerState> emitter) async {
    await _playerRepository.pause();
  }

  FutureOr<void> _onResumed(
      PlayerResumed playerResumed, Emitter<PlayerState> emitter) async {
    _playerRepository.play();
  }

  FutureOr<void> _onLoopModeChanged(PlayerLoopModeChanged playerLoopModeChanged,
      Emitter<PlayerState> emitter) async {
    final currentState = state;
    emitter(currentState.map(
        initial: (initial) => initial,
        playSuccuss: (playSuccuss) => playSuccuss
          ..playingSong.copyWith(loopMode: playerLoopModeChanged.loopMode),
        playSongFailure: (playSongFailure) => playSongFailure
          ..playingSong.copyWith(loopMode: playerLoopModeChanged.loopMode)));
  }

  FutureOr<void> _onSongSought(
      PlayerSongSought playerSongSought, Emitter<PlayerState> emitter) async {
    await _playerRepository.seekTo(playerSongSought.position);
  }
}
