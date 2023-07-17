import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/pages/pages.dart';
import 'package:qr_reader/providers/providers.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (create) => UiProvider()),
        ChangeNotifierProvider(create: (create) => ScanListProvider())
      ],
      child: MaterialApp(
        title: 'QR Reader',
        initialRoute: 'home',
        debugShowCheckedModeBanner: false,
        routes: {
          'home': (BuildContext context) => const HomePage(),
          'map': (BuildContext context) => const MapPage()
        },
        theme: ThemeData(
            primaryColor: Colors.deepPurple,
            floatingActionButtonTheme: const FloatingActionButtonThemeData(
                backgroundColor: Colors.deepPurple),
            appBarTheme: const AppBarTheme(backgroundColor: Colors.deepPurple),
            bottomNavigationBarTheme: const BottomNavigationBarThemeData(
                selectedItemColor: Colors.deepPurple)),
      ),
    );
  }
}
