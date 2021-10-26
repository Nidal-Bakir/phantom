import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phantom/core/player/presentation/bloc/player_bloc/player_bloc.dart';
import 'package:phantom/core/player/presentation/bloc/queue_bloc/queue_bloc.dart';
import 'package:phantom/core/player/presentation/widget/player_control_buttons.dart';
import 'package:phantom/core/player/presentation/widget/player_queue_as_artwork.dart';
import 'package:phantom/core/player/presentation/widget/player_song_info_with_options.dart';
import 'package:phantom/core/player/presentation/widget/player_song_slider_and_duration.dart';
import 'package:phantom/core/player/presentation/widget/queue_list.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class PlayerScreen extends StatefulWidget {
  const PlayerScreen({Key? key}) : super(key: key);

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  late final _sheetController = SheetController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        body: SafeArea(
          child: SlidingSheet(
            minHeight: 0.0,
            addTopViewPaddingOnFullscreen: true,
            controller: _sheetController,
            cornerRadius: 15,
            cornerRadiusOnFullscreen: 0.0,
            closeOnBackdropTap: true,
            closeOnBackButtonPressed: true,
            backdropColor: Colors.black26,
            isBackdropInteractable: true,
            duration: const Duration(milliseconds: 500),
            snapSpec:
                const SnapSpec(initialSnap: 0.0, snappings: [0.0, 0.5, 1.0]),
            scrollSpec: const ScrollSpec(showScrollbar: true),
            headerBuilder: (context, state) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      _sheetController.snapToExtent(0.0,
                          duration: const Duration(milliseconds: 500));
                    },
                    icon: const RotatedBox(
                      quarterTurns: 1,
                      child: Icon(Icons.arrow_forward_ios_rounded),
                    ),
                  ),
                  Text('Queue'),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.more_vert_rounded),
                  ),
                ],
              ),
            ),
            builder: (context, state) => const QueueList(),
            body: _PlayerBody(sheetController: _sheetController),
          ),
        ),
      ),
    );
  }

  Future<bool> _onWillPop() async {
    if (_sheetController.state?.isShown ?? false) {
      await _sheetController.collapse();

      return false;
    }
    return true;
  }
}

class _PlayerBody extends StatelessWidget {
  final SheetController sheetController;
  const _PlayerBody({
    Key? key,
    required this.sheetController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragEnd: (details) {
        sheetController.snapToExtent(0.5,
            duration: const Duration(milliseconds: 300));
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          BlocBuilder<QueueBloc, QueueState>(
            builder: (context, queueState) {
              return queueState.when(
                inProgress: () {
                  return const Text('inProgress');
                },
                loadSuccess: (cpsIndexStream, songsContainer, cpsIndex) {
                  return PlayerQueueAsArtwork(
                    songsContainer: songsContainer,
                    cpsIndexStream: cpsIndexStream,
                    cpsIndex: cpsIndex,
                  );
                },
              );
            },
          ),
          BlocBuilder<PlayerBloc, PlayerState>(builder: (context, playerState) {
            return playerState.when(initial: () {
              return Container();
            }, playSongSuccuss: (playingSong) {
              return Column(
                children: [
                  PlayerSongInfoWithOptions(playingSong: playingSong),
                  // PlayerActionButtons(sheetController: _sheetController),
                  PlayerSongSliderAndDuration(playingSong: playingSong),
                  PlayerControlButtons(playingSong: playingSong),
                  Container(
                    color: Colors.amber,
                    child: const SizedBox(
                      height: 60,
                      width: double.infinity,
                      child: Text(
                        'some waves...',
                        style: TextStyle(fontSize: 50),
                      ),
                    ),
                  )
                ],
              );
            }, playSongFailure: (playingSong) {
              return Row(
                children: [], // TODO :: implement the error state
              );
            });
          }),
        ],
      ),
    );
  }
}
