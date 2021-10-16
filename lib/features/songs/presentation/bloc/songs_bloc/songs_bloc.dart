import 'dart:async';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:phantom/core/models/song/song.dart';
import 'package:phantom/core/models/songs_container/songs_container.dart';
import 'package:phantom/core/sync/dispatcher/delta_dispatcher.dart';
import 'package:phantom/core/util/sort.dart';
import 'package:phantom/features/songs/repository/songs_repository.dart';

part 'songs_bloc.freezed.dart';
part 'songs_event.dart';
part 'songs_state.dart';

class SongsBloc extends Bloc<SongsEvent, SongsState> {
  final DeltaDispatcher _deltaDispatcher;
  final SongsRepository _songsRepository;
  late final StreamSubscription streamSubscription;

  SongsBloc(
    this._deltaDispatcher,
    this._songsRepository,
  ) : super(const SongsInProgress()) {
    on<SongsEvent>((SongsEvent songEvent, Emitter<SongsState> emitter) async {
      await songEvent.map(
          songsLoaded: (songsLoaded) => _onSongsLoaded(songsLoaded, emitter),
          songsSorted: (songsSorted) => _onSongsSorted(songsSorted, emitter),
          songsRefreshed: (songsRefreshed) =>
              _onSongsRefreshed(songsRefreshed, emitter),
          songsAdded: (songsAdded) => _onSongsAdded(songsAdded, emitter),
          songsDeleted: (songsDeleted) =>
              _onSongsDeleted(songsDeleted, emitter),
          songsUpdated: (songsUpdated) =>
              _onSongsUpdated(songsUpdated, emitter));
    });

    streamSubscription = _deltaDispatcher.deltaStream.listen((deltaEvent) {
      // when new songs added or deleted form database.
      deltaEvent.when(
        newAddedSongs: (newSongs) =>
            add(SongsAdded(newSongs)),
        deletedSongsIds: (Set<int> deletedSongsIds) =>
            add(SongsDeleted(deletedSongsIds)),
        updatedSongs: (List<Song> updatedSongs) =>
            add(SongsUpdated(updatedSongs)),
        donePublishing: () => null,
      );
    });
  }

  @override
  Future<void> close() {
    streamSubscription.cancel();
    return super.close();
  }

  /// Reload songs from the local database if [fromDevice] is false.
  ///
  /// If [fromDevice] is true, sync the songs from local database with songs on the device then reload
  /// the songs from the local database.
  ///
  /// ``coped from [SongsRefreshed]``
  FutureOr<void> _onSongsRefreshed(
    SongsRefreshed songsRefreshed,
    Emitter<SongsState> emitter,
  ) async {
    if (songsRefreshed.fromDevice) {
      _deltaDispatcher.startSongsSyncing();
      // Wait for a signal from dispatcher, no need for query song from local
      // database because it's redundant or maybe there is no update.
      return;
    }
    final _currentState = state;
    var sort = const Sort(
      orderType: SongOrderType.asc,
      sortType: SongSortType.songName,
    );

    if (_currentState is SongsLoadSuccess) {
      // to restore the user sort option
      sort = _currentState.sort;
    }
    final songsContainer = await _songsRepository.querySongs(sort: sort);

    emitter(SongsLoadSuccess(
      sort: sort,
      songsContainer: songsContainer,
    ));
  }

  /// load songs form local database with sort.
  ///
  /// ``coped from [SongsLoaded]``
  FutureOr<void> _onSongsLoaded(
    SongsLoaded songsLoaded,
    Emitter<SongsState> emitter,
  ) async {
    final songsContainer = await _songsRepository.querySongs(
      sort: songsLoaded.sort,
    );

    emitter(SongsLoadSuccess(
      sort: songsLoaded.sort,
      songsContainer: songsContainer,
    ));
  }

  /// Reload the songs with different order.
  ///
  /// ``coped from [SongsSorted]``
  FutureOr<void> _onSongsSorted(
    SongsSorted songsSorted,
    Emitter<SongsState> emitter,
  ) async {
    emitter(const SongsInProgress());

    final songsContainer = await _songsRepository.querySongs(
      sort: songsSorted.sort,
    );
    emitter(SongsLoadSuccess(
      sort: songsSorted.sort,
      songsContainer: songsContainer,
    ));
  }

  /// Added new Songs to current list of songs.
  ///
  /// ``coped from [SongsAdded]``
  _onSongsAdded(SongsAdded songsAdded, Emitter<SongsState> emitter) async {
    final _currentState = state;

    var sort = const Sort(
      orderType: SongOrderType.asc,
      sortType: SongSortType.songName,
    );

    if (_currentState is SongsLoadSuccess) {
      // to restore the user sort option
      sort = _currentState.sort;
    }

    final songsContainer = await _songsRepository.querySongs(sort: sort);

    emitter(SongsLoadSuccess(
      sort: sort,
      songsContainer: songsContainer,
    ));
  }

  /// Delete songs form current song list.
  ///
  /// ``coped from [SongsDeleted]``
  _onSongsDeleted(SongsDeleted songsDeleted, Emitter<SongsState> emitter) {
    final _currentState = state;
    if (_currentState is SongsLoadSuccess) {
      emitter(
        SongsLoadSuccess(
          songsContainer: _currentState.songsContainer.copyWith(
            songs: UnmodifiableListView(
              _currentState.songsContainer.songs.toList()
                ..removeWhere((element) =>
                    songsDeleted.deletedSongsIds.contains(element.id)),
            ),
          ),
          sort: _currentState.sort,
        ),
      );
    }
  }

  /// Update songs in the songs list.
  ///
  /// ``coped from [SongsUpdated]``
  _onSongsUpdated(SongsUpdated songsUpdated, Emitter<SongsState> emitter) {
    final _currentState = state;
    if (_currentState is SongsLoadSuccess) {
      final updatedSongList = _replaceOutDatedSongsWithUpdatedOnes(
          _currentState.songsContainer.songs.toList(), songsUpdated);

      emitter(
        SongsLoadSuccess(
          songsContainer: _currentState.songsContainer.copyWith(
            songs: UnmodifiableListView(updatedSongList),
          ),
          sort: _currentState.sort,
        ),
      );
    }
  }

  List<Song> _replaceOutDatedSongsWithUpdatedOnes(
      List<Song> updatedSongList, SongsUpdated songsUpdated) {
    for (var updatedSong in songsUpdated.updatedSongs) {
      final outDatedSongIndex =
          updatedSongList.indexWhere((element) => element.id == updatedSong.id);
      updatedSongList.removeAt(outDatedSongIndex);
      updatedSongList.insert(outDatedSongIndex, updatedSong);
    }
    return updatedSongList;
  }
}
