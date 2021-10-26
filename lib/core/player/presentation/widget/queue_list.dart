import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phantom/core/player/presentation/bloc/player_bloc/player_bloc.dart';
import 'package:phantom/core/player/presentation/bloc/queue_bloc/queue_bloc.dart';
import 'package:phantom/core/widget/common_list_tile_item.dart';

class QueueList extends StatelessWidget {
  final ScrollController slideSheetScrollController;

  const QueueList({
    Key? key,
    required this.slideSheetScrollController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QueueBloc, QueueState>(
      builder: (context, state) {
        return state.map(
          inProgress: (_) {
            return const Text('loading,,,'); // TODO : add loading state
          },
          loadSuccess: (queueLoadSuccess) {
            return Material(
              child: CustomScrollView(
                controller:slideSheetScrollController,
                slivers: [
                  SliverReorderableList(
                    itemBuilder: (context, index) {
                      final _song =
                          queueLoadSuccess.songsContainer.songs[index];
                      return Material(
                        key: Key(_song.id.toString() + index.toString()),
                        child: InkWell(
                          onTap: () => context
                              .read<PlayerBloc>()
                              .add(PlayerSongFromQueuePlayed(_song, index)),
                          child: Dismissible(
                            key: Key(_song.id.toString() + index.toString()),
                            onDismissed: (direction) {
                              context
                                  .read<QueueBloc>()
                                  .add(QueueSongRemoved(_song, index));
                            },
                            child: CommonListTileItem(
                              trailing: ReorderableDragStartListener(
                                index: index,
                                child: const Icon(Icons.drag_indicator_rounded),
                              ),
                              subtitle: _song.artist,
                              title: _song.title,
                              artwork: queueLoadSuccess
                                  .songsContainer.albumArtwork[_song.albumId],
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: queueLoadSuccess.songsContainer.songs.length,
                    onReorder: (int oldIndex, int newIndex) {
                      context
                          .read<QueueBloc>()
                          .add(QueueSongReordered(oldIndex, newIndex));
                    },
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
