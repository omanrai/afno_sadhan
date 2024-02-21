import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'constant.dart';
import 'splashscreen.dart';

// late LoginController loginController;

void main() {
  // loginController = Get.put(LoginController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Afno Sadhan',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Montserrat',
        primarySwatch: null,
        appBarTheme: const AppBarTheme(
          // iconTheme: IconThemeData(color: ),
          systemOverlayStyle: SystemUiOverlayStyle(
            // Status bar color
            statusBarColor: secondarycolor,
            statusBarIconBrightness: Brightness.light,
            statusBarBrightness: Brightness.light,
          ),
        ),
        // inputDecorationTheme: InputDecorationTheme(
        //   enabledBorder: OutlineInputBorder(
        //     borderSide: BorderSide(width: 3, color: Colors.greenAccent),
        //   ),
        //   focusedBorder: OutlineInputBorder(
        //     borderSide: BorderSide(width: 3, color: Colors.amberAccent),
        //   ),
        //   errorBorder: OutlineInputBorder(
        //     borderSide: BorderSide(width: 3, color: Colors.redAccent),
        //   ),
        // ),
      ),
      home: const SplashScreenPage(),
    );
  }
}


// color pallete

// 0xff05014A
// 0xff003277
// 0xff005C98
// 0xff0086AC
// 0xff00B0B8
// 0xff6ED9C2


// .      Get.snackbar("Error", "No Internet Connection");


