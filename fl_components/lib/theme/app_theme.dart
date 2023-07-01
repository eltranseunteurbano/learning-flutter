import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Colors.indigo;

  static final ThemeData lighTheme = ThemeData.light().copyWith(
      primaryColor: Colors.blue,
      appBarTheme: const AppBarTheme(elevation: 0, color: primaryColor),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primaryColor)),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primaryColor, elevation: 5),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.indigo,
              shape: const StadiumBorder(),
              elevation: 0)));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: Colors.blue,
      appBarTheme: const AppBarTheme(elevation: 0, color: primaryColor));
}
