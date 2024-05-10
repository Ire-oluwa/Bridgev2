import 'package:bridge_v2/routes/route_names.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignUpControl extends GetxController{
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final email = TextEditingController();
  final callUpNumber = TextEditingController();
  final phoneNumber = TextEditingController();
  final password = TextEditingController();
  
  void moveToLogin() => Get.toNamed(RouteName.signIn);
}