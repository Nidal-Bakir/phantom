part of 'songs_bloc.dart';

@freezed
class SongsState with _$SongsState {
  const factory SongsState.inProgress() = SongsInProgress;

  const factory SongsState.songLoadSuccess({
    required Sort sort,
    required SongsContainer songsContainer,
  }) = SongsLoadSuccess;
}
