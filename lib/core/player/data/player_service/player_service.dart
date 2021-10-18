import 'dart:developer';

import 'package:just_audio/just_audio.dart';
import 'package:phantom/core/data/currently_playing_song_data_source.dart';
import 'package:phantom/core/models/currently_playing_song/currently_playing_song.dart';
import 'package:phantom/core/models/song/song.dart';

abstract class PlayerService {
  Future<void> play();
  Future<void> pause();
  Future<void> dispose();
  Future<void> setAudioSource(Iterable<Song> songs, int offset,
      {Duration? initialPosition});
  Future<void> addToPlayNext(List<Song> songs);
  Future<void> removeAudioSource(int order);
  Future<void> reorderSong(int from, int to);
  Future<void> seekToNext();
  Future<void> seekToPrevious();
  Future<void> seekTo(Duration position);
  Future<void> seekToSongInQueue(int sequenceIndex);
  Stream<Duration> getPositionStream();
  int? obtainCurrentlyPlayingIndex();
  Stream<int?> getCurrentlyPlayingIndexStream();
  IcyMetadata? getIcyMetadata();
  Future<void> setLoopMode(LoopMode mode);
  LoopMode getLoopMode();
  Future<int?> clearAudioSource();
  Stream<PlayerState> getPlayerStateStream();
  Stream<PlaybackEvent> getPlaybackEventStream();
  Future<void> saveCurrentPlayingSong();
}

class PlayerServiceImp extends PlayerService {
  final _audioPlayer = AudioPlayer();
  final CurrentlyPlayingSongDataSource _currentlyPlayingSongDataSource;
  final ConcatenatingAudioSource _concatenatingAudioSource =
      ConcatenatingAudioSource(children: []);

  PlayerServiceImp(this._currentlyPlayingSongDataSource);

  @override
  Future<void> saveCurrentPlayingSong() async {
    final position = _audioPlayer.position;
    final sequenceState = _audioPlayer.sequenceState;
    if (sequenceState?.currentIndex != null &&
        sequenceState?.currentSource != null) {
      await _currentlyPlayingSongDataSource.setCurrentlyPlayingSong(
        CurrentlyPlayingSong(
          position,
          (sequenceState?.currentSource as ProgressiveAudioSource)
              .uri
              .toFilePath(),
        ),
      );
    }
  }

  @override
  int? obtainCurrentlyPlayingIndex() => _audioPlayer.currentIndex;

  @override
  Stream<Duration> getPositionStream() => _audioPlayer.positionStream;

  @override
  Stream<int?> getCurrentlyPlayingIndexStream() =>
      _audioPlayer.currentIndexStream;

  @override
  Stream<PlaybackEvent> getPlaybackEventStream() =>
      _audioPlayer.playbackEventStream;
  @override
  Stream<PlayerState> getPlayerStateStream() => _audioPlayer.playerStateStream;

  @override
  Future<void> play() async {
    if (!_audioPlayer.playing) {
      await _audioPlayer.play();
    }
  }

  @override
  Future<void> pause() async {
    if (_audioPlayer.playing) {
      await _audioPlayer.pause();
    }
  }

  @override
  Future<void> reorderSong(int from, int to) =>
      _concatenatingAudioSource.move(from, to);

  @override
  IcyMetadata? getIcyMetadata() => _audioPlayer.icyMetadata;

  @override
  Future<int?> clearAudioSource() async {
    final cpsIndex = obtainCurrentlyPlayingIndex();
    if (cpsIndex != null) {
      for (var i = 0; i < _concatenatingAudioSource.children.length; i++) {
        if (i == cpsIndex) {
          continue;
        }
        await _concatenatingAudioSource.removeAt(i);
      }
    }
    return cpsIndex;
  }

  @override
  Future<void> setAudioSource(Iterable<Song> songs, int offset,
      {Duration? initialPosition}) async {
    try {
      await _concatenatingAudioSource.clear();
      await _concatenatingAudioSource.addAll(_mapSongsToAudioSource(songs));

      await _audioPlayer.setAudioSource(
        _concatenatingAudioSource,
        initialPosition: initialPosition,
        initialIndex: offset,
      );
    } on PlayerException catch (e) {
      log('PlayerException : ',
          error: e.code.toString() + ' \n ' + e.message.toString());
    } on PlayerInterruptedException catch (e) {
      log('PlayerInterruptedException : ', error: e.message);
    } on Exception catch (e) {
      log('Exception, no audio source has been previously set : ', error: e);
    }
  }

  List<UriAudioSource> _mapSongsToAudioSource(Iterable<Song> songs) {
    return songs
        .map((e) => AudioSource.uri(Uri.parse(e.absolutePath)))
        .toList();
  }

  @override
  Future<void> addToPlayNext(List<Song> songs) async {
    final _currentIndex = _audioPlayer.currentIndex;
    await _concatenatingAudioSource.insertAll(
        _currentIndex == null ? 0 : _currentIndex + 1,
        _mapSongsToAudioSource(songs));
  }

  @override
  Future<void> removeAudioSource(int order) async {
    await _concatenatingAudioSource.removeAt(order);
  }

  @override
  Future<void> seekToNext() async {
    await _audioPlayer.seekToNext();
    play();
  }

  @override
  Future<void> seekToPrevious() async {
    await _audioPlayer.seekToPrevious();
    play();
  }

  @override
  Future<void> seekTo(Duration position) async {
    await _audioPlayer.seek(position);
  }

  @override
  Future<void> seekToSongInQueue(int sequenceIndex) async {
    await _audioPlayer.seek(null, index: sequenceIndex);
    play();
  }

  @override
  Future<void> dispose() async {
    await _audioPlayer.stop();
    await _audioPlayer.dispose();
  }

  @override
  LoopMode getLoopMode() {
    return _audioPlayer.loopMode;
  }

  @override
  Future<void> setLoopMode(LoopMode mode) async {
    await _audioPlayer.setLoopMode(mode);
  }
}
