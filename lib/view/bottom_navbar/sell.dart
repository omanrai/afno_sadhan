import 'package:afno_sadhan/template/image_picker.dart';
import 'package:afno_sadhan/template/sized_box.dart';

import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';

class SaleView extends StatelessWidget {
  const SaleView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Text(
                'Please fill up the form with valid information',
                style: TextStyle(fontSize: 16),
              ),
              Form(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ListTile(
                    horizontalTitleGap: 5,
                    contentPadding: EdgeInsets.symmetric(horizontal: 0),
                    leading: Text('Product ID:'),
                    title: Container(
                      height: 40,
                      child: TextFormField(
                        // autovalidateMode:
                        //     AutovalidateMode.onUserInteraction,
                        // validator: registerController.fullnameValidator,
                        // controller: registerController.fullNameController,
                        // keyboardType: keyboardInputType,
                        cursorColor: secondarycolor,
                        decoration: InputDecoration(
                          hintText: 'Enter Product ID',
                          contentPadding: EdgeInsets.only(left: 20),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            // borderRadius: BorderRadius.circular(25.0),
                            borderSide: BorderSide(
                              color: secondarycolor,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              // width: 2.0,
                            ),
                          ),
                          filled: true,
                        ),
                      ),
                    ),
                  ),
                  DIVIDER,
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      children: [
                        Text('Product ID:'),
                        SizedBoxW5(),
                        Flexible(
                          child: Container(
                            height: 40,
                            child: TextFormField(
                              // autovalidateMode:
                              //     AutovalidateMode.onUserInteraction,
                              // validator: registerController.fullnameValidator,
                              // controller: registerController.fullNameController,
                              // keyboardType: keyboardInputType,
                              cursorColor: secondarycolor,
                              decoration: InputDecoration(
                                hintText: 'Enter Product ID',
                                contentPadding: EdgeInsets.only(left: 20),
                                // border: OutlineInputBorder(
                                //     // borderRadius: BorderRadius.circular(50.0),
                                //     ),
                                focusedBorder: OutlineInputBorder(
                                  // borderRadius: BorderRadius.circular(25.0),
                                  borderSide: BorderSide(
                                    color: secondarycolor,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  // borderRadius: BorderRadius.circular(100.0),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    // width: 2.0,
                                  ),
                                ),
                                filled: true,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  DIVIDER,
                  ListTile(
                    horizontalTitleGap: 5,
                    contentPadding: EdgeInsets.symmetric(horizontal: 0),
                    leading: Text('Product ID:'),
                    title: Container(
                      height: 40,
                      child: TextFormField(
                        // autovalidateMode:
                        //     AutovalidateMode.onUserInteraction,
                        // validator: registerController.fullnameValidator,
                        // controller: registerController.fullNameController,
                        // keyboardType: keyboardInputType,
                        cursorColor: secondarycolor,
                        decoration: InputDecoration(
                          hintText: 'Enter Product ID',
                          contentPadding: EdgeInsets.only(left: 20),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            // borderRadius: BorderRadius.circular(25.0),
                            borderSide: BorderSide(
                              color: secondarycolor,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              // width: 2.0,
                            ),
                          ),
                          filled: true,
                        ),
                      ),
                    ),
                  ),
                  DIVIDER,
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: TextFormField(
                      // validator: registerController.fullnameValidator,
                      // controller: registerController.fullNameController,
                      // keyboardType: keyboardInputType,
                      cursorColor: Color(0xff003277),
                      decoration: InputDecoration(
                        // contentPadding: EdgeInsets.zero,
                        suffixIconConstraints: BoxConstraints(
                          minWidth: 30,
                          // minHeight: 0,
                        ),
                        hintText: 'Enter Model Name',
                      ),
                    ),
                  ),
                  TextFormField(
                    // validator: registerController.fullnameValidator,
                    // controller: registerController.fullNameController,
                    // keyboardType: keyboardInputType,
                    cursorColor: Color(0xff003277),
                    decoration: InputDecoration(
                      // contentPadding: EdgeInsets.zero,
                      suffixIconConstraints: BoxConstraints(
                        minWidth: 30,
                        // minHeight: 0,
                      ),
                      hintText: 'Enter Your Location',
                    ),
                  ),
                  TextFormField(
                    // validator: registerController.fullnameValidator,
                    // controller: registerController.fullNameController,
                    // keyboardType: keyboardInputType,
                    cursorColor: Color(0xff003277),
                    decoration: InputDecoration(
                      // contentPadding: EdgeInsets.zero,
                      suffixIconConstraints: BoxConstraints(
                        minWidth: 30,
                        // minHeight: 0,
                      ),
                      hintText: 'Enter Product Color',
                    ),
                  ),
                  TextFormField(
                    // validator: registerController.fullnameValidator,
                    // controller: registerController.fullNameController,
                    // keyboardType: keyboardInputType,
                    cursorColor: Color(0xff003277),
                    decoration: InputDecoration(
                      // contentPadding: EdgeInsets.zero,
                      suffixIconConstraints: BoxConstraints(
                        minWidth: 30,
                        // minHeight: 0,
                      ),
                      hintText: 'Enter Lot Name',
                    ),
                  ),
                  TextFormField(
                    // validator: registerController.fullnameValidator,
                    // controller: registerController.fullNameController,
                    // keyboardType: keyboardInputType,
                    cursorColor: Color(0xff003277),
                    decoration: InputDecoration(
                      // contentPadding: EdgeInsets.zero,
                      suffixIconConstraints: BoxConstraints(
                        minWidth: 30,
                        // minHeight: 0,
                      ),
                      hintText: 'Enter Product Price',
                    ),
                  ),
                  TextFormField(
                    // validator: registerController.fullnameValidator,
                    // controller: registerController.fullNameController,
                    // keyboardType: keyboardInputType,
                    cursorColor: Color(0xff003277),
                    decoration: InputDecoration(
                      // contentPadding: EdgeInsets.zero,
                      suffixIconConstraints: BoxConstraints(
                        minWidth: 30,
                        // minHeight: 0,
                      ),
                      hintText: 'Enter Product No. of Gears',
                    ),
                  ),
                  TextFormField(
                    // validator: registerController.fullnameValidator,
                    // controller: registerController.fullNameController,
                    // keyboardType: keyboardInputType,
                    cursorColor: Color(0xff003277),
                    decoration: InputDecoration(
                      // contentPadding: EdgeInsets.zero,
                      suffixIconConstraints: BoxConstraints(
                        minWidth: 30,
                        // minHeight: 0,
                      ),
                      hintText: 'Enter Product Fuel tank capacity',
                    ),
                  ),
                  TextFormField(
                    // validator: registerController.fullnameValidator,
                    // controller: registerController.fullNameController,
                    // keyboardType: keyboardInputType,
                    cursorColor: Color(0xff003277),
                    decoration: InputDecoration(
                      // contentPadding: EdgeInsets.zero,
                      suffixIconConstraints: BoxConstraints(
                        minWidth: 30,
                        // minHeight: 0,
                      ),
                      hintText: 'Enter Product Top Speed',
                    ),
                  ),
                  TextFormField(
                    // validator: registerController.fullnameValidator,
                    // controller: registerController.fullNameController,
                    // keyboardType: keyboardInputType,
                    cursorColor: Color(0xff003277),
                    decoration: InputDecoration(
                      // contentPadding: EdgeInsets.zero,
                      suffixIconConstraints: BoxConstraints(
                        minWidth: 30,
                        // minHeight: 0,
                      ),
                      hintText: 'Enter Product Max Power',
                    ),
                  ),
                  TextFormField(
                    // validator: registerController.fullnameValidator,
                    // controller: registerController.fullNameController,
                    // keyboardType: keyboardInputType,
                    cursorColor: Color(0xff003277),
                    decoration: InputDecoration(
                      // contentPadding: EdgeInsets.zero,
                      suffixIconConstraints: BoxConstraints(
                        minWidth: 30,
                        // minHeight: 0,
                      ),
                      hintText: 'Enter Product Max Torque',
                    ),
                  ),
                  TextFormField(
                    // validator: registerController.fullnameValidator,
                    // controller: registerController.fullNameController,
                    // keyboardType: keyboardInputType,
                    cursorColor: Color(0xff003277),
                    decoration: InputDecoration(
                      // contentPadding: EdgeInsets.zero,
                      suffixIconConstraints: BoxConstraints(
                        minWidth: 30,
                        // minHeight: 0,
                      ),
                      hintText: 'Enter Product Brand',
                    ),
                  ),
                  TextFormField(
                    // validator: registerController.fullnameValidator,
                    // controller: registerController.fullNameController,
                    // keyboardType: keyboardInputType,
                    cursorColor: Color(0xff003277),
                    decoration: InputDecoration(
                      // contentPadding: EdgeInsets.zero,
                      suffixIconConstraints: BoxConstraints(
                        minWidth: 30,
                        // minHeight: 0,
                      ),
                      hintText: 'Enter Product Model',
                    ),
                  ),
                  TextFormField(
                    // validator: registerController.fullnameValidator,
                    // controller: registerController.fullNameController,
                    // keyboardType: keyboardInputType,
                    cursorColor: Color(0xff003277),
                    decoration: InputDecoration(
                      // contentPadding: EdgeInsets.zero,
                      suffixIconConstraints: BoxConstraints(
                        minWidth: 30,
                        // minHeight: 0,
                      ),
                      hintText: 'Enter Product Engine_displacement_cc',
                    ),
                  ),
                  TextFormField(
                    // validator: registerController.fullnameValidator,
                    // controller: registerController.fullNameController,
                    // keyboardType: keyboardInputType,
                    cursorColor: Color(0xff003277),
                    decoration: InputDecoration(
                      // contentPadding: EdgeInsets.zero,
                      suffixIconConstraints: BoxConstraints(
                        minWidth: 30,
                        // minHeight: 0,
                      ),
                      hintText: 'Enter Product Brand',
                    ),
                  ),
                  TextFormField(
                    // validator: registerController.fullnameValidator,
                    // controller: registerController.fullNameController,
                    // keyboardType: keyboardInputType,
                    cursorColor: Color(0xff003277),
                    decoration: InputDecoration(
                      // contentPadding: EdgeInsets.zero,
                      suffixIconConstraints: BoxConstraints(
                        minWidth: 30,
                        // minHeight: 0,
                      ),
                      hintText: 'Enter Product No of Cylinder',
                    ),
                  ),
                  TextFormField(
                    // validator: registerController.fullnameValidator,
                    // controller: registerController.fullNameController,
                    // keyboardType: keyboardInputType,
                    cursorColor: Color(0xff003277),
                    decoration: InputDecoration(
                      // contentPadding: EdgeInsets.zero,
                      suffixIconConstraints: BoxConstraints(
                        minWidth: 30,
                        // minHeight: 0,
                      ),
                      hintText: 'Enter Product Model Year',
                    ),
                  ),
                  SizedBoxH10(),
                  Row(
                    children: [
                      Text('Product Image:'),
                      Container(
                        constraints: BoxConstraints(maxWidth: double.infinity),
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10),
                        child: ElevatedButton(
                          onPressed: () async {},
                          child: Text('pick a file'),
                        ),
                      ),
                    ],
                  ),
                  SizedBoxH5(),
                  Row(
                    children: [
                      Text('Scratch on Product:'),
                      SizedBoxW5(),
                      Text('Yes'),
                      Checkbox(
                        value: false,
                        onChanged: (value) {},
                      ),
                      Text('No'),
                      Checkbox(
                        value: false,
                        onChanged: (value) {},
                      ),
                    ],
                  ),
                  Container(
                    // margin: EdgeInsets.only(bottom: 10),
                    constraints: BoxConstraints(maxHeight: 50, maxWidth: 120),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      // borderRadius: BorderRadius.all(Radius.circular(10)),
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
                          'Submit',
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
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
