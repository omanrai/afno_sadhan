import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../constant.dart';
import '../../controller/slide_controller.dart';
import '../../template/carousel_slider.dart';
import '../../template/vehicle_template.dart';
import '../../template/sized_box.dart';

class HomeView extends StatelessWidget {
  final SliderController sliderController = Get.put(SliderController());

  @override
  Widget build(BuildContext context) {
    var vehicleName = [
      // 'Science',
      'Royal Enfield 3500',
      'Bajaj Pulsar 125',
      'Dot Bike',
      'CFMoto 650NK',
      'Ducati Monster',
      'Hero Xpulse',
      'Honda Highness CB350',
      'Honda Activa 125',
      'BMW G 310 GS',
    ];
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselSliderPage(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: TextFormField(
                      cursorColor: secondarycolor,
                      decoration: InputDecoration(
                        labelText: 'Search vehicle',
                        hintText: " e.g. Electric scooter",
                        contentPadding: EdgeInsets.only(left: 30),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                            color: Colors.amber,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                            color: secondarycolor,
                            // width: 2.0,
                          ),
                        ),
                        // enabledBorder: UnderlineInputBorder(
                        //   borderSide:
                        //       BorderSide(width: 3, color: Colors.greenAccent),
                        // ),
                        errorBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 3, color: Colors.redAccent),
                        ),
                        suffixIcon: Icon(
                          Icons.search,
                          color: secondarycolor,
                          size: 30,
                          // color: primaryColor,
                        ),
                        // filled: true,
                        // fillColor: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: secondarycolor),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: GestureDetector(
                        onTap: (() {
                          //filter code
                        }),
                        child: Icon(
                          Icons.tune,
                          color: secondarycolor,
                          size: 35,
                        )),
                  ),
                ],
              ),
            ),
            SizedBoxH20(),
            // Padding(
            //   padding: EdgeInsets.only(bottom: 10, right: 20, left: 20),
            //   child: SeeMore(
            //     'Popular Items',
            //     seeMoreColor: primaryColor,
            //   ),
            // ),
            ListTile(
              title: Text(
                'Popular Items',
                style: const TextStyle(
                  color: secondarycolor,
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
              trailing: MaterialButton(
                onPressed: (() {}),
                color: primaryColor,
                child: Text(
                  'View all',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 280,
              child: ListView.builder(
                padding: EdgeInsets.only(bottom: 5),
                itemExtent: 180,
                scrollDirection: Axis.horizontal,
                itemCount: vehicleName.length,
                itemBuilder: (context, index) => VehicleTemplate(
                  vehicles: vehicleName,
                  index: index,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10, right: 20, left: 20),
              child: SeeMore(
                'New Arrival',
                seeMoreColor: primaryColor,
              ),
            ),
            // ListTile(
            //   title: Text(
            //     'New Items',
            //     style: const TextStyle(
            //       color: secondarycolor,
            //       fontWeight: FontWeight.w600,
            //       fontSize: 15,
            //     ),
            //   ),
            //   trailing: ElevatedButton(
            //     onPressed: (() {}),
            //     child: Text(
            //       'View all',
            //       style: TextStyle(
            //         fontSize: 13,
            //         fontWeight: FontWeight.w300,
            //         color: secondarycolor,
            //       ),
            //     ),
            //   ),
            // ),
            SizedBox(
              height: 280,
              child: ListView.builder(
                padding: EdgeInsets.only(bottom: 5),
                itemExtent: 180,
                scrollDirection: Axis.horizontal,
                itemCount: vehicleName.length,
                itemBuilder: (context, index) => VehicleTemplate(
                  vehicles: vehicleName,
                  index: index,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10, right: 20, left: 20),
              child: SeeMore(
                'Feature Items',
                seeMoreColor: primaryColor,
              ),
            ),
            SizedBox(
              height: 280,
              child: ListView.builder(
                padding: EdgeInsets.only(bottom: 5),
                itemExtent: 180,
                scrollDirection: Axis.horizontal,
                itemCount: vehicleName.length,
                itemBuilder: (context, index) => VehicleTemplate(
                  vehicles: vehicleName,
                  index: index,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
