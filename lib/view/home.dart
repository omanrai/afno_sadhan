import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant.dart';
import '../controller/btn_navigation.dart';
import '../template/drawer.dart';

class HomePage extends StatelessWidget {
  final BtnNavigationBarController btnNavigationBarController =
      Get.put(BtnNavigationBarController());
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: DrawerWidget(scaffoldKey: _scaffoldKey),
        appBar: AppBar(
          title: Text('Afno Sadhan'),
          centerTitle: true,
          elevation: 0,
          backgroundColor: primaryColor,

          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.only(
          //     bottomLeft: Radius.circular(25),
          //     bottomRight: Radius.circular(25),
          //   ),
          // ),
        ),
        bottomNavigationBar: GetBuilder<BtnNavigationBarController>(
          builder: (controller) => BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: primaryColor,
            onTap: btnNavigationBarController.onTap,
            selectedItemColor: Colors.amber,

            //  selectedItemColor: (controller.isActiveBtnColor == false)
            // ? Colors.amber
            // : Colors.white,
            unselectedItemColor: Colors.white,
            currentIndex: btnNavigationBarController.currentIndex,
            iconSize: 22,
            selectedFontSize: 16,
            unselectedLabelStyle: TextStyle(fontSize: 14),
            unselectedFontSize: 20,
            showUnselectedLabels: true,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                // icon: Icon(Icons.shop),
                label: 'Buy',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.sell),
                label: 'Sell',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.two_wheeler),
                label: 'Bike',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.moped),
                label: 'Scooter',
              ),
            ],
          ),
        ),
        body: GetBuilder<BtnNavigationBarController>(builder: (controller) {
          return Center(
            child: btnNavigationBarController
                .screens[btnNavigationBarController.currentIndex],
          );
        }),
      ),
    );
  }
}
