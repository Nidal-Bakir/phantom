import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:phantom/core/data/database/database.dart';
import 'package:phantom/features/songs_folders/presentation/bloc/folder_bloc/folder_bloc.dart';
import 'package:phantom/features/songs_folders/presentation/widget/folder_list.dart';

class FoldersScreen extends StatelessWidget {
  static const String routeName = '/folders-screen';
  const FoldersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FolderBloc>(
      create: (context) => GetIt.I.get()..add(const FolderLoaded()),
      child: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
              title: TextButton(
            child: Text('sd'),
            onPressed: () {
              LocalDatabase.openLocalDatabase().then((value) {
              value.delete('song');
              value.delete('artwork');
            });
            },
          )),
          body:   const FolderList(),
        ),
      ),
    );
  }
}
