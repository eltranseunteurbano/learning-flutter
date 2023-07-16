import 'package:designs/screens/easy.dart';
import 'package:designs/screens/hard.dart';
import 'package:designs/screens/main_screen.dart';
import 'package:designs/screens/medium.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

void main() {
  debugPaintSizeEnabled = false;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
        title: 'Designs',
        debugShowCheckedModeBanner: false,
        home: const MainScreen(),
        initialRoute: '/home',
        routes: {
          '/home': (context) => const MainScreen(),
          '/easy': (context) => const EasyScreen(),
          '/medium': (context) => const MediumScreen(),
          '/hard': (context) => const HardScreen(),
        });
  }
}
