import 'package:flutter/material.dart';

class AppTextTheme {
  static const TextStyle titleTextStyleLight = TextStyle(
      color: Colors.yellowAccent,
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.bold,
      fontSize: 30);
  static const TextStyle titleTextStyleDark = TextStyle(
      color: Colors.black,
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.bold,
      fontSize: 30);
  static const TextTheme normalTextStyleDark = TextTheme(
    labelLarge: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
    displayMedium: TextStyle(color: Colors.white),
    displayLarge: TextStyle(color: Colors.white),
    displaySmall: TextStyle(color: Colors.white),
    headlineLarge: TextStyle(color: Colors.white),
    headlineMedium: TextStyle(color: Colors.white),
    headlineSmall: TextStyle(color: Colors.white),
    bodyMedium: TextStyle(color: Colors.white),
    bodySmall: TextStyle(color: Colors.white),
    bodyLarge: TextStyle(color: Colors.white),
    titleLarge: TextStyle(color: Colors.white),
    titleMedium: TextStyle(color: Colors.white),titleSmall: TextStyle(color: Colors.white),
    labelSmall: TextStyle(color: Colors.white), // Example: overline
  );
}
