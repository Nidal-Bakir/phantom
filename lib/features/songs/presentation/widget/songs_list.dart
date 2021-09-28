import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phantom/features/songs/presentation/bloc/songs_bloc/bloc/songs_bloc.dart';
import 'package:phantom/features/songs/presentation/widget/song_item.dart';

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
          songLoadSuccess: (sortType, orderType, songsContainer) {
            return NotificationListener<ScrollNotification>(
              onNotification: (notification) {
                if (notification.metrics.pixels >=
                    notification.metrics.maxScrollExtent * 0.8) {
                  // context.read<SongsBloc>().add(SongsLoaded(
                  //       songSortType: sortType,
                  //       songOrderType: orderType,
                  //     ));
                }
                return true;
              },
              child: ListView.builder(
                itemBuilder: (context, index) {
                  final _song = songsContainer.songs[index];
                  return SongItem(
                    song: _song,
                    artwork: songsContainer.albumArtwork[_song.albumId],
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
