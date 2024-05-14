import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ResetPasswordController extends GetxController {
  final email = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();

  final RxBool isTextObscure = false.obs;
  void obscureText() {
    isTextObscure.value = !isTextObscure.value;
    update();
  }
}