import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phantom/core/widget/common_list_tile_item.dart';
import 'package:phantom/features/songs_folders/presentation/bloc/folders_bloc/folders_bloc.dart';

class FoldersScreen extends StatelessWidget {
  const FoldersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FoldersBloc, FoldersState>(
      builder: (context, state) {
        return state.when(
          foldersInProgress: () {
            return const Center(
              child: Text('loading....'),
            );
          },
          foldersLoadSuccess: (folders) {
            return CustomScrollView(
              key: const PageStorageKey<String>('folders'),
              slivers: <Widget>[
                SliverPadding(
                  padding: const EdgeInsets.all(8.0),
                  sliver: SliverFixedExtentList(
                    itemExtent: 80.0, 
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        final _folder = folders[index];
                        return CommonListTileItem(
                          subtitle: _folder.songsCount.toString(),
                          artwork: _folder.artWork,
                          title: _folder.folderName,
                        );
                      },
                      childCount: folders.length,
                    ),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
