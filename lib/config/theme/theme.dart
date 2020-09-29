import 'package:flutter/material.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData getTheme() {
    return ThemeData(
      brightness: Brightness.light, primaryColor: Colors.blueGrey, accentColor: Colors.white);
  }

  static ThemeData getDarkTheme() {
    return ThemeData(
        brightness: Brightness.dark, primaryColor: Color(0xFF202020), accentColor: Color(0xFF121212));
  }
}
