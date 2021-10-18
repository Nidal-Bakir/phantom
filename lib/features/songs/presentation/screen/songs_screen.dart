import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phantom/core/player/data/player_service/player_service.dart';
import 'package:phantom/core/player/presentation/bloc/player_bloc/player_bloc.dart';
import 'package:phantom/core/player/presentation/bloc/queue_bloc/queue_bloc.dart';
import 'package:phantom/core/widget/common_list_tile_item.dart';

import 'package:phantom/features/songs/presentation/bloc/songs_bloc/songs_bloc.dart';

class SongsScreen extends StatelessWidget {
  const SongsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: BlocBuilder<SongsBloc, SongsState>(
        builder: (context, state) {
          return state.when(
            inProgress: () {
              return const Center(
                child: Text('loading....'),
              );
            },
            songLoadSuccess: (sort, songsContainer) {
              return CustomScrollView(
                key: const PageStorageKey<String>('songs'),
                slivers: <Widget>[
                  SliverPadding(
                    padding: const EdgeInsets.all(8.0),
                    sliver: SliverFixedExtentList(
                      itemExtent: 70.0,
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          final _song = songsContainer.songs[index];
                          return InkWell(
                            onTap: () async {
                              context.read<QueueBloc>().add(
                                  QueueNewSongPlayed(songsContainer, index));
                            },
                            child: CommonListTileItem(
                              key: Key(_song.id.toString()),
                              title: _song.title,
                              subtitle: _song.artist,
                              artwork:
                                  songsContainer.albumArtwork[_song.albumId],
                              trailing: IconButton(
                                icon: Icon(
                                  _song.favorite
                                      ? Icons.favorite_outlined
                                      : Icons.favorite_outlined,
                                ),
                                onPressed: () {
                                  context.read<QueueBloc>().add(QueueSongAdded(
                                      _song,
                                      songsContainer
                                          .albumArtwork[_song.albumId]));
                                },
                              ),
                            ),
                          );
                        },
                        childCount: songsContainer.songs.length,
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
