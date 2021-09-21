import 'package:flutter/material.dart';
import 'package:phantom/features/songs/presentation/screen/songs.dart';
import 'package:phantom/features/splash/presentation/screen/splash.dart';

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(
        builder: (context) => const Splash(),
      );
    case '/songs':
      return MaterialPageRoute(
        builder: (context) => const Songs(),
      );
  }
  assert(false, 'Need to implement ${settings.name}');
  return null;
}
