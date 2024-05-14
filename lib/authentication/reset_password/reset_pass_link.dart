import 'package:bridge_v2/authentication/reset_password/reset_password_control.dart';
import 'package:bridge_v2/routes/route_names.dart';
import 'package:bridge_v2/utilities/constants.dart';
import 'package:bridge_v2/utilities/strings.dart';
import 'package:bridge_v2/utilities/widgets/my_button.dart';
import 'package:bridge_v2/utilities/widgets/my_text.dart';
import 'package:bridge_v2/utilities/widgets/my_textfield.dart';
import 'package:bridge_v2/utilities/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ResetPasswordEmailScreen extends StatelessWidget {
  const ResetPasswordEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final resetController = ResetPasswordController();
    return Scaffold(
      body: kUnfocus(
        child: SafeArea(
          child: Container(
            height: 1.sh,
            color: kPrimaryWhite,
            child: Padding(
              padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 24.h),
              child: SingleChildScrollView(
                physics: const ScrollPhysics(),
                child: Column(
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          child: const Icon(Icons.arrow_back),
                          onTap: () => Get.back(),
                        ),
                        MySpace(width: 30.w),
                        MyText(
                          text: kResetPassword,
                          fontSize: 24.sp,
                          fontWeight: kExtraBold,
                        ),
                      ],
                    ),
                    const MySpace(),
                    MyText(
                        text: kResetText, fontSize: 14.sp, fontWeight: kNormal),
                    MySpace(height: 16.h),
                    MyTextField(
                      hint: kEmailAddress,
                      label: kEmailAddress,
                      inputType: kEmailKeyboard,
                      controller: resetController.email,
                    ),
                    const MySpace(),
                    MyButton(
                      onPressed: () => Get.toNamed(RouteName.resetPasswordConfirmPassword),
                      colour: kYellowBackground,
                      child: MyText(text: kSendResetLink, fontSize: 16.sp, fontWeight: kBlack,),
                    )
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
