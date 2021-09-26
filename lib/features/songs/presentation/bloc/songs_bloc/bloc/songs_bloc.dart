import 'dart:async';
import 'dart:collection';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:phantom/core/models/delta/delta.dart';
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
    streamSubscription = _deltaDispatcher.deltaStream.listen((deltaEvent) {
      // when new songs added to database.
      if (deltaEvent is DeltaSongs) {
        add(const SongsRefreshed());
      }
    });
  }

  @override
  Future<void> close() {
    streamSubscription.cancel();
    return super.close();
  }

  @override
  Stream<SongsState> mapEventToState(
    SongsEvent event,
  ) async* {
    yield* event.when<Stream<SongsState>>(
      songsLoaded: _songsLoadedHandler,
      songsSorted: _songsSortedHandler,
      songsRefreshed: _songsRefreshedHandler,
    );
  }

  /// Reload songs from the local database if [fromDevice] is false.
  ///
  /// If [fromDevice] is true, sync the songs from local database with songs on the device then reload
  /// the songs from the local database.
  ///
  /// ``coped from [SongsRefreshed]``
  Stream<SongsState> _songsRefreshedHandler(bool fromDevice) {
    if (fromDevice) {
      _deltaDispatcher.startSongsSyncing();
      // Wait for a signal from dispatcher, no need for query song from local
      // database because it's redundant or maybe there is no update.
      return const Stream.empty();
    }
    final _currentState = state;
    var orderType = SongOrderType.asc;
    var sortType = SongSortType.songName;

    if (_currentState is SongsLoadSuccess) {
      // to restore the user sort option
      orderType = _currentState.orderType;
      sortType = _currentState.sortType;
    }
    return _songsRepository
        .querySongs(
          songOrderType: orderType,
          songSortType: sortType,
          limit: Constants.pageSize,
        )
        .asStream()
        .map((event) => SongsLoadSuccess(
              orderType: orderType,
              sortType: sortType,
              songsContainer: event,
            ));
  }

  /// (load)/(load more) songs form local database with sort.
  /// * load first page of songs.
  /// * Indicate that the user reached the bottom of the list and need more songs
  /// to display.
  ///
  /// ``coped from [SongsLoaded]``
  Stream<SongsState> _songsLoadedHandler(
    SongSortType sortType,
    SongOrderType orderType,
  ) {
    final _currentState = state;
    return _songsRepository
        .querySongs(
          songOrderType: orderType,
          songSortType: sortType,
          limit: Constants.pageSize,
          offset: _currentState is SongsLoadSuccess
              // offset the number of songs in the current list and get
              // the next page (50 songs) from db.
              ? _currentState.songsContainer.songs.length
              : 0, // do not offset if it's the first page (call).
        )
        .asStream()
        .map(
          (event) => SongsLoadSuccess(
            orderType: orderType,
            sortType: sortType,
            songsContainer: SongsContainer(
              songs: UnmodifiableListView(
                [
                  // add the current list to new list to emit.
                  if (_currentState is SongsLoadSuccess)
                    ..._currentState.songsContainer.songs,
                  ...event.songs
                ],
              ),
              albumArtwork: event.albumArtwork
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
  Stream<SongsState> _songsSortedHandler(
    SongSortType sortType,
    SongOrderType orderType,
  ) async* {
    yield const SongsInProgress();

    yield* _songsRepository
        .querySongs(
          songOrderType: orderType,
          songSortType: sortType,
          limit: Constants.pageSize,
        )
        .asStream()
        .map((event) => SongsLoadSuccess(
              orderType: orderType,
              sortType: sortType,
              songsContainer: event,
            ));
  }
}
