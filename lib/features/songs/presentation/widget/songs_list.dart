import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phantom/features/songs/bloc/songs_bloc/bloc/songs_bloc.dart';
import 'package:phantom/features/songs/data/local_song_data_source.dart';
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
          songLoadSuccess: (sortType, orderType, songs) {
            return ListView.builder(
              itemBuilder: (context, index) {
                return SongItem(
                  song: songs[index],
                );
              },
              itemCount: songs.length,
            );
          },
        );
      },
    );
  }
}
