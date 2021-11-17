import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:phantom/core/models/songs_container/songs_container.dart';
import 'package:phantom/core/player/presentation/bloc/player_bloc/player_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlayerQueueAsArtwork extends StatefulWidget {
  final SongsContainer songsContainer;
  final Stream<int?> cpsIndexStream;
  const PlayerQueueAsArtwork({
    Key? key,
    required this.songsContainer,
    required this.cpsIndexStream,
  }) : super(key: key);

  @override
  _PlayerQueueAsArtworkState createState() => _PlayerQueueAsArtworkState();
}

class _PlayerQueueAsArtworkState extends State<PlayerQueueAsArtwork> {
  late final PageController _pageController = PageController();
  bool _isUserInput = true;
  int? _cpsIndex;

  @override
  void initState() {
    widget.cpsIndexStream.listen(_onCPSIndexChange);
    super.initState();
  }

  void _onCPSIndexChange(int? event) {
    if (event != null) {
      if (_pageController.hasClients) {
        _isUserInput = false;

        runZonedGuarded(() {
          if (_pageController.initialPage == 0) {
            _pageController.jumpToPage(event);
            _isUserInput = true;
          } else {
            _pageController
                .animateToPage(event,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.ease)
                .then((value) => _isUserInput = true);
          }
        }, (error, stacktrace) {
          log('_pageController.animateToPage can not move the pageView',
              error: error, stackTrace: stacktrace);
        });
      }
      _cpsIndex = event;
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: NotificationListener<ScrollNotification>(
        onNotification: (notification) =>
            _onScrollNotification(notification, context),
        child: PageView.builder(
          itemCount: widget.songsContainer.songs.length,
          controller: _pageController,
          itemBuilder: (context, index) {
            final _song = widget.songsContainer.songs[index];
            return Hero(
              tag: _song.id,
              key: Key(_song.id.toString() + index.toString()),
              child: Image.memory(
                widget.songsContainer.albumArtwork[_song
                    .albumId]!, // TODO : remove the ! and handle the null inage
              ),
            );
          },
        ),
      ),
    );
  }

  bool _onScrollNotification(
      ScrollNotification notification, BuildContext context) {
    if (notification is ScrollEndNotification) {
      final page = (notification.metrics as PageMetrics).page!.round();
      if (_isUserInput) {
        if (page == _cpsIndex! + 1) {
          context.read<PlayerBloc>().add(const PlayerNextSongPlayed());
        } else if (page == _cpsIndex! - 1) {
          context.read<PlayerBloc>().add(const PlayerPerviousSongPlayed());
        }
      }
    }
    return true;
  }
}
