import 'package:flutter/material.dart';
import 'package:forms/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Material App Bar'),
          ),
          body: const Center(
            child: Text('Hello World'),
          ),
        ),
        initialRoute: LoginScreen.route,
        routes: {
          HomeScreen.route: (context) => const HomeScreen(),
          LoginScreen.route: (context) => const LoginScreen(),
        },
        theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: Colors.grey[300],
        ));
  }
}
