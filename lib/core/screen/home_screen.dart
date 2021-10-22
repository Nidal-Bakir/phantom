import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:phantom/core/player/presentation/screen/player_screen.dart';
import 'package:phantom/core/player/presentation/widget/mini_player.dart';
import 'package:phantom/core/util/sort.dart';
import 'package:phantom/features/songs/presentation/bloc/songs_bloc/songs_bloc.dart';
import 'package:phantom/features/songs/presentation/screen/songs_screen.dart';
import 'package:phantom/features/songs_folders/presentation/bloc/folders_bloc/folders_bloc.dart';
import 'package:phantom/features/songs_folders/presentation/screen/folders_screen.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SongsBloc>(
          create: (_) => GetIt.I.get()
            ..add(const SongsLoaded(
              sort: Sort(
                  orderType: SongOrderType.asc,
                  sortType: SongSortType.songName),
            )),
        ),
        BlocProvider<FoldersBloc>(
          create: (_) => GetIt.I.get()..add(const FoldersLoaded()),
        ),
      ],
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: DefaultTabController(
                length: 3,
                child: NestedScrollView(
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
                            Tab(text: 'player'),
                          ],
                        ),
                      ),
                    ];
                  },
                  body: const TabBarView(
                    children: [
                      SongsScreen(),
                      FoldersScreen(),
                      PlayerScreen(),
                    ],
                  ),
                ),
              ),
            ),
            const MiniPlayer(),
          ],
        ),
      ),
    );
  }
}
