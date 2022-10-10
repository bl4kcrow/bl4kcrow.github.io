import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData get theme {
    return ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      primaryColorDark: const Color(0xFF303030),
      colorScheme: ColorScheme.fromSwatch().copyWith(
        brightness: Brightness.dark,
        secondary: Colors.orange, // Your accent color
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
          shadowColor: const Color(0xFF303030),
          minimumSize: const Size(150, 40),
        ),
      ),
    );
  }
}
