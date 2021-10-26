import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phantom/core/player/presentation/bloc/player_bloc/player_bloc.dart';
import 'package:phantom/core/player/presentation/bloc/queue_bloc/queue_bloc.dart';
import 'package:phantom/core/player/presentation/widget/player_action_buttons.dart';
import 'package:phantom/core/player/presentation/widget/player_control_buttons.dart';
import 'package:phantom/core/player/presentation/widget/player_queue_as_artwork.dart';
import 'package:phantom/core/player/presentation/widget/player_song_info_with_options.dart';
import 'package:phantom/core/player/presentation/widget/player_song_slider_and_duration.dart';
import 'package:phantom/core/player/presentation/widget/queue_list.dart';
import 'package:phantom/core/util/constants.dart';
import 'package:snapping_sheet/snapping_sheet.dart';

class PlayerScreen extends StatefulWidget {
  const PlayerScreen({Key? key}) : super(key: key);

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  late final _queueScrollController = ScrollController();
  late final _sheetController = SnappingSheetController();

  bool get _isQueueSheetOpen {
    return Constants.openQueueSheetOffset >=
        _sheetController.currentSnappingPosition.grabbingContentOffset;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
          body: SafeArea(
        child: SnappingSheet(
          lockOverflowDrag: true,
          controller: _sheetController,
          sheetBelow: SnappingSheetContent(
            childScrollController: _queueScrollController,
            draggable: true,
            child: QueueList(
              slideSheetScrollController: _queueScrollController,
            ),
          ),
          child: GestureDetector(
            onTap: () {
              _sheetController.snapToPosition(
                const SnappingPosition.factor(
                  positionFactor: 0.0,
                ),
              );
            },
            onVerticalDragEnd: (details) {
              _sheetController.snapToPosition(
                const SnappingPosition.factor(
                  positionFactor: Constants.queueOpenSnapFactor,
                ),
              );
            },
            child: Column(
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
                BlocBuilder<PlayerBloc, PlayerState>(
                    builder: (context, playerState) {
                  return playerState.when(initial: () {
                    return Container();
                  }, playSongSuccuss: (playingSong) {
                    return Column(
                      children: [
                        PlayerSongInfoWithOptions(playingSong: playingSong),
                        PlayerActionButtons(sheetController: _sheetController),
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
          ),
        ),
      )),
    );
  }

  Future<bool> _onWillPop() async {
    if (_isQueueSheetOpen) {
      await _sheetController
          .snapToPosition(const SnappingPosition.factor(positionFactor: 0.0));
      return false;
    }
    return true;
  }
}
