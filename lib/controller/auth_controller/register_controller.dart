import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as httpResponse;
import 'package:http/http.dart';

import '../../constant.dart';
import '../../view/auth/loginPage.dart';

class RegisterController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  Map serverError = <String, String>{};

  var isPasswordHidden = true;
  bool isTACChecked = false;
  bool isregisterBtnClicked = false;
  String? error = null;
  bool isRegistering = false;
  final formkey = GlobalKey<FormState>();
  // final RegisterController registerController = Get.put(RegisterController());

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    emailController.dispose();
    phoneController.dispose();
    fullNameController.dispose();
    passwordController.dispose();

    super.onClose();
  }

  void showHidePw() {
    if (isPasswordHidden == true)
      isPasswordHidden = false;
    else
      isPasswordHidden = true;
    update();
  }

  void TACChecked(bool value) {
    isTACChecked = value;
    update();
  }

  void registerClick() {
    isregisterBtnClicked = true;
    update();
  }

  String? fullnameValidator(String? value) {
    if (value == null || value.isEmpty || value.trim().split(' ').length < 2) {
      return 'Invalid name';
    } else if (serverError['nameErr'] != null) {
      return serverError['nameErr'];
    }
    return null;
  }

  String? phoneNumberValidator(String? value) {
    if (value == null || !value.isNum || !GetUtils.isLengthEqualTo(value, 10)) {
      return 'Invalid Phone Number';
    } else if (serverError['phoneErr'] != null) {
      return serverError['phoneErr'];
    }
    return null;
  }

  String? emailValidator(String? value) {
    if (value == null || value.isEmpty || !GetUtils.isEmail(value)) {
      return 'Invalid Email';
    } else if (serverError['emailErr'] != null) {
      return serverError['emailErr'];
    }
    return null;
  }

  String? passwordValidator(String? value) {
    if (value == null || !GetUtils.isLengthGreaterOrEqual(value, 8)) {
      return 'Minimum 8 Character';
    } else if (serverError['passwordErr'] != null) {
      return serverError['passwordErr'];
    }
    return null;
  }

  void register() async {
    if (formkey.currentState!.validate() && isTACChecked == true) {
      // Get.snackbar('', 'Successful Register');
      isRegistering = true;
      error = null;
      update();
      try {
        httpResponse.Response response =
            await post(Uri.parse('${API_URL}register'), body: {
          'user_email': emailController.text,
          'password': passwordController.text,
          'name': fullNameController.text,
          'phone_number': phoneController.text
        });

        if (response.statusCode == 200) {
          var data = jsonDecode(response.body);
          print(data['token']);
          print('Register successfully');
          // afterRegister();
          Get.off(() => LoginPage());
        } else {
          print(response.body);
          var errorData = jsonDecode(response.body);
          if (errorData['nameErr'] != null) {
            print(errorData['nameErr']);
            serverError['nameErr'] = errorData['nameErr'];
          }
          if (errorData['phoneErr'] != null) {
            print(errorData['phoneErr']);
            serverError['phoneErr'] = errorData['phoneErr'];
          }
          if (errorData['emailErr'] != null) {
            print(errorData['emailErr']);
            serverError['emailErr'] = errorData['emailErr'];
          }
          if (errorData['passwordErr'] != null) {
            print(errorData['passwordErr']);
            serverError['passwordErr'] = errorData['passwordErr'];
          }
          formkey.currentState!.validate();
          serverError.clear();
          // formkey.currentState!.validate();
        }
      } catch (e) {
        print(e.toString());
        error = e.toString();
      }
      isRegistering = false;

      update();
    } else
      registerClick();
  }

  // void afterRegister() {
  //   Future.delayed(Duration(seconds: 3), () {
  //     isRegistering = false;

  //     update();
  //   });
  // }
}
