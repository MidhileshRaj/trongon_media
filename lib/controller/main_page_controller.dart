

import 'package:flutter/material.dart';

class MainPageController extends ChangeNotifier{
  late PageController pageController;

  int currentIndex = 0;

  initPageControl(){
    pageController = PageController(initialPage: currentIndex);
  }

  onPageChenge(index){
    currentIndex = index;
    pageController.jumpToPage(index);
    notifyListeners();

  }
}