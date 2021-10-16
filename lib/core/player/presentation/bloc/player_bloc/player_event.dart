part of 'player_bloc.dart';

@freezed
class PlayerEvent with _$PlayerEvent {

  const factory PlayerEvent.playerNewSongPlayed(
    SongsContainer songsContainer,
    int songOrder,
  ) = PlayerNewSongPlayed;

  const factory PlayerEvent.playerSongFromQueuePlayed(
      Song song, int songOrder) = PlayerSongFromQueuePlayed;

  const factory PlayerEvent.playerNextSongPlayed() = PlayerNextSongPlayed;

  const factory PlayerEvent.playerPlayingSongDataChanged(
      PlayingSong playingSong) = PlayerPlayingSongDataChanged;

  const factory PlayerEvent.playerPerviousSongPlayed() =
      PlayerPerviousSongPlayed;

  const factory PlayerEvent.playerPaused() = PlayerPaused;

  const factory PlayerEvent.playerResumed() = PlayerResumed;

  const factory PlayerEvent.playerSongSought(Duration position) =
      PlayerSongSought;

  const factory PlayerEvent.loopModeChanged(LoopMode loopMode) =
      PlayerLoopModeChanged;
}
