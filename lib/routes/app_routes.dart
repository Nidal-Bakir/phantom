import 'package:flutter/material.dart';
import 'package:phantom/core/player/presentation/screen/player_screen.dart';
import 'package:phantom/core/screen/home_screen.dart';
import 'package:phantom/features/splash/presentation/screen/splash_screen.dart';

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const SplashScreen(),
      );

    case HomeScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const HomeScreen(),
      );
    case '/player':
      return MaterialPageRoute(
        builder: (_) => const PlayerScreen(),
      );
  }
  assert(false, 'Need to implement ${settings.name}');
  return null;
}
