import 'package:flutter/material.dart';
import 'package:movies/providers/providers.dart';
import 'package:movies/router/app_routes.dart';
import 'package:movies/theme/app_theme.dart';
import 'package:provider/provider.dart';

void main() => runApp(const AppState());

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => MoviesProvider(),
        )
      ],
      child: const MyApp(),
    );
  }
}

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
