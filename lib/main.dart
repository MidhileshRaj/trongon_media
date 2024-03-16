import 'package:flutter/material.dart';
import 'package:learners_app/controller/course_page_controller.dart';
import 'package:learners_app/controller/home_page_controller.dart';
import 'package:learners_app/controller/main_page_controller.dart';
import 'package:learners_app/view/main_screen.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => MainPageController(),),
        ChangeNotifierProvider(create: (context) => HomePageController(),),
        ChangeNotifierProvider(create: (context) => CoursePageController(),),
      ],
      child: MaterialApp(
        theme: ThemeData(
          appBarTheme: AppBarTheme(backgroundColor:Colors.blue[50] ),
          scaffoldBackgroundColor:const Color(0xFFECF2FE),
        ),
        home: const MainScreen(),
      ),
    );
  }
}
