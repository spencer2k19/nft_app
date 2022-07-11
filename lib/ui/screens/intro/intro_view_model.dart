import 'package:flutter/cupertino.dart';
import 'package:nft_app/core/app/app.locator.dart';
import 'package:nft_app/core/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class IntroViewModel extends BaseViewModel {
  var currentIndex = 0;
  var images = [
    "intro1.png","intro2.png","intro3.png"
  ];
  var titles = [
    "Create Collects, Timeless Artworks","Scure Your Assets with the good one "," Variety of cryptocurrency wallet"
  ];
  var descriptions = [
    "The world’s largest digital marketplace for crypto collectibles and non-fungible tokens. Buy, sell, and discover exclusive digital items.",
    "OKNFT has partnered with some notable companies and recently partnered with we to help secure  non-fungible tokens artists' and creators' work.",
    "Supports more than 150 cryptocurrency wallet. For an introduction to the non-fungible tokens world, OKNFT is a great place to start."
  ];
 var pageController = PageController(initialPage: 0);


  void jumpToPage() {
    currentIndex += 1;
    pageController.jumpToPage(currentIndex);
  }
  void getChangedPageAndMoveBar(int page) {
    currentIndex = page;
    notifyListeners();
  }

  void showSignup() {
    locator<NavigationService>().navigateTo(Routes.signup);
  }

}