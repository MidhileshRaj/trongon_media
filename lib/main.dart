import 'package:flutter/material.dart';

import 'utils/theme/app_theme.dart';
import 'view/home_screen.dart';

void main()async{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'My Task App',
      theme: AppTheme.themeDataLight,
      home: const MyHomeScreen(),
    );
  }
}
