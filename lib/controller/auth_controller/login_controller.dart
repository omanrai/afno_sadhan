import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;

import 'package:shared_preferences/shared_preferences.dart';

import '../../constant.dart';
import '../../view/home.dart';

class LoginController extends GetxController {
  final TextEditingController emailControllerLogin = TextEditingController();
  final TextEditingController passwordControllerLogin = TextEditingController();
  Map serverError = <String, String>{};
  var isPasswordHidden = true;

  //token Header
  String? token;

  bool isregisterBtnClicked = false;
  String? error = null;
  bool isRegistering = false;
  final formkey = GlobalKey<FormState>();
//shared reference
  final String keyEmail = "email";
  var emailValue = '';

  final String keyPassword = "password";
  var passwordValue = '';

  final String keyUserID = "userID";
  var userIDValue = '';
  final String keyUserName = "userName";
  var userNameValue = '';
  final String keyUserImage = "userImage";
  String? userImageValue = null;
  final String keyUserPhone = "userPhone";
  var userPhoneValue = '';
  final String keyUserToken = "userToken";
  var userTokenValue = '';

  @override
  void onInit() {
    super.onInit();
    getValue();
    LocalUserEmailandPW();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    emailControllerLogin.dispose();

    passwordControllerLogin.dispose();

    super.onClose();
  }

  void showHidePw() {
    if (isPasswordHidden == true)
      isPasswordHidden = false;
    else
      isPasswordHidden = true;
    update();
  }

  void registerClick() {
    isregisterBtnClicked = true;
    update();
  }

  String? emailValidatorLogin(String? value) {
    if (value == null || value.isEmpty || !GetUtils.isEmail(value)) {
      return 'Invalid Email';
    } else if (serverError['nameErr'] != null) {
      return serverError['nameErr'];
    }
    return null;
  }

  String? passwordValidatorLogin(String? value) {
    if (value == null || !GetUtils.isLengthGreaterOrEqual(value, 8)) {
      return 'Minimum 8 Character';
    } else if (serverError['msg'] != null) {
      return serverError['msg'];
    }
    return null;
  }

  void login() async {
    if (formkey.currentState!.validate()) {
      isRegistering = true;
      error = null;
      update();
      try {
        http.Response response =
            await http.post(Uri.parse('${API_URL}login'), body: {
          'user_email': emailControllerLogin.text,
          'password': passwordControllerLogin.text,
        });

        if (response.statusCode == 200) {
          var data = jsonDecode(response.body);
          print(data);
          print('Login successfully');
          storeInLocal(
            data['user']['user_id'].toString(),
            data['user']['name'],
            data['user']['phone_number'].toString(),
            data['user']['profile_image'].toString(),
            data['token'],
          );
          token = data['token'];
          userNameValue = data['user']['name'];
          userPhoneValue = data['user']['phone_number'];
          userImageValue = data['user']['profile_image'];
          userIDValue = data['user']['user_id'].toString();

          // afterRegister();
          Get.off(() => HomePage());
        } else {
          print(response.body);
          var errorData = jsonDecode(response.body);

          //change nameErr , msg to email and password
          if (errorData['nameErr'] != null) {
            print(errorData['nameErr']);
            serverError['nameErr'] = errorData['nameErr'];
          }
          if (errorData['msg'] != null) {
            print(errorData['msg']);
            serverError['msg'] = errorData['msg'];
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

  void getValue() async {
    var prefs = await SharedPreferences.getInstance();

    var getEmail = prefs.getString(keyEmail);
    emailValue = getEmail ?? "No Email Value";
    print(emailValue);

    var getPassword = prefs.getString(keyPassword);
    passwordValue = getPassword ?? "No passsword Value";
    print(passwordValue);

    var getUserID = prefs.getString(keyUserID);
    userIDValue = getUserID ?? "No userID Value";
    print(userIDValue);

    var getUserName = prefs.getString(keyUserID);
    userNameValue = getUserName ?? "No username Value";
    print(userNameValue);

    var getUserPhone = prefs.getString(keyUserPhone);
    userPhoneValue = getUserPhone ?? "No userphone Value";
    print(userPhoneValue);

    var getUserImage = prefs.getString(keyUserImage);
    userImageValue = getUserImage ?? "No userimage Value";
    print(userImageValue);
    var getUserToken = prefs.getString(keyUserToken);
    userTokenValue = getUserToken ?? "No userToken Value";
    print(userTokenValue);
  }

  Future storeInLocal(String userID, String userName, String userPhone,
      String userImage, String userToken) async {
    var prefs = await SharedPreferences.getInstance();
    prefs.setString(keyEmail, emailControllerLogin.text);
    prefs.setString(keyPassword, passwordControllerLogin.text);

    prefs.setString(keyUserID, userID);
    prefs.setString(keyUserName, userName);
    prefs.setString(keyUserPhone, userPhone);
    prefs.setString(keyUserImage, userImage);
    prefs.setString(keyUserToken, userToken);

    // prefs.setString(keyUserID, .text);
  }

  void LocalUserEmailandPW() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    emailControllerLogin.text = preferences.getString(keyEmail) ?? '';
    passwordControllerLogin.text = preferences.getString(keyPassword) ?? '';
  }
}
