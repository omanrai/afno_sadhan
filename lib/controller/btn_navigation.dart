import 'package:get/get.dart';

import '../view/bottom_navbar/bike.dart';
import '../view/bottom_navbar/buy.dart';
import '../view/bottom_navbar/homeview.dart';
import '../view/bottom_navbar/scooter.dart';
import '../view/bottom_navbar/sell.dart';

class BtnNavigationBarController extends GetxController {
  int currentIndex = 2;
  // bool isActiveBtnColor = false;

  final screens = [
    BuyView(),
    SaleView(),
    HomeView(),
    BikeView(),
    ScooterView(),
  ];

  void onTap(int currentIndex) {
    this.currentIndex = currentIndex;
    // bool isActiveBtnColor = true;

    update();
  }
}
