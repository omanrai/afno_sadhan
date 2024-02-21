import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant.dart';
import '../../controller/auth_controller/register_controller.dart';
import '../../template/sized_box.dart';
import 'loginPage.dart';

class RegisterPage extends StatelessWidget {
  final RegisterController registerController = Get.put(RegisterController());
  FocusNode textFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode textFocus = FocusScope.of(context);
        if (!textFocus.hasPrimaryFocus) {
          textFocus.unfocus();
        }
      },
      child: Scaffold(
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 100,
                  ),

                  Center(
                    child: Text(
                      'Afno Sadhan',
                      style: TextStyle(
                          color: primaryColor,
                          fontSize: 35,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Text(
                      'Registration',
                      style: TextStyle(
                          color: primaryColor,
                          fontSize: 25,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child:
                        Text('Please fill up the form with valid information'),
                  ),

                  SizedBoxH30(),
                  Form(
                      key: registerController.formkey,
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.only(left: 40, right: 40, top: 0),
                            child: TextFormField(
                              // autovalidateMode:
                              //     AutovalidateMode.onUserInteraction,
                              validator: registerController.fullnameValidator,

                              controller: registerController.fullNameController,
                              // keyboardType: keyboardInputType,
                              cursorColor: Color(0xff003277),
                              decoration: InputDecoration(
                                // contentPadding: EdgeInsets.zero,
                                suffixIconConstraints: BoxConstraints(
                                  minWidth: 30,
                                  // minHeight: 0,
                                ),
                                suffixIcon: Icon(
                                  Icons.person,
                                  // color: Color(0xff003277),
                                  color: Colors.grey,
                                ),
                                hintText: 'Enter Full Name',
                              ),
                            ),
                          ),

                          SizedBoxH20(),
                          Padding(
                            padding:
                                EdgeInsets.only(left: 40, right: 40, top: 0),
                            child: TextFormField(
                              // autovalidateMode:
                              //     AutovalidateMode.onUserInteraction,

                              validator: registerController.emailValidator,
                              // c
                              controller: registerController.emailController,
                              keyboardType: TextInputType.emailAddress,
                              cursorColor: Color(0xff003277),
                              decoration: InputDecoration(
                                // contentPadding: EdgeInsets.zero,
                                suffixIconConstraints: BoxConstraints(
                                  minWidth: 30,
                                  // minHeight: 0,
                                ),
                                suffixIcon: Icon(
                                  Icons.email,
                                  // color: Color(0xff003277),
                                  color: Colors.grey,
                                ),
                                hintText: 'Enter Email',
                              ),
                            ),
                          ),

                          SizedBoxH20(),
                          Padding(
                            padding:
                                EdgeInsets.only(left: 40, right: 40, top: 0),
                            child: TextFormField(
                              // autovalidateMode:
                              //     AutovalidateMode.onUserInteraction,
                              validator:
                                  registerController.phoneNumberValidator,
                              controller: registerController.phoneController,
                              keyboardType: TextInputType.phone,
                              cursorColor: Color(0xff003277),
                              decoration: InputDecoration(
                                // contentPadding: EdgeInsets.zero,
                                suffixIconConstraints: BoxConstraints(
                                  minWidth: 30,
                                  // minHeight: 0,
                                ),
                                suffixIcon: Icon(
                                  Icons.phone,
                                  // color: Color(0xff003277),
                                  color: Colors.grey,
                                ),
                                hintText: 'Enter Phone Number',
                              ),
                            ),
                          ),

                          // InfoText('Phone Number'),

                          SizedBoxH20(),
                          // InfoText('Password'),

                          GetBuilder<RegisterController>(
                            builder: ((controller) => Padding(
                                  padding: EdgeInsets.only(
                                      left: 40, right: 40, top: 0),
                                  child: TextFormField(
                                    // autovalidateMode:
                                    //     AutovalidateMode.onUserInteraction,
                                    validator: controller.passwordValidator,
                                    controller: controller.passwordController,

                                    obscureText: controller.isPasswordHidden,
                                    keyboardType: TextInputType.visiblePassword,
                                    cursorColor: Color(0xff003277),
                                    decoration: InputDecoration(
                                      // contentPadding: EdgeInsets.zero,
                                      suffixIconConstraints: BoxConstraints(
                                        minWidth: 30,
                                        // minHeight: 0,
                                      ),
                                      suffixIcon: GestureDetector(
                                        onTap: () {
                                          controller.showHidePw();
                                        },
                                        child: Icon(
                                          controller.isPasswordHidden == true
                                              ? Icons.visibility_off
                                              : Icons.visibility,
                                          // color: Color(0xff003277),
                                          color: Colors.grey,
                                        ),
                                      ),
                                      hintText: 'Enter Password',
                                    ),
                                  ),
                                )),
                          ),

                          SizedBoxH10(),
                          Padding(
                            padding: EdgeInsets.only(left: 25),
                            child: Row(
                              children: [
                                GetBuilder<RegisterController>(
                                  builder: ((controller) => Checkbox(
                                      value: controller.isTACChecked,
                                      activeColor: secondarycolor,
                                      checkColor: Colors.white,
                                      onChanged: (value) {
                                        controller.TACChecked(value!);
                                      })),
                                ),
                                Text(
                                  "I accept all ",
                                ),
                                GestureDetector(
                                  child: Text(
                                    "Terms & Conditions.",
                                    style: TextStyle(
                                        color: textcolor, fontSize: 14),
                                  ),
                                  onTap: () {
                                    // terms and condition page
                                  },
                                ),
                              ],
                            ),
                          ),

                          GetBuilder<RegisterController>(builder: (controller) {
                            if (controller.isTACChecked == false &&
                                registerController.isregisterBtnClicked ==
                                    true) {
                              return Text(
                                'Please accept Terms & Condition first',
                                style: TextStyle(
                                    color: Colors.red[800],
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                              );
                            } else
                              return SizedBoxH10();
                          }),
                          GetBuilder<RegisterController>(builder: (controller) {
                            if (controller.error != null) {
                              return Text(
                                'Connection Error',
                                style: TextStyle(
                                    color: Colors.red[800],
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                              );
                            } else
                              return SizedBox(
                                height: 0,
                              );
                          }),

                          SizedBoxH10(),

                          Container(
                            width: double.maxFinite,
                            margin: EdgeInsets.only(left: 40, right: 40),
                            // height: 54,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  primaryColor,
                                  Color(0xff003277),
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey[200],
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 10),
                                  blurRadius: 50,
                                  color: Color(0xffEEEEEE),
                                ),
                              ],
                            ),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                elevation: 0,
                              ),
                              onPressed: () {
                                textFocus.unfocus();

                                registerController.register();
                              },
                              child: Text(
                                'Register',
                                style:
                                    TextStyle(fontSize: 15, letterSpacing: 1),
                              ),
                            ),
                          ),

                          // FormBtn('Register', onPressedFormBtn: () {
                          //   print("registered clicked");
                          // }),
                        ],
                      )),
                  // OrDivider(),
                  // GoogleSignIn(),
                  Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account ?  ",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                        GestureDetector(
                          child: Text(
                            "Login Now",
                            style: TextStyle(
                                color: textcolor,
                                fontWeight: FontWeight.w500,
                                fontSize: 13),
                          ),
                          onTap: () {
                            Get.off(
                              () => LoginPage(),
                              transition: Transition.rightToLeft,
                              duration: Duration(milliseconds: 800),
                            );
                          },
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            GetBuilder<RegisterController>(builder: (controller) {
              if (controller.isRegistering == true)
                return Container(
                  height: Get.height,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: Colors.black38,
                  ),
                  child: Center(
                      child: CircularProgressIndicator(
                    color: primaryColor,
                  )),
                );
              else
                return SizedBox.shrink();
            }),
          ],
        ),
      ),
    );
  }
}
