import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'constant.dart';
import 'view/auth/registerPage.dart';
import 'view/home.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  void checkAuth() {
    Future.delayed(Duration(seconds: 5), () {
      // Get.off(() => HomePage());
      Get.off(() => RegisterPage());
    });
  }

  @override
  Widget build(BuildContext context) {
    checkAuth();
    return Scaffold(
      // backgroundColor: Color(0xff05014A),
      appBar: AppBar(
        // backgroundColor: new Color(0xff05014A),
        backgroundColor: new Color(0xffffffff),

        elevation: 0,
        actions: [
          TextButton(
            onPressed: () {
              Get.off(() => HomePage());
            },
            child: Text(
              'skip',
              // style: TextStyle(color: textcolor),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/logo.jpg'),

            Text(
              "Afno Sadhan App",
              // style: TextStyle(color: Color(0xff005C98)),
              textScaleFactor: 2,
            ),
            CircularProgressIndicator(
              color: Colors.amber,
              backgroundColor: secondarycolor,
            ),
            // LoadingAnimationWidget.flickr(
            //   leftDotColor: Colors.red,
            //   rightDotColor: Colors.blue,
            //   size: 60,
            // ),
          ],
        ),
      ),
    );
  }
}
