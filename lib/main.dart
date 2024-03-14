import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_app/controllers/details_page_controller.dart';
import 'package:task_app/controllers/home_screen_controller.dart';

import 'controllers/cast_details_page.dart';
import 'utils/theme/app_theme.dart';
import 'view/home_screen.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeScreenController(),
        ),  ChangeNotifierProvider(
          create: (context) => DetailsPageControler(),
        ), ChangeNotifierProvider(
          create: (context) => CastDetailsController(),
        ),
      ],
      child: MaterialApp(
        title: 'My Task App',
        theme: AppTheme.themeDataLight,
        home: const MyHomeScreen(),
      ),
    );
  }
}
