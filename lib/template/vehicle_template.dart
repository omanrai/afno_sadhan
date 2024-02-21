import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant.dart';
import '../view/vehicle_detail.dart';

class VehicleTemplate extends StatelessWidget {
  const VehicleTemplate({
    Key? key,
    required this.vehicles,
    required this.index,
  }) : super(key: key);

  final List<String> vehicles;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => VehicleDetailView());
      },
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(right: 5, left: 5),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
                color: Colors.grey,
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(0, 0)),
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(10),
              ),
              child: Image.network(
                'https://www.merokalam.com/wp-content/uploads/2018/04/Royal-Enfield-Classic-500.jpg',
                height: 150,
                width: double.infinity,
                // fit: BoxFit.fill,
              ),
            ),
            DIVIDER,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      '${vehicles[index]}',
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
            DIVIDER,
            Center(
              child: Text(
                'Review',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (var i = 0; i < 5; i++)
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
// seeeeeeeeee more

class SeeMore extends StatelessWidget {
  // final Function? seeMoreCallBack;
  String courseHomeTxt;
  final Color? seeMoreColor;
  SeeMore(
    this.courseHomeTxt, {
    this.seeMoreColor,

    // this.seeMoreCallBack
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () => Get.to(() => CoursePage()),
      onTap: () {},

      child: Row(
        children: [
          Text(
            courseHomeTxt,
            style: const TextStyle(
              color: secondarycolor,
              fontWeight: FontWeight.w600,
              fontSize: 15,
            ),
          ),
          Spacer(),
          Text(
            "See More",
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w300,
              color: seeMoreColor,
            ),
          ),
          Icon(
            color: seeMoreColor,
            Icons.keyboard_double_arrow_right,
            size: 18,
          ),
        ],
      ),
    );
  }
}
