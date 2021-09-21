import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:phantom/features/songs/bloc/songs_bloc/bloc/songs_bloc.dart';
import 'package:phantom/features/songs/presentation/widget/songs_list.dart';

class Songs extends StatelessWidget {
  const Songs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SongsBloc>(
      create: GetIt.I.get(),
      child: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: Text('Your songs'),
          ),
          body: const SongsList(),
        ),
      ),
    );
  }
}
