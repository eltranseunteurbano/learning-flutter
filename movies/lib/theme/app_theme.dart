import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData.light()
      .copyWith(appBarTheme: const AppBarTheme(color: Colors.indigo));

  static final ThemeData darkTheme = ThemeData.dark().copyWith();
}
