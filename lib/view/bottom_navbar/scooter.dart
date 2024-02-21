import 'package:afno_sadhan/view/vehicle_detail.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';
import '../../template/vehicle_template.dart';

class ScooterView extends StatelessWidget {
  const ScooterView({super.key});

  @override
  Widget build(BuildContext context) {
    var vehicleName = [
      // 'Science',
      'TVS',
      'Hero',
      'Honda',
      'Bajaj',
      'KTM',
      'Hero Xpulse',
      'Vespa',
      'Polini',
      'BMW G 310 GS',
    ];
    return Scaffold(
        body: CustomScrollView(slivers: [
      SliverToBoxAdapter(
        //fill box widget for loading
        child: ListTile(
          title: Text(
            'Total Items',
            style: const TextStyle(
              color: secondarycolor,
              fontWeight: FontWeight.w600,
              fontSize: 15,
            ),
          ),
          trailing: Text(
            '(10)',
            style: TextStyle(color: primaryColor),
          ),
        ),

        // Center(
        //   child: CircularProgressIndicator(
        //     //shreeemore loading
        //     color: primaryColor,
        //     backgroundColor: secondarycolor,
        //   ),
        // ),
      ),
      SliverList(
          delegate: SliverChildBuilderDelegate(
        childCount: vehicleName.length,
        (context, index) {
          return Column(
            children: [
              GestureDetector(
                onTap: () {
                  Get.to(() => VehicleDetailView());
                },
                child: Container(
                  height: 150,
                  margin: EdgeInsets.only(
                    left: 10,
                    right: 10,
                    bottom: 10,
                  ),
                  // padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    // borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 0),
                        blurRadius: 0.5,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'images/scooter.jpg',
                        height: 140,
                        width: 150,
                        // fit: BoxFit.fill,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Text(
                                '${vehicleName[index]}',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text(
                              'Company Name : Royal Enfield',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              'Name : Bullet',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              'CC : 350',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              'KM: 3500km',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              'Price(Rs.) : 2,00,000',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      )),
    ]));
  }
}
