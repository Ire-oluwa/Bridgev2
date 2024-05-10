import 'package:bridge_v2/routes/route_names.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginControl extends GetxController {
  final email = TextEditingController();
  final password = TextEditingController();

  void moveToSignUp ()=> Get.toNamed(RouteName.signUp);
}