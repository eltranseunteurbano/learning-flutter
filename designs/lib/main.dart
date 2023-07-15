import 'package:designs/screens/easy.dart';
import 'package:designs/widgets/custom_bottom_navigation_bart.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        routes: {
          '/easy': (context) => const EasyScreen(),
          '/medium': (context) => const EasyScreen(),
          '/hard': (context) => const EasyScreen(),
        },
        home: const Scaffold(
          body: EasyScreen(),
          bottomNavigationBar: CustomBottomNavigationBar(),
        ));
  }
}
