import 'package:flutter/material.dart';

class CustomTheme {
  static const _letterSpacing = 0.0;
  static const _heightSpacing = 1.2;

  static ThemeData get theme {
    return ThemeData(
      useMaterial3: true,
      cardTheme: CardThemeData(
        color: Colors.white12,
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      primaryColorDark: const Color(0xFF303030),
      colorScheme: ColorScheme.fromSwatch().copyWith(
        onSurface: Colors.white,
        brightness: Brightness.dark,
        secondary: Colors.orange,
        surface: const Color(0xFF303030),
      ),
      hoverColor: Colors.white24,
      shadowColor: Colors.white70,
      fontFamily: 'Ubuntu',
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          minimumSize: const Size(150, 40),
          shadowColor: const Color(0xFF303030),
          foregroundColor: Colors.white,
        ),
      ),
      textTheme: TextTheme(
        headlineLarge: TextStyle(
          letterSpacing: _letterSpacing,
          height: _heightSpacing,
        ),
        headlineMedium: TextStyle(
          letterSpacing: _letterSpacing,
          height: _heightSpacing,
        ),
        headlineSmall: TextStyle(
          letterSpacing: _letterSpacing,
          height: _heightSpacing,
        ),
        titleLarge: TextStyle(
          letterSpacing: _letterSpacing,
          height: _heightSpacing,
        ),
        titleMedium: TextStyle(
          letterSpacing: _letterSpacing,
          height: _heightSpacing,
        ),
        titleSmall: TextStyle(
          letterSpacing: _letterSpacing,
          height: _heightSpacing,
        ),
        bodyLarge: TextStyle(
          letterSpacing: _letterSpacing,
          height: _heightSpacing,
        ),
        bodyMedium: TextStyle(
          letterSpacing: _letterSpacing,
          height: _heightSpacing,
        ),
        bodySmall: TextStyle(
          letterSpacing: _letterSpacing,
          height: _heightSpacing,
        ),
        labelLarge: TextStyle(
          letterSpacing: _letterSpacing,
          height: _heightSpacing,
        ),
        labelMedium: TextStyle(
          letterSpacing: _letterSpacing,
          height: _heightSpacing,
        ),
        labelSmall: TextStyle(
          letterSpacing: _letterSpacing,
          height: _heightSpacing,
        ),
      ),
    );
  }
}
