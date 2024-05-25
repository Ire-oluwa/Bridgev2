import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SecurityController extends GetxController {
  final password = TextEditingController();
  final confirmPassword = TextEditingController();
  final pin = TextEditingController();
  final confirmPin = TextEditingController();

  final RxBool isTextObscure = false.obs;
  final RxBool isConfirmPasswordObscure = false.obs;
  void obscureText() {
    isTextObscure.value = !isTextObscure.value;
    update();
  }
  void obscureConfirmPassword() {
    isConfirmPasswordObscure.value = !isConfirmPasswordObscure.value;
    update();
  }
}