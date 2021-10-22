import 'dart:async';
import 'dart:collection';
import 'dart:typed_data';
import 'dart:collection';
import 'package:just_audio/just_audio.dart';
import 'package:rxdart/rxdart.dart';
import 'package:phantom/core/data/currently_playing_song_data_source.dart';
import 'package:phantom/core/data/database/database_table.dart';
import 'package:phantom/core/models/currently_playing_song/currently_playing_song.dart';
import 'package:phantom/core/models/song/song.dart';
import 'package:phantom/core/models/songs_container/songs_container.dart';
import 'package:phantom/core/player/data/player_service/player_service.dart';
import 'package:phantom/core/player/data/queue_data_source/queue_data_source.dart';
import 'package:phantom/core/player/model/playing_song.dart';

class PlayerRepository {
  final QueueDataSource _queueDataSource;
  final PlayerService _playerService;
  final CurrentlyPlayingSongDataSource _currentlyPlayingSongDataSource;
  final _playingSongStreamController = StreamController<PlayingSong?>();

  final LinkedList<Song> _queue = LinkedList();
  Map<int, Uint8List?> _artworks = {};

  PlayerRepository(
    this._queueDataSource,
    this._currentlyPlayingSongDataSource,
    this._playerService,
  ) {
    Rx.combineLatest2<PlayerState, PlaybackEvent, PlayingSong?>(
        _playerService.getPlayerStateStream(),
        _playerService.getPlaybackEventStream(), (playerState, playbackEvent) {
      final cpsIndex = _playerService.obtainCurrentlyPlayingIndex();
      if (cpsIndex != null &&
          cpsIndex < _queue.length &&
          (playbackEvent.processingState == ProcessingState.ready ||
              playbackEvent.processingState == ProcessingState.completed)) {
        return PlayingSong(
          cpsIndex: cpsIndex,
          icyMetadata: _playerService.getIcyMetadata(),
          loopMode: _playerService.getLoopMode(),
          playerState: playerState,
          songDuration: playbackEvent.duration,
          position: _playerService.getPositionStream(),
          song: _queue.elementAt(cpsIndex),
        );
      }
    }).pipe(_playingSongStreamController);
  }

  Stream<PlayingSong?> get playingSongStream =>
      _playingSongStreamController.stream;

  Future<void> saveCurrentPlayingSong() =>
      _playerService.saveCurrentPlayingSong();

  Future<void> seekToNext() => _playerService.seekToNext();

  Future<void> play() => _playerService.play();

  int? obtainCurrentlyPlayingIndex() =>
      _playerService.obtainCurrentlyPlayingIndex();

  Stream<int?> getCurrentlyPlayingIndexStream() =>
      _playerService.getCurrentlyPlayingIndexStream();

  Future<void> pause() => _playerService.pause();

  Future<void> seekToPrevious() => _playerService.seekToPrevious();

  Future<void> setLoopMode(LoopMode mode) => _playerService.setLoopMode(mode);

  Future<void> seekTo(Duration position) => _playerService.seekTo(position);

  Future<void> seekToSongInQueue(int sequenceIndex) =>
      _playerService.seekToSongInQueue(sequenceIndex);

  Future<void> setQueue(UnmodifiableListView<Song> queueSong,
      Map<int, Uint8List?>? artworks, int offset) async {
    _queue
      ..clear()
      ..addAll(queueSong);
    _artworks = artworks ?? {};
    _queueDataSource.setQueue(queueSong);
    await _playerService.setAudioSource(queueSong, offset);
  }

  Future<void> removeSongFromQueue(int songOrder) async {
    await _playerService.removeAudioSource(songOrder);
    _queueDataSource.removeSongFromQueue(songOrder);
    _queue.elementAt(songOrder).unlink();
  }

  Future<void> addListOfSongsToPlayNext(
      List<Song> songs, Map<int, Uint8List?>? artworks) async {
    _artworks.addAll(artworks ?? {});

    final cpsIndex = _playerService.obtainCurrentlyPlayingIndex();
    if (cpsIndex == null) {
      await _playerService.setAudioSource(songs, 0);
      _queueDataSource.setQueue(songs);
      _queue
        ..clear()
        ..addAll(songs);
    } else {
      final cps = _queue.elementAt(cpsIndex);
      await _playerService.addToPlayNext(songs);
      _queueDataSource.addToPlayNext(songs, cps);
      for (int i = songs.length; i > 0; i--) {
        cps.insertAfter(songs[i]);
      }
    }
  }

  Future<int?> clearQueue() async {
    final cpsIndex = await _playerService.clearAudioSource();
    if (cpsIndex != null) {
      final currentlyPlayingSong = _queue.elementAt(cpsIndex);
      _queueDataSource.clearQueue(currentlyPlayingSong);
      _queue
        ..clear()
        ..add(currentlyPlayingSong);
    }
    return cpsIndex;
  }

  Future<void> reorderSong(int from, int to) async {
    await _playerService.reorderSong(from, to);
    final song = _queue.elementAt(from)..unlink();
    _queue.elementAt(to).insertBefore(song);
    _queueDataSource.setQueue(_queue);
  }

  Future<SongsContainer> queryQueueSongs() async {
    final currentlyPlayingSong =
        await _currentlyPlayingSongDataSource.getCurrentlyPlayingSong();

    if (_queue.isNotEmpty) {
      return SongsContainer(
        songs: UnmodifiableListView(_queue),
        albumArtwork: _artworks,
        currentlyPlayingSong: currentlyPlayingSong,
      );
    }

    final queueSongs = await _getQueueSongs();
    _artworks = await _getQueueSongsArtworks(queueSongs);

    _queue
      ..clear()
      ..addAll(queueSongs);

    if (queueSongs.isNotEmpty) {
      await _playerService.setAudioSource(
        queueSongs,
        _extractTheCurrentPlayingSongIndex(queueSongs, currentlyPlayingSong),
        initialPosition: currentlyPlayingSong?.currentPlayPosition,
      );
    }

    return SongsContainer(
      songs: queueSongs,
      albumArtwork: _artworks,
      currentlyPlayingSong: currentlyPlayingSong,
    );
  }

  int _extractTheCurrentPlayingSongIndex(
    UnmodifiableListView<Song> queueSongs,
    CurrentlyPlayingSong? currentlyPlayingSong,
  ) {
    if (currentlyPlayingSong != null) {
      final cpsIndex = queueSongs.indexWhere(
          (element) => element.absolutePath == currentlyPlayingSong.songPath);
      if (cpsIndex != -1) {
        return cpsIndex;
      }
    }
    return 0;
  }

  Future<UnmodifiableListView<Song>> _getQueueSongs() async {
    final songsListOfMap = await _queueDataSource.queryQueueSongs();
    final queueSong = songsListOfMap.map((e) => Song.fromJson(e)).toList();
    return UnmodifiableListView(queueSong);
  }

  Future<Map<int, Uint8List?>> _getQueueSongsArtworks(
      List<Song> queueSongs) async {
    final songsAlbumIds = queueSongs
        .where((element) => element.albumId != null)
        .map((e) => e.albumId!)
        .toSet();
    final artworkListOfMap =
        await _queueDataSource.queryArtworksForSongsAlbumIds(songsAlbumIds);

    //folded to one map rather than list of map.
    return artworkListOfMap.fold<Map<int, Uint8List?>>(
        {},
        (previousValue, element) => previousValue
          ..putIfAbsent(element[ArtworkTable.albumId] as int,
              () => element[ArtworkTable.albumArtwork] as Uint8List?));
  }
}
