import 'package:flutter/material.dart';

class DarkTheme {
  ThemeData? darkTheme = ThemeData(
    colorScheme: blueColorScheme,
    scaffoldBackgroundColor: Colors.grey,
    appBarTheme: AppBarTheme(color: blueColorScheme.primary),
  );
}

const blueColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF6366F1),
    onPrimary: Color(0xFF6366F1),
    secondary: Color(0xFFE1E1E1),
    onSecondary: Colors.grey,
    error: Colors.red,
    onError: Color(0xFF6366F1),
    inversePrimary: Color(0xFFFFFFFF),
    surface: Color(0xFF6366F1),
    onSurface: Color(0xFFAEB4C2),
    shadow: Colors.black,
    errorContainer: Color(0xFFE1E1E1));
