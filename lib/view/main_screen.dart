import 'package:flutter/material.dart';
import 'package:learners_app/controller/main_page_controller.dart';
import 'package:learners_app/view/home_page.dart';
import 'package:provider/provider.dart';

import 'course_view_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  @override
  Widget build(BuildContext context) {
    Provider.of<MainPageController>(context).initPageControl();
    return Consumer<MainPageController>(builder: (context, value, child) {
      return Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(

          actions: const [
            Icon(
              Icons.notifications,
              color: Colors.blue,
            )
          ],
        ),
        body: PageView(
          controller: value.pageController,
          onPageChanged:value.onPageChenge,
          children: const [HomePage(), CourseViewPage()],
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedIconTheme: const IconThemeData(color: Colors.grey),
          selectedItemColor: Colors.blue,useLegacyColorScheme: true,
          selectedIconTheme: const IconThemeData(color: Colors.blue),
          onTap: (index) {
          value.onPageChenge(index);
          },
          currentIndex:value. currentIndex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,

                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.grid_view,

                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.rss_feed,

                ),
                label: ""),
          ],
        ),
      );
    },);
  }
}
