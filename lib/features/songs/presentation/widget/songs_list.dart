import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phantom/features/songs/presentation/bloc/songs_bloc/songs_bloc.dart';
import 'package:phantom/core/widget/common_list_tile_item.dart';

class SongsList extends StatefulWidget {
  const SongsList({Key? key}) : super(key: key);

  @override
  _SongsListState createState() => _SongsListState();
}

class _SongsListState extends State<SongsList> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SongsBloc, SongsState>(
      builder: (context, state) {
        return state.when(
          inProgress: () {
            return const Center(
              child: Text('loading....'),
            );
          },
          songLoadSuccess: (sortType, orderType, songsContainer, isLastPage) {
            return NotificationListener<ScrollNotification>(
              onNotification: (notification) {
                if (!isLastPage &&
                    notification.metrics.pixels >=
                        notification.metrics.maxScrollExtent * 0.5) {
                  context.read<SongsBloc>().add(SongsLoaded(
                        songSortType: sortType,
                        songOrderType: orderType,
                      ));
                }
                return true;
              },
              child: ListView.builder(
                itemBuilder: (context, index) {
                  final _song = songsContainer.songs[index];
                  return CommonListTileItem(
                    key: Key(_song.id.toString()),
                    title: _song.title,
                    subtitle: _song.artist,
                    artwork: songsContainer.albumArtwork[_song.albumId],
                    trailing: IconButton(
                      icon: Icon(
                        _song.favorite
                            ? Icons.favorite_outlined
                            : Icons.favorite_outlined,
                      ),
                      onPressed: () {},
                    ),
                  );
                },
                itemCount: songsContainer.songs.length,
              ),
            );
          },
        );
      },
    );
  }
}
