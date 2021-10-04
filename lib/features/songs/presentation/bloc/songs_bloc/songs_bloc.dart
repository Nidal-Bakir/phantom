import 'dart:async';
import 'dart:collection';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as concurrency;
import 'package:phantom/core/models/songs_container/songs_container.dart';
import 'package:phantom/core/sync/dispatcher/delta_dispatcher.dart';
import 'package:phantom/core/util/constants.dart';
import 'package:phantom/features/songs/data/local_song_data_source.dart';
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
    on<SongsLoaded>(_onSongsLoaded, transformer: concurrency.droppable());
    on<SongsRefreshed>(_onSongsRefreshed);
    on<SongsSorted>(_onSongsSorted);

    streamSubscription = _deltaDispatcher.deltaStream.listen((deltaEvent) {
      // when new songs added or deleted form database.
      deltaEvent.whenOrNull(
        newAddedSongs: (newSongs) => add(const SongsRefreshed()),
        donePublishing: () => add(const SongsRefreshed()),
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
    var orderType = SongOrderType.asc;
    var sortType = SongSortType.songName;

    if (_currentState is SongsLoadSuccess) {
      // to restore the user sort option
      orderType = _currentState.orderType;
      sortType = _currentState.sortType;
    }
    final songsContainer = await _songsRepository.querySongs(
      songOrderType: orderType,
      songSortType: sortType,
      limit: Constants.pageSize,
    );
    emitter(SongsLoadSuccess(
      orderType: orderType,
      sortType: sortType,
      songsContainer: songsContainer,
    ));
  }

  /// (load)/(load more) songs form local database with sort.
  /// * load first page of songs.
  /// * Indicate that the user reached the bottom of the list and need more songs
  /// to display.
  ///
  /// ``coped from [SongsLoaded]``
  FutureOr<void> _onSongsLoaded(
    SongsLoaded songsLoaded,
    Emitter<SongsState> emitter,
  ) async {
    final _currentState = state;
    final songsContainer = await _songsRepository.querySongs(
      songOrderType: songsLoaded.songOrderType,
      songSortType: songsLoaded.songSortType,
      limit: Constants.pageSize,
      offset: _currentState is SongsLoadSuccess
          // offset the number of songs in the current list and get
          // the next page from db.
          ? _currentState.songsContainer.songs.length
          : 0, // do not offset if it's the first page (call).
    );

    if (songsContainer.songs.isEmpty) return;

    emitter(
      SongsLoadSuccess(
        isLastPage: songsContainer.songs.length < Constants.pageSize,
        orderType: songsLoaded.songOrderType,
        sortType: songsLoaded.songSortType,
        songsContainer: SongsContainer(
          songs: UnmodifiableListView(
            [
              // add the current list to new list to emit.
              if (_currentState is SongsLoadSuccess)
                ..._currentState.songsContainer.songs,
              ...songsContainer.songs
            ],
          ),
          albumArtwork: songsContainer.albumArtwork
            ..addAll(
              // add all new artworks from prev state
              _currentState is SongsLoadSuccess
                  ? _currentState.songsContainer.albumArtwork
                  : {},
            ),
        ),
      ),
    );
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
      songOrderType: songsSorted.songOrderType,
      songSortType: songsSorted.songSortType,
      limit: Constants.pageSize,
    );
    emitter(SongsLoadSuccess(
      orderType: songsSorted.songOrderType,
      sortType: songsSorted.songSortType,
      songsContainer: songsContainer,
    ));
  }
}
