import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Colors.orange;

  static final ThemeData lighTheme = ThemeData.light().copyWith(
      primaryColor: Colors.blue,
      appBarTheme: const AppBarTheme(elevation: 0, color: primaryColor),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primaryColor)));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: Colors.blue,
      appBarTheme: const AppBarTheme(elevation: 0, color: primaryColor));
}
