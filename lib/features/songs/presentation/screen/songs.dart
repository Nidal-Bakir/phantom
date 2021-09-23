import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:phantom/features/songs/bloc/songs_bloc/bloc/songs_bloc.dart';
import 'package:phantom/features/songs/data/local_song_data_source.dart';
import 'package:phantom/features/songs/presentation/widget/songs_list.dart';

class Songs extends StatelessWidget {
  const Songs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SongsBloc>(
      create: (context) => GetIt.I.get()
        ..add(const SongsLoaded(
          songSortType: SongSortType.songName,
          songOrderType: SongOrderType.asc,
        )),
      child: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(title: Text('songs')),
          body: const SongsList(),
        ),
      ),
    );
  }
}
