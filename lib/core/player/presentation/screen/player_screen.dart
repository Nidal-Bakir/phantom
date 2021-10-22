import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:phantom/core/player/presentation/bloc/player_bloc/player_bloc.dart';
import 'package:phantom/core/player/presentation/bloc/queue_bloc/queue_bloc.dart';
import 'package:phantom/core/player/presentation/widget/player_control_buttons.dart';
import 'package:phantom/core/player/presentation/widget/player_song_info_with_options.dart';
import 'package:phantom/core/player/presentation/widget/player_song_slider_and_duration.dart';
import 'package:phantom/core/player/presentation/widget/plyaer_action_buttons.dart';
import 'package:phantom/core/player/presentation/widget/queue_widget.dart';

class PlayerScreen extends StatelessWidget {
  const PlayerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          BlocBuilder<QueueBloc, QueueState>(builder: (context, queueState) {
            return queueState.when(
              inProgress: () {
                return const Text('inProgress');
              },
              loadSuccess: (cpsIndexStream, songsContainer) {
                return QueueWidget(
                  songsContainer: songsContainer,
                  cppIndexStream: cpsIndexStream,
                );
              },
            );
          }),
          BlocBuilder<PlayerBloc, PlayerState>(builder: (context, playerState) {
            return playerState.when(initial: () {
              return Container();
            }, playSongSuccuss: (playingSong) {
              return Column(
                children: [
                  PlayerSongInfoWithOptions(playingSong: playingSong),
                  const PlayerActionButtons(),
                  PlayerSongSliderAndDuration(playingSong: playingSong),
                  PlayerControlButtons(playingSong: playingSong),
                ],
              );
            }, playSongFailure: (playingSong) {
              return Row(
                children: [],
              );
            });
          }),
        ],
      ),
    );
  }
}
