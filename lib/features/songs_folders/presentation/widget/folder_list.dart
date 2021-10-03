
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phantom/core/widget/common_list_tile_item.dart';
import 'package:phantom/features/songs_folders/presentation/bloc/folder_bloc/folder_bloc.dart';

class FolderList extends StatelessWidget {
  const FolderList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FolderBloc, FolderState>(
      builder: (context, state) {
        return state.when(
          folderInProgress: () {
            return const Center(
              child: Text('loading....'),
            );
          },
          folderLoadSuccess: (folders) {
            return ListView.builder(
              itemBuilder: (context, index) {
                final _folder = folders[index];
                return CommonListTileItem(
                  subtitle: _folder.songsCount.toString(),
                  artwork: _folder.artWork,
                  title: _folder.folderName,
                );
              },
              itemCount: folders.length,
            );
          },
        );
      },
    );
  }
}
