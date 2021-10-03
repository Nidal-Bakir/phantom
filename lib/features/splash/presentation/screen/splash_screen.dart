import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:phantom/core/screen/home_screen.dart';
import 'package:phantom/core/sync/dispatcher/delta_dispatcher.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = '/';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    GetIt.I.get<DeltaDispatcher>().startSongsSyncing().then((value) =>
        Navigator.of(context).pushReplacementNamed(HomeScreen.routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('_progress'),
    );
  }
}
