import 'package:flutter/material.dart';
import 'package:movies/screens/screens.dart';

class AppRoutes {
  static const String homeRoute = 'home';
  static const String detailsRoute = 'details';

  static const String initialRoute = homeRoute;

  static Map<String, Widget Function(BuildContext)> getApplicationRoutes() {
    return <String, Widget Function(BuildContext)>{
      homeRoute: (_) => const HomeScreen(),
      detailsRoute: (_) => const DetailsScreen()
    };
  }
}
