import 'package:flutter/material.dart';
import 'package:task_app/utils/theme/tex_theme.dart';

class AppTheme {
  static ThemeData themeDataLight = ThemeData(
      primaryColor: Colors.yellow,
      hintColor: Colors.white,

      scaffoldBackgroundColor: Colors.black,
      primarySwatch: Colors.yellow,

      textTheme: AppTextTheme.normalTextThemeDark,
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,titleTextStyle: AppTextTheme.titleTextStyleLight ),);
  static ButtonStyle elevatedStyle = ElevatedButton.styleFrom(backgroundColor: Colors.yellow);
}
