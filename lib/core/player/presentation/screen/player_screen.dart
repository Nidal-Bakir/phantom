import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phantom/core/player/presentation/bloc/player_bloc/player_bloc.dart';
import 'package:phantom/core/player/presentation/bloc/queue_bloc/queue_bloc.dart';

class PlayerScreen extends StatefulWidget {
  const PlayerScreen({Key? key}) : super(key: key);

  @override
  _PlayerScreenState createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocBuilder<QueueBloc, QueueState>(builder: (context, queueState) {
          return queueState.when(
            inProgress: () {
              return const Text('inProgress');
            },
            loadSuccess: (songsContainer) {
              return Expanded(
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: songsContainer.songs
                        .map((e) => Text(e.title))
                        .toList()),
              );
            },
          );
        }),
        BlocBuilder<PlayerBloc, PlayerState>(builder: (context, playerState) {
          return playerState.when(initial: () {
            return Container();
          }, playSuccuss: (playingSong) {
            return Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      context
                          .read<PlayerBloc>()
                          .add(const PlayerPerviousSongPlayed());
                    },
                    child: const Text('rev')),
                ElevatedButton(
                    onPressed: () {
                      context
                          .read<PlayerBloc>()
                          .add(const PlayerResumed());
                    },
                    child: const Text('play')),
                ElevatedButton(
                    onPressed: () {
                      context
                          .read<PlayerBloc>()
                          .add(const PlayerNextSongPlayed());
                    },
                    child: const Text('next')),
              ],
            );
          }, playSongFailure: (PlayingSong) {
            return Row(
              children: [],
            );
          });
        }),
      ],
    );
  }
}
