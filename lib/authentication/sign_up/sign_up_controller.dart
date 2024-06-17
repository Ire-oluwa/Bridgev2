import 'dart:developer';

import 'package:bridge_v2/routes/route_names.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUpControl extends GetxController {
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final email = TextEditingController();
  final callUpNumber = TextEditingController();
  final phoneNumber = TextEditingController();
  final password = TextEditingController();
  final RxBool isTextObscure = false.obs;
  late final String selectedGender;

  @override
  void onInit() {
    super.onInit();
    selectedGender = genders[0];
    update();
  }

  void moveToLogin() => Get.toNamed(RouteName.signIn);

  void obscureText() {
    isTextObscure.value = !isTextObscure.value;
    update();
  }

  void changeDropdownValue(value){
    selectedGender = value;
    update();
  }

  final List<String> genders = [
    "Male",
    "Female",
  ];

  Future savePersonalDetails() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("firstName", firstName.text.trim());
    prefs.setString("lastName", lastName.text.trim());
    prefs.setString("email", email.text.trim());
    prefs.setString("callUpNumber", callUpNumber.text.trim());
    prefs.setString("phoneNumber", phoneNumber.text.trim());
    prefs.setString("password", password.text.trim());
  }

}
