import 'package:flutter/material.dart';
import 'package:phantom/core/player/model/playing_song.dart';
import 'package:phantom/core/player/presentation/bloc/player_bloc/player_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MiniPlayerControls extends StatelessWidget {
  final PlayingSong playingSong;
  const MiniPlayerControls({Key? key, required this.playingSong})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row (mainAxisSize: MainAxisSize.min,
      children: [
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
      ],
    );
  }
}
