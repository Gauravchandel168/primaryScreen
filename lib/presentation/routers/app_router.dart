import 'package:flutter/material.dart';

import '../screens/primary_screen/primary_screen.dart';
import '../screens/splash_screen/splash_page.dart';


class AppRouter {
  static const String home = '/';
  static const String primaryScreen = "/primaryScreen";

  const AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
//return _splashMaterialPageRoute();

      case primaryScreen:
        return _primaryScreenMaterialPageRoute();

      default:
        throw Exception('Route not found!');
    }
  }

  // static _splashMaterialPageRoute() =>
  //     MaterialPageRoute(
  //       builder: (_) => const SplashPage(),
  //     );


  static _primaryScreenMaterialPageRoute() =>
      MaterialPageRoute(
        builder: (_) =>
            const PrimaryScreen(),
      );


}