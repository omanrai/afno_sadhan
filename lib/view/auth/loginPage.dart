import 'package:afno_sadhan/view/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant.dart';
import '../../controller/auth_controller/login_controller.dart';
import '../../template/sized_box.dart';
import 'registerPage.dart';

class LoginPage extends StatelessWidget {
//   // NotificationServices services = new NotificationServices();
  final LoginController loginController = Get.put(LoginController());
  FocusNode textFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
//     // services.initilization();
    return GestureDetector(
      onTap: () {
        FocusScopeNode textFocus = FocusScope.of(context);
        if (!textFocus.hasPrimaryFocus) {
          textFocus.unfocus();
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Column(
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
                    'Login',
                    style: TextStyle(
                        color: primaryColor,
                        fontSize: 25,
                        fontWeight: FontWeight.w800),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child:
                      Text('Please fill up the form with valid information '),
                ),

                SizedBox(
                  height: 35,
                ),
                // InfoTextonPressedFormBtn,
                Form(
                    key: loginController.formkey,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 40, right: 40, top: 0),
                          child: TextFormField(
                            // autovalidateMode:
                            //     AutovalidateMode.onUserInteraction,

                            validator: loginController.emailValidatorLogin,
                            controller: loginController.emailControllerLogin,
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
                        GetBuilder<LoginController>(
                          builder: ((controller) => Padding(
                                padding: EdgeInsets.only(
                                    left: 40, right: 40, top: 0),
                                child: TextFormField(
                                  // autovalidateMode:
                                  //     AutovalidateMode.onUserInteraction,
                                  focusNode: textFocus,
                                  validator: controller.passwordValidatorLogin,
                                  controller:
                                      controller.passwordControllerLogin,
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
                        GetBuilder<LoginController>(builder: (controller) {
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
                      ],
                    )),
                // InfoText('Password'),
                SizedBoxH20(),
                GestureDetector(
                  onTap: () {
                    // Write Click Listener Code Here
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 225, bottom: 10),
                    child: Text(
                      "Forget Password ?",
                      // textAlign: TextAlign.right,
                      style: TextStyle(
                          color: textcolor,
                          fontWeight: FontWeight.w500,
                          fontSize: 13),
                    ),
                  ),
                ),

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

                      // loginController.login();
                      Get.off(() => HomePage());
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 15, letterSpacing: 1),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Need an Account ?  ",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 12),
                      ),
                      GestureDetector(
                        child: Text(
                          "Register Now",
                          style: TextStyle(
                              color: textcolor,
                              fontWeight: FontWeight.w500,
                              fontSize: 13),
                        ),
                        onTap: () {
                          Get.off(() => RegisterPage(),
                              transition: Transition.leftToRight,
                              duration: Duration(milliseconds: 800));
                        },
                      )
                    ],
                  ),
                ),
                // OrDivider(),
                // GoogleSignIn(),
                Spacer(),
                Center(
                  // heightFactor: 9,
                  child: Wrap(
                    runSpacing: 2,
                    children: [
                      Text(
                        "By Signing up, you agree with Saral Course's ",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Terms.",
                        style: TextStyle(
                            color: textcolor,
                            fontSize: 13,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Learn How we process your data in our ",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Privacy Policy",
                        style: TextStyle(
                            color: textcolor,
                            fontSize: 13,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // GetBuilder<LoginController>(builder: (controller) {
            //   if (controller.isRegistering == true)
            //     return isRegisteringWidget();
            //   else
            //     return SizedBox.shrink();
            // }),
          ],
        ),
      ),
    );
  }
}
