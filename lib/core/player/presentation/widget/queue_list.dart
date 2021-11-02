import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phantom/core/player/presentation/bloc/player_bloc/player_bloc.dart';
import 'package:phantom/core/player/presentation/bloc/queue_bloc/queue_bloc.dart';
import 'package:phantom/core/widget/common_list_tile_item.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

typedef BoolCallback = bool Function();

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
  void dispose() {
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
            return RawGestureDetector(
              gestures: {
                CustomDragGestureRecognizer:
                    GestureRecognizerFactoryWithHandlers<
                        CustomDragGestureRecognizer>(
                  () => CustomDragGestureRecognizer(
                    isAtMinScrollExtent: _isAtMinScrollExtent,
                    isSheetHalfOpen: _isSheetHalfOpen,
                    onDragEnd: () {},
                    onDragStart: _onDragStart,
                    onDragUpdate: _onDragUpdate,
                  ),
                  (CustomDragGestureRecognizer initializer) {},
                ),
              },
              child: Material(
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
                                key:
                                    Key(_song.id.toString() + index.toString()),
                                onDismissed: (direction) {
                                  context
                                      .read<QueueBloc>()
                                      .add(QueueSongRemoved(_song, index));
                                },
                                child: CommonListTileItem(
                                  trailing: ReorderableDragStartListener(
                                    index: index,
                                    child: const Icon(
                                        Icons.drag_indicator_rounded),
                                  ),
                                  subtitle: _song.artist,
                                  title: _song.title,
                                  artwork: queueLoadSuccess.songsContainer
                                      .albumArtwork[_song.albumId],
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
              ),
            );
          },
        );
      },
    );
  }

  bool _isAtMinScrollExtent() =>
      _queueListScrollController.position.atEdge &&
      _queueListScrollController.position.pixels == 0.0;

  bool _isSheetHalfOpen() => widget.sheetController.state!.progress == 0.5;

  void _snapSheetToExtent(double extent) => widget.sheetController
      .snapToExtent(extent, duration: const Duration(milliseconds: 200));

  bool _isScrollingUp(Offset delta) => delta.dy.isNegative;
  bool _isScrollingDown(Offset delta) => !delta.dy.isNegative;

  bool _onDragStart() => _isSheetHalfOpen() || _isAtMinScrollExtent();

  void _onDragUpdate(Offset delta) {
    if (_isSheetHalfOpen()) {
      if (_isScrollingUp(delta)) {
        _snapSheetToExtent(1.0);
      } else {
        _snapSheetToExtent(0.0);
      }
    } else if (_isAtMinScrollExtent()) {
      if (_isScrollingDown(delta)) {
        _snapSheetToExtent(0.5);
      }
    }
  }
}

class CustomDragGestureRecognizer extends OneSequenceGestureRecognizer {
  static const _reorderButtonAreaOfLogicalPixels = 370;
  final BoolCallback onDragStart;
  final void Function(Offset delta) onDragUpdate;
  final VoidCallback onDragEnd;
  final BoolCallback isAtMinScrollExtent;
  final BoolCallback isSheetHalfOpen;

  CustomDragGestureRecognizer({
    required this.isAtMinScrollExtent,
    required this.isSheetHalfOpen,
    required this.onDragStart,
    required this.onDragUpdate,
    required this.onDragEnd,
  });

  @override
  String get debugDescription => 'CustomDragGestureRecognizer';

  @override
  void didStopTrackingLastPointer(int pointer) {}
  @override
  void addPointer(PointerDownEvent event) {
    if (onDragStart()) {
      startTrackingPointer(event.pointer);
    } else {
      stopTrackingPointer(event.pointer);
    }
  }

  @override
  void handleEvent(PointerEvent event) {
      
      
    if (event is PointerMoveEvent) {
      
      if (_isVerticalDragging(event) && !_isDragForReorder(event)) {
      
        _resolveValidVerticalDragging(event);
      } else {
        resolve(GestureDisposition.rejected);
        stopTrackingPointer(event.pointer);
      }
    } else if (event is PointerUpEvent) {
      onDragEnd();
      stopTrackingPointer(event.pointer);
    }
  }

  void _resolveValidVerticalDragging(PointerMoveEvent event) {
    if (isSheetHalfOpen()) {
      resolve(GestureDisposition.accepted);
      onDragUpdate(event.delta);
    } else if (isAtMinScrollExtent()) {
      if (_isScrollingUp(event)) {
        resolve(GestureDisposition.rejected);
        stopTrackingPointer(event.pointer);
      } else {
        resolve(GestureDisposition.accepted);
        onDragUpdate(event.delta);
      }
    }
  }

  bool _isScrollingUp(PointerMoveEvent event) => event.delta.dy.isNegative;

  bool _isVerticalDragging(PointerMoveEvent event) => event.delta.dy != 0.0;

  bool _isDragForReorder(PointerMoveEvent event) =>
      event.position.dx > _reorderButtonAreaOfLogicalPixels;
}
