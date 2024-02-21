import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../constant.dart';
import '../controller/slide_controller.dart';
import '../template/carousel_slider.dart';
import '../template/sized_box.dart';

class VehicleDetailView extends StatelessWidget {
  VehicleDetailView({super.key});
  final SliderController sliderController = Get.put(SliderController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        bottom: PreferredSize(
          child: Divider(
            color: Colors.white,
            thickness: 2,
            height: 2,
            // endIndent: 10,
            // indent: 10,
          ),
          preferredSize: Size(double.maxFinite, 0),
        ),
      ),
      body: Column(
        children: [
          DIVIDER,
          CarouselSliderPage(),
          SizedBoxH10(),
          DIVIDER,
          SizedBoxH10(),
          Text(
            'Royal Enfield 350',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBoxH10(),
          DIVIDER,
          SizedBoxH10(),
          Wrap(
            // alignment: WrapAlignment.spaceEvenly,
            // crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Text(
                "The Royal Enfield, the oldest global motorcycle brand, was originally a British motorcycle company but now it’s produced in India. It is the oldest motorcycle brand which is still manufacturing, the longest run model, the Bullet continuously for 75 years.",
                textAlign: TextAlign.justify,
              ),
            ],
          ),
          SizedBoxH10(),
          DIVIDER,
        ],
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(horizontal: 100),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: primaryColor),
        ),
        height: 80,
        width: double.infinity,
        child: InkWell(
          onTap: () {},
          splashColor: secondarycolor,
          highlightColor: Color(0xff3CA42C),
          radius: 30,
          child: Center(
            child: Text(
              'Buy Now',
              style: TextStyle(
                // color: Colors.white,
                color: primaryColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
