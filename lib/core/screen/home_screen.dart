import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:phantom/features/songs/data/local_song_data_source.dart';
import 'package:phantom/features/songs/presentation/bloc/songs_bloc/songs_bloc.dart';
import 'package:phantom/features/songs/presentation/screen/songs_screen.dart';
import 'package:phantom/features/songs_folders/presentation/bloc/folder_bloc/folder_bloc.dart';
import 'package:phantom/features/songs_folders/presentation/screen/folders_screen.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SongsBloc>(
          create: (context) => GetIt.I.get()
            ..add(const SongsLoaded(
              songSortType: SongSortType.songName,
              songOrderType: SongOrderType.asc,
            )),
        ),
        BlocProvider<FolderBloc>(
          create: (context) => GetIt.I.get()..add(const FolderLoaded()),
        ),
      ],
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  title: const Text('Phantom'),
                  pinned: true,
                  floating: true,
                  snap: true,
                  forceElevated: innerBoxIsScrolled,
                  bottom: const TabBar(
                    tabs: [
                      Tab(text: 'Songs'),
                      Tab(text: 'Folders'),
                    ],
                  ),
                ),
              ];
            },
            body: const TabBarView(
              children: [
                SongsScreen(),
                FoldersScreen(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
