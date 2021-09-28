import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:phantom/core/sync/dispatcher/delta_dispatcher.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    GetIt.I
        .get<DeltaDispatcher>()
        .startSongsSyncing()
        .then((value) => Navigator.of(context).pushReplacementNamed('/songs'));
     
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('_progress'),
    );
  }
}
