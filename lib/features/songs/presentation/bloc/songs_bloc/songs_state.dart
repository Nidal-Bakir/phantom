part of 'songs_bloc.dart';

@freezed
class SongsState with _$SongsState {
  const factory SongsState.inProgress() = SongsInProgress;

  const factory SongsState.songLoadSuccess({
    required SongSortType sortType,
    required SongOrderType orderType,
    required SongsContainer songsContainer,
    @Default(false) bool isLastPage,
  }) = SongsLoadSuccess;
}
