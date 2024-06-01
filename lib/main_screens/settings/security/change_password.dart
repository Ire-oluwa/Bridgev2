import 'package:bridge_v2/main_screens/settings/security/security_controller.dart';
import 'package:bridge_v2/routes/route_names.dart';
import 'package:bridge_v2/utilities/constants.dart';
import 'package:bridge_v2/utilities/strings.dart';
import 'package:bridge_v2/utilities/widgets/my_button.dart';
import 'package:bridge_v2/utilities/widgets/my_text.dart';
import 'package:bridge_v2/utilities/widgets/my_textfield.dart';
import 'package:bridge_v2/utilities/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SecurityController());
    return Scaffold(
      backgroundColor: kPrimaryBlack,
      appBar: AppBar(
        centerTitle: true,
        title: MyText(
          text: kChangePassword,
          fontSize: 20.sp,
          fontWeight: kExtraBold,
        ),
      ),
      body: kUnfocus(
        child: Container(
          color: kGrey,
          height: 1.sh,
          padding: EdgeInsets.fromLTRB(24.w, 22.h, 24.w, 0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Obx(
                  () => MyTextField(
                    controller: controller.password,
                    label: kPassword,
                    hint: kPassword,
                    textFormatter: kPasswordFormatter,
                    obscure: controller.isPasswordObscure.value,
                    suffixIcon: GestureDetector(
                      onTap: () => controller.obscurePassword(),
                      child: Icon(
                        controller.isPasswordObscure.value == true
                            ? Icons.remove_red_eye_outlined
                            : Icons.remove_red_eye_sharp,
                      ),
                    ),
                  ),
                ),
                const MySpace(),
                Obx(
                  () => MyTextField(
                    controller: controller.confirmPassword,
                    label: kConfirmPassword,
                    hint: kConfirmPassword,
                    textFormatter: kPasswordFormatter,
                    obscure: controller.isConfirmPasswordObscure.value,
                    suffixIcon: GestureDetector(
                      onTap: () => controller.obscureConfirmPassword(),
                      child: Icon(
                        controller.isConfirmPasswordObscure.value == true
                            ? Icons.remove_red_eye_outlined
                            : Icons.remove_red_eye_sharp,
                      ),
                    ),
                  ),
                ),
                const MySpace(),
                MyButton(
                  onPressed: () => Get.toNamed(RouteName.transferPin),
                  child: MyText(
                    text: kChangePassword,
                    fontSize: 16.sp,
                    fontWeight: kBlack,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
