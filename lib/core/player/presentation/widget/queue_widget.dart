import 'dart:async';
import 'dart:collection';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:phantom/core/models/song/song.dart';
import 'package:phantom/core/models/songs_container/songs_container.dart';
import 'package:phantom/core/player/presentation/bloc/player_bloc/player_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QueueWidget extends StatefulWidget {
  final SongsContainer<UnmodifiableListView<Song>> songsContainer;
  final Stream<int?> cppIndexStream;
  const QueueWidget({
    Key? key,
    required this.songsContainer,
    required this.cppIndexStream,
  }) : super(key: key);

  @override
  _QueueWidgetState createState() => _QueueWidgetState();
}

class _QueueWidgetState extends State<QueueWidget> {
  late final _pageController = PageController();
  bool _userInput = true;
  int? _cpsIndex;
  @override
  void initState() {
    widget.cppIndexStream.listen((event) {
      if (_pageController.hasClients) {
        _userInput = false;
        runZonedGuarded(() {
          _pageController
              .animateToPage(event ?? 0,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.ease)
              .then((value) => _userInput = true);
        }, (error, stacktrace) {
          log('_pageController.animateToPage can not move the pageView',
              error: error, stackTrace: stacktrace);
        });
      }
      _cpsIndex = event;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: NotificationListener<ScrollNotification>(
        onNotification: (notification) {
          if (notification is ScrollEndNotification) {
            final page = (notification.metrics as PageMetrics).page!.round();
            if (_userInput) {
              if (page == _cpsIndex! + 1) {
                context.read<PlayerBloc>().add(const PlayerNextSongPlayed());
              } else if (page == _cpsIndex! - 1) {
                context
                    .read<PlayerBloc>()
                    .add(const PlayerPerviousSongPlayed());
              }
            }
          }
          return true;
        },
        child: PageView.builder(restorationId: 'songs',
          itemCount: widget.songsContainer.songs.length,
          controller: _pageController,
          itemBuilder: (context, index) {
            final _song = widget.songsContainer.songs[index];
            return Image.memory(
              widget.songsContainer.albumArtwork[_song
                  .albumId]!, // TODO : remove the ! and handle the null inage
            );
          },
        ),
      ),
    );
  }
}
