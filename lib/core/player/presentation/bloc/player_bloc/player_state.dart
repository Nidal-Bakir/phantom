part of 'player_bloc.dart';

@freezed
class PlayerState with _$PlayerState {
  const factory PlayerState.initial() = PlayerInitial;
  const factory PlayerState.playSuccuss(PlayingSong playingSong) = PlayerPlaySuccuss;
  const factory PlayerState.playSongFailure(PlayingSong playingSong) = PlayerPlaySongLoadFailure;
  
}
