import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_task/model/register_model.dart';
import 'package:flutter_task/view/screens/home_screen.dart';
import 'package:flutter_task/view/screens/signin_screen.dart';
import 'package:flutter_task/view/screens/welcome_screen.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../model/login_model.dart';
import '../services/api_services.dart';

class SigninController extends GetxController {
  //User Login
  userLogin(String email, String password) async {
    Map<String, dynamic> loginData = {
      "user_email": email,
      "user_password": password
    };

    final response = await ApiService().userLogin(loginData);
    try {
      if (response!.statusCode == 200 || response.statusCode == 201) {
        final data = loginUserFromJson(response.data);
        Get.to(const HomeScreen());
        Get.snackbar(
          'Successful',
          'User logged Successfully',
          snackPosition: SnackPosition.BOTTOM,
        );
        final sharedPref = await SharedPreferences.getInstance();
        sharedPref.setBool(logged, data.status);
        sharedPref.get(logged);
      }
    } catch (e) {
      log(e.toString());
    }
  }

  //user Registration
  userRegister(
      String name, String phoneNumber, String email, String password) async {
    Map<String, dynamic> registerData = {
      "user_firstname": name,
      "user_phone": phoneNumber,
      "user_email": email,
      "user_password": password,
      "user_lastname": "A",
      "user_zipcode": "560711"
    };
    final response = await ApiService().userRegister(registerData);
    try {
      if (response!.statusCode == 200 || response.statusCode == 201) {
        final data = registerFailedUserFromJson(response.data);
        if (data.status == false) {
          Get.to(SigninScreen());
          Get.snackbar(
            'Successful',
            'Account Created Successfully',
            snackPosition: SnackPosition.BOTTOM,
          );
        } else {
          Get.snackbar(
            'Error',
            'User Already exists',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.red,
          );
        }
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
