

import 'package:flutter/material.dart';

class MainPageController extends ChangeNotifier{
  late PageController pageController;

  int currentIndex = 0;

  // Page controller intialize
  initPageControl(){
    pageController = PageController(initialPage: currentIndex);
  }



  //On tap of bottomnav and page slide method
  onPageChenge(index){
    currentIndex = index;
    pageController.jumpToPage(index);
    notifyListeners();

  }
}