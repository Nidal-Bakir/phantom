import 'package:flutter/material.dart';
import 'package:phantom/features/songs/presentation/screen/songs_screen.dart';
import 'package:phantom/features/songs_folders/presentation/screen/folders_screen.dart';
import 'package:phantom/features/splash/presentation/screen/splash_screen.dart';

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const SplashScreen(),
      );

    case SongsScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const SongsScreen(),
      );

    case FoldersScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const FoldersScreen(),
      );
  }
  assert(false, 'Need to implement ${settings.name}');
  return null;
}
