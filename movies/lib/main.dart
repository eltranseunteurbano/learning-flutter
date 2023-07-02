import 'package:flutter/material.dart';
import 'package:movies/router/app_routes.dart';
import 'package:movies/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Películas',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getApplicationRoutes(),
      theme: AppTheme.lightTheme,
    );
  }
}
