import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phantom/core/models/song/song.dart';
import 'package:phantom/core/models/songs_container/songs_container.dart'
    show SongsContainer;
import 'package:phantom/core/player/presentation/bloc/player_bloc/player_bloc.dart';
import 'package:phantom/core/player/presentation/bloc/queue_bloc/queue_bloc.dart';
import 'package:phantom/core/player/presentation/widget/mini_player_controls.dart';

class MiniPlayer extends StatelessWidget {
  const MiniPlayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.of(context).pushNamed('/player');
      },
      leading: BlocBuilder<QueueBloc, QueueState>(
        builder: (context, state) {
          return state.map(inProgress: (inProgress) {
            return const Text('loading..');
          }, loadSuccess: ( loadSuccess) {
            return StreamBuilder<int?>(
              stream: loadSuccess.cpsIndexStream,
              builder: (context, snapshot) {
                if (snapshot.hasData &&
                    snapshot.data != null &&
                    snapshot.data! < loadSuccess.songsContainer.songs.length) {
                  final artwork = loadSuccess.songsContainer.albumArtwork[
                      loadSuccess.songsContainer.songs
                          .elementAt(snapshot.data!)
                          .albumId];
                  return AspectRatio(
                    aspectRatio: 1.0,
                    child: artwork == null
                        ? const SizedBox()
                        : ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Hero(
                              tag: loadSuccess
                                  .songsContainer.songs[snapshot.data!].id,
                              child: Image.memory(
                                artwork,
                                cacheHeight: 200,
                                cacheWidth: 200,
                                frameBuilder: (context, child, frame,
                                    wasSynchronouslyLoaded) {
                                  if (wasSynchronouslyLoaded) {
                                    return child;
                                  }
                                  return AnimatedOpacity(
                                    child: child,
                                    opacity: frame == null ? 0 : 1,
                                    duration: const Duration(seconds: 1),
                                    curve: Curves.easeOut,
                                  );
                                },
                                fit: BoxFit.cover,
                                // opacity: _opacity,
                              ),
                            ),
                          ),
                  );
                }
                return const SizedBox(); // TODO: add place holder
              },
            );
          });
        },
      ),
      title: BlocBuilder<PlayerBloc, PlayerState>(
        builder: (context, state) {
          return state.map(initial: (init) {
            return const Text('Play any Song.');
          }, playSongSuccuss: (playSongSuccuss) {
            return Hero(
                tag: playSongSuccuss.playingSong.song.title,
                child: Text(playSongSuccuss.playingSong.song.title));
          }, playSongFailure: (playSongFailure) {
            return Text(playSongFailure.playingSong.song.title);
          });
        },
      ),
      trailing: BlocBuilder<PlayerBloc, PlayerState>(
        builder: (context, state) {
          return state.map(initial: (init) {
            return const SizedBox();
          }, playSongSuccuss: (playSongSuccuss) {
            return MiniPlayerControls(
              playingSong: playSongSuccuss.playingSong,
            );
          }, playSongFailure: (playSongFailure) {
            return MiniPlayerControls(
              playingSong: playSongFailure.playingSong,
            );
          });
        },
      ),
    );
  }
}
