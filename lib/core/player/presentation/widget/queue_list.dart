import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phantom/core/player/presentation/bloc/player_bloc/player_bloc.dart';
import 'package:phantom/core/player/presentation/bloc/queue_bloc/queue_bloc.dart';
import 'package:phantom/core/widget/common_list_tile_item.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class QueueList extends StatefulWidget {
  final SheetController sheetController;
  const QueueList({
    Key? key,
    required this.sheetController,
  }) : super(key: key);

  @override
  State<QueueList> createState() => _QueueListState();
}

class _QueueListState extends State<QueueList> {
  late final _queueListScrollController = ScrollController();
  @override
  void initState() {
    _queueListScrollController.addListener(_queueScrollListener);
    super.initState();
  }

  bool _isAtMinScrollExtent() =>
      _queueListScrollController.position.atEdge &&
      _queueListScrollController.position.pixels == 0.0;

  bool _isSheetAtMaxExtent() => widget.sheetController.state!.progress == 1.0;
  bool _isSheetHalfOpen() => widget.sheetController.state!.progress == 0.5;

  void _queueScrollListener() {
    if (_isAtMinScrollExtent()) {
      _isSheetAtMaxExtent()
          ? widget.sheetController.snapToExtent(0.5)
          : widget.sheetController.snapToExtent(0.0);
    } else if (_isSheetHalfOpen()) {
      widget.sheetController.snapToExtent(1.0);
    }
  }

  @override
  void dispose() {
    _queueListScrollController.removeListener(_queueScrollListener);
    _queueListScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _media = MediaQuery.of(context);
    return BlocBuilder<QueueBloc, QueueState>(
      builder: (context, state) {
        return state.map(
          inProgress: (_) {
            return const Text('loading,,,'); // TODO : add loading state
          },
          loadSuccess: (queueLoadSuccess) {
            return Material(
              color: Colors.white,
              child: SizedBox(
                height: _media.size.height - _media.viewPadding.top,
                child: CustomScrollView(
                  controller: _queueListScrollController,
                  slivers: [
                    SliverReorderableList(
                      itemBuilder: (context, index) {
                        final _song =
                            queueLoadSuccess.songsContainer.songs[index];
                        return Material(
                          color: Colors.white.withOpacity(0),
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
                                  child:
                                      const Icon(Icons.drag_indicator_rounded),
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
              ),
            );
          },
        );
      },
    );
  }
}
