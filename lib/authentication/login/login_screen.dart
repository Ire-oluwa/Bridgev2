import 'package:bridge_v2/authentication/login/login_controller.dart';
import 'package:bridge_v2/routes/route_names.dart';
import 'package:bridge_v2/utilities/constants.dart';
import 'package:bridge_v2/utilities/strings.dart';
import 'package:bridge_v2/utilities/widgets/my_button.dart';
import 'package:bridge_v2/utilities/widgets/my_text.dart';
import 'package:bridge_v2/utilities/widgets/my_textfield.dart';
import 'package:bridge_v2/utilities/widgets/space.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final loginController = Get.put(LoginControl());
    return Scaffold(
      body: kUnfocus(
        child: SafeArea(
          child: Container(
            height: 1.sh,
            color: kPrimaryWhite,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 18.h),
              child: SingleChildScrollView(
                physics: const ScrollPhysics(),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: MyText(
                        text: kLogin,
                        fontSize: 24.sp,
                        fontWeight: kExtraBold,
                      ),
                    ),
                    MySpace(),
                    MyTextField(
                      controller: loginController.email,
                      label: kEmailAddress,
                      hint: kEmailAddress,
                      textFormatter: kEmailFormatter,
                      inputType: kEmailKeyboard,
                    ),
                    MySpace(height: 16.h),
                    Obx(
                      () => MyTextField(
                        hint: kPassword,
                        label: kPassword,
                        obscure: loginController.isTextObscure.value,
                        controller: loginController.password,
                        textFormatter: kPasswordFormatter,
                        suffixIcon: GestureDetector(
                          onTap: () => loginController.obscureText(),
                          child: Icon(
                            loginController.isTextObscure.value == true
                                ? Icons.remove_red_eye_outlined
                                : Icons.remove_red_eye_sharp,
                          ),
                        ),
                      ),
                    ),
                    MySpace(height: 16.h),
                    MyButton(
                      onPressed: () {},
                      colour: kYellowBackground,
                      child: MyText(
                        text: kLogin,
                        fontSize: 16.sp,
                        fontWeight: kBlack,
                      ),
                    ),
                    MySpace(height: 41.h),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "$kHaveNoAccount\t",
                            style: GoogleFonts.mulish(
                                fontSize: 16.sp,
                                color: kPrimaryBlack,
                                fontWeight: kSemiBold),
                          ),
                          TextSpan(
                              text: kSignUp,
                              style: GoogleFonts.mulish(
                                  fontSize: 16.sp,
                                  color: kPrimaryBlack,
                                  fontWeight: kBold),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Get.toNamed(RouteName.signUp);
                                }),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
