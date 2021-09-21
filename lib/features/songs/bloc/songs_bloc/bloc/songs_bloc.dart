import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:phantom/core/models/song/song.dart';
import 'package:phantom/core/sync/dispatcher/delta_dispatcher.dart';
import 'package:phantom/core/util/constants.dart';
import 'package:phantom/features/songs/data/local_song_data_source.dart';
import 'package:phantom/core/models/delta/delta.dart';
import 'package:rxdart/rxdart.dart';

part 'songs_event.dart';
part 'songs_state.dart';
part 'songs_bloc.freezed.dart';

class SongsBloc extends Bloc<SongsEvent, SongsState> {
  final DeltaDispatcher _deltaDispatcher;
  final LocalSongDataSource _localSongDataSource;

  SongsBloc(this._localSongDataSource, this._deltaDispatcher)
      : super(const SongsInProgress()) {
    _deltaDispatcher.deltaStream.listen((deltaEvent) {
      // when new songs added to database.
      if (deltaEvent is SongsDelta) {
        add(const SongsRefreshed());
      }
    });
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
  Stream<SongsState> _songsRefreshedHandler(bool fromDevice) async* {
    if (fromDevice) {
      _deltaDispatcher.startSongsSyncing();
      // Wait for a signal from dispatcher, no need for query song from local
      // database because it's redundant.
      return;
    }
    var _currentState = state;
    var orderType = SongOrderType.asc;
    var sortType = SongSortType.songName;

    if (_currentState is SongsLoadSuccess) {
      // to restore the user sort option
      orderType = _currentState.orderType;
      sortType = _currentState.sortType;
    }
    yield* _localSongDataSource
        .querySongsFromLocalDatabase(
          songOrderType: orderType,
          songSortType: sortType,
          limit: Constants.pageSize,
        )
        .bufferCount(Constants.pageSize)
        .map((event) => SongsLoadSuccess(
              orderType: orderType,
              sortType: sortType,
              songs: UnmodifiableListView(event),
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
  ) async* {
    var _currentState = state;
    yield* _localSongDataSource
        .querySongsFromLocalDatabase(
          songOrderType: orderType,
          songSortType: sortType,
          limit: Constants.pageSize,
          offset: _currentState is SongsLoadSuccess
              // offset the number of songs in the current list and get
              // the next page (50 songs) from db.
              ? _currentState.songs.length
              : 0, // do not offset if it's the first page (call).
        )
        .bufferCount(Constants.pageSize)
        .map(
          (event) => SongsLoadSuccess(
            orderType: orderType,
            sortType: sortType,
            songs: UnmodifiableListView(
              [
                // add the current list to new list to emit.
                if (_currentState is SongsLoadSuccess) ..._currentState.songs,
                ...event
              ],
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

    yield* _localSongDataSource
        .querySongsFromLocalDatabase(
          songOrderType: orderType,
          songSortType: sortType,
          limit: Constants.pageSize,
        )
        .bufferCount(Constants.pageSize)
        .map((event) => SongsLoadSuccess(
              orderType: orderType,
              sortType: sortType,
              songs: UnmodifiableListView(event),
            ));
  }
}
