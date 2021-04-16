import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Color(0xFFEEF1F6),
    appBarTheme: AppBarTheme(
      color: Color(0xFF284DA8),
    ),
    colorScheme: ColorScheme.light(
      background: Color(0xFFEEF1F6),
      onBackground: Colors.white,
      primary: Color(0xFF284DA8),
      primaryVariant: Color(0xFF232855),
      onPrimary: Colors.white,
      secondary: Color(0xFF4f4f4f),
      secondaryVariant: Color(0x46232855),
      onSecondary: Colors.white,
      error: Color(0xFFD6232A),
      onError: Colors.white,
      surface: Colors.white,
      onSurface: Colors.black,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Color(0xFF1c1c1c),
        appBarTheme: AppBarTheme(
          color: Color(0xFF303030),
        ),
        colorScheme: ColorScheme.dark(
          background: Color(0xFF1c1c1c),
          onBackground: Color(0xFF303030),
          primary: Color(0xFF3b6ff5),
          primaryVariant: Color(0xFF3860c7),
          onPrimary: Colors.white,
          secondary: Color(0xFFa3a3a3),
          secondaryVariant: Color(0xFF232855),
          onSecondary: Colors.white,
          error: Color(0xFFeb6a6f),
          onError: Colors.white,
          surface: Colors.black,
          onSurface: Colors.white,
        ),
  );
}

