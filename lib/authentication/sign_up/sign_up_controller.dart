import 'package:bridge_v2/routes/route_names.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
    selectedGender = "";
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

}
