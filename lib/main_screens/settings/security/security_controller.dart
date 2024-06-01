import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SecurityController extends GetxController {
  final password = TextEditingController();
  final confirmPassword = TextEditingController();
  final pin = TextEditingController();
  final confirmPin = TextEditingController();

  final RxBool isPasswordObscure = false.obs;
  final RxBool isConfirmPasswordObscure = false.obs;
  final RxBool isPinObscure = false.obs;
  final RxBool isConfirmPinObscure = false.obs;

  void obscurePassword() {
    isPasswordObscure.value = !isPasswordObscure.value;
    update();
  }

  void obscureConfirmPassword() {
    isConfirmPasswordObscure.value = !isConfirmPasswordObscure.value;
    update();
  }

  void obscurePin() {
    isPinObscure.value = !isPinObscure.value;
    update();
  }

  void obscureConfirmPin() {
    isConfirmPinObscure.value = !isConfirmPinObscure.value;
    update();
  }
}
