import 'package:bridge_v2/routes/route_names.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginControl extends GetxController {
  final email = TextEditingController();
  final password = TextEditingController();
  final RxBool isTextObscure = false.obs;

  void moveToSignUp ()=> Get.toNamed(RouteName.signUp);
  void obscureText() {
    isTextObscure.value = !isTextObscure.value;
    update();
  }
}