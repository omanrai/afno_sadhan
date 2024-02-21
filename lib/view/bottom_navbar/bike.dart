// import 'dart:io';

// import 'package:afno_sadhan/template/sized_box.dart';
// import 'package:file_picker/file_picker.dart';
// import 'package:get/get.dart';
// import 'package:flutter/material.dart';

// class BikeView extends StatefulWidget {
//   @override
//   State<BikeView> createState() => _BikeViewState();
// }

// class _BikeViewState extends State<BikeView> {
//   File? filetoDisplay;

//   List<File>? files;
//   int? save;

//   PlatformFile? pickedFile;

//   FilePickerResult? result;

//   String? fileName;

//   void pick() async {
//     FilePickerResult? result = await FilePicker.platform
//         .pickFiles(allowMultiple: true, type: FileType.image);
//     print(result.toString());

//     if (result != null) {
//       pickedFile = result.files.first;

//       List<File> files = result.paths.map((path) => File(path!)).toList();

//       print(files.toString());
//     } else {
//       print('[0User canceled the picker]');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Container(
//               constraints: BoxConstraints(maxWidth: 400),
//               alignment: Alignment.center,
//               padding: EdgeInsets.all(10),
//               child: ElevatedButton(
//                 child: Text('pick a file'),
//                 onPressed: () async {
//                   pick();
//                 },
//               ),
//             ),
//             // GridView.builder(
//             //   padding: EdgeInsets.all(5),
//             //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             //     crossAxisCount: 2,
//             //     mainAxisSpacing: 8,
//             //     crossAxisSpacing: 8,
//             //   ),
//             //   itemCount: save,
//             //   itemBuilder: (context, index) {
//             //     final file = files![index];

//             //     return SizedBoxH10();
//             //   },
//             // ),
//             // if (pickedFile != null)
//             //   SizedBox(
//             //     height: 200,
//             //     width: 100,
//             //     child: Image.file(files!),
//             //   ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:afno_sadhan/controller/bike_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant.dart';
import '../vehicle_detail.dart';

class BikeView extends StatelessWidget {
  BikeController favorite_controller = Get.put(BikeController());

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
                        'images/bike.jpg',
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
