import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio/just_audio.dart';
import 'package:phantom/core/player/model/playing_song.dart';
import 'package:phantom/core/player/presentation/bloc/player_bloc/player_bloc.dart';

class PlayerControlButtons extends StatelessWidget {
  static const loopMoods = LoopMode.values;
  final PlayingSong playingSong;
  const PlayerControlButtons({Key? key, required this.playingSong})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.shuffle_rounded),
        ),
        IconButton(
          onPressed: () {
            context.read<PlayerBloc>().add(const PlayerPerviousSongPlayed());
          },
          icon: const Icon(Icons.skip_previous_rounded),
        ),
        if (playingSong.playerState.playing)
          IconButton(
            onPressed: () {
              context.read<PlayerBloc>().add(const PlayerPaused());
            },
            icon: const Icon(Icons.pause_rounded),
          ),
        if (!playingSong.playerState.playing)
          IconButton(
            onPressed: () {
              context.read<PlayerBloc>().add(const PlayerResumed());
            },
            icon: const Icon(Icons.play_arrow_rounded),
          ),
        IconButton(
          onPressed: () {
            context.read<PlayerBloc>().add(const PlayerNextSongPlayed());
          },
          icon: const Icon(Icons.skip_next_rounded),
        ),
        IconButton(
          onPressed: () {
            context.read<PlayerBloc>().add(
                  PlayerLoopModeChanged(
                    loopMoods[
                        (playingSong.loopMode.index + 1) % (loopMoods.length)],
                  ),
                );
          },
          icon: Icon(_mapLoopModeToIcon(playingSong.loopMode)),
        ),
      ],
    );
  }
}

IconData _mapLoopModeToIcon(LoopMode loopMode) {
  switch (loopMode) {
    case LoopMode.off:
      return Icons.double_arrow_rounded;
    case LoopMode.one:
      return Icons.replay;
    case LoopMode.all:
      return Icons.repeat;
  }
}
