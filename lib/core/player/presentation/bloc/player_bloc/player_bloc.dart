import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:just_audio/just_audio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:phantom/core/models/song/song.dart';
import 'package:phantom/core/player/model/playing_song.dart';
import 'package:phantom/core/player/repository/player_repository.dart';

part 'player_event.dart';
part 'player_state.dart';
part 'player_bloc.freezed.dart';

class PlayerBloc extends Bloc<PlayerEvent, PlayerState> {
  final PlayerRepository _playerRepository;
  PlayerBloc(this._playerRepository) : super(const PlayerInitial()) {
    _playerRepository.playingSongStream.listen((playingSong) {
      if (playingSong != null) {
        add(PlayerPlayingSongDataChanged(playingSong));
      }
    });
    on<PlayerEvent>((event, emitter) async {
      await event.map(playerSongFromQueuePlayed: (playerSongFromQueuePlayed) {
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
    emitter(PlayerPlaySongSuccuss(playerPlayingSongDataChanged.playingSong));
  }

  FutureOr<void> _onPaused(
      PlayerPaused playerPaused, Emitter<PlayerState> emitter) async {
    await _playerRepository.pause();
    await _playerRepository.saveCurrentPlayingSong();
  }

  FutureOr<void> _onResumed(
      PlayerResumed playerResumed, Emitter<PlayerState> emitter) async {
    _playerRepository.play();
  }

  FutureOr<void> _onLoopModeChanged(PlayerLoopModeChanged playerLoopModeChanged,
      Emitter<PlayerState> emitter) async {
    await _playerRepository.setLoopMode(playerLoopModeChanged.loopMode);
    final currentState = state;
    final playerState = currentState.map<PlayerState>(
        initial: (initial) => initial,
        playSongSuccuss: (playSongSuccuss) {
          final currentPlayingSong = playSongSuccuss.playingSong;
          return PlayerPlaySongSuccuss(currentPlayingSong.copyWith(
              loopMode: playerLoopModeChanged.loopMode));
        },
        playSongFailure: (playSongFailure) {
          final currentPlayingSong = playSongFailure.playingSong;
          return PlayerPlaySongLoadFailure(currentPlayingSong.copyWith(
              loopMode: playerLoopModeChanged.loopMode));
        });
    emitter(playerState);
  }

  FutureOr<void> _onSongSought(
      PlayerSongSought playerSongSought, Emitter<PlayerState> emitter) async {
    await _playerRepository.seekTo(playerSongSought.position);
  }
}
