import 'package:bridge_v2/authentication/sign_up/sign_up_controller.dart';
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
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final signUpController = Get.put(SignUpControl());
    return Scaffold(
      backgroundColor: kYellowBackground,
      body: kUnfocus(
        child: SafeArea(
          child: Container(
            height: 1.sh,
            color: kPrimaryWhite,
            child: Padding(
              padding: EdgeInsets.only(
                left: 24.w,
                right: 24.w,
                top: 24.h,
                bottom: 52.h,
              ),
              child: SingleChildScrollView(
                physics: const ScrollPhysics(),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: MyText(
                        text: kSignUp,
                        fontSize: 24.sp,
                        fontWeight: kExtraBold,
                      ),
                    ),
                    MySpace(height: 10.h),
                    MyTextField(
                      controller: signUpController.firstName,
                      label: kFirstName,
                      hint: kFirstName,
                      capitalization: kNameCapitalization,
                      textFormatter: kSingleNameFormatter,
                      inputType: kNameKeyboard,
                    ),
                    MySpace(height: 16.h),
                    MyTextField(
                      controller: signUpController.lastName,
                      label: kLastName,
                      hint: kLastName,
                      capitalization: kNameCapitalization,
                      textFormatter: kSingleNameFormatter,
                      inputType: kNameKeyboard,
                    ),
                    MySpace(height: 16.h),
                    MyTextField(
                      controller: signUpController.email,
                      label: kEmailAddress,
                      hint: kEmailAddress,
                      textFormatter: kEmailFormatter,
                      inputType: kEmailKeyboard,
                    ),
                    MySpace(height: 16.h),
                    MyTextField(
                      controller: signUpController.callUpNumber,
                      label: kCallUpNumber,
                      hint: kCallUpNumber,
                      capitalization: kUpperCase,
                      inputType: TextInputType.text,
                      textFormatter: kCallUpNumberFormatter,
                    ),
                    MySpace(height: 16.h),
                    MyTextField(
                      controller: signUpController.phoneNumber,
                      label: kPhoneNumber,
                      hint: kPhoneNumber,
                      textFormatter: kNumberFormatter,
                      maxLength: 11,
                    ),
                    MySpace(height: 16.h),
                    Align(
                      alignment: Alignment.topLeft,
                      child: MyText(
                        text: kUploadID,
                        fontSize: 16.sp,
                        fontWeight: kSemiBold,
                      ),
                    ),
                    GestureDetector(
                      child: SvgPicture.asset(
                        "images/authentication/attach document.svg",
                      ),
                      onTap: () {},
                    ),
                    MySpace(height: 16.h),
                    Align(
                        alignment: Alignment.topLeft,
                        child: MyText(
                            text: kSex,
                            fontSize: 14.sp,
                            fontWeight: kSemiBold)),
                    SizedBox(
                      height: 50.h,
                      child: DropdownButtonFormField(
                        // value: signUpController.selectedGender,
                        dropdownColor: kPrimaryWhite,
                        hint: MyText(
                          text: kSex,
                          fontSize: 16.sp,
                          fontWeight: kRegular,
                        ),
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(), isDense: true),
                        items: signUpController.genders
                            .map<DropdownMenuItem<String>>((String gender) =>
                                DropdownMenuItem(
                                    value: signUpController.selectedGender,
                                    child: MyText(text: gender)))
                            .toList(),
                        onChanged: (String? value) {},
                      ),
                    ),
                    MySpace(height: 16.h),
                    Obx(
                      () => MyTextField(
                        hint: kPassword,
                        label: kPassword,
                        obscure: signUpController.isTextObscure.value,
                        controller: signUpController.password,
                        textFormatter: kPasswordFormatter,
                        suffixIcon: GestureDetector(
                          onTap: () => signUpController.obscureText(),
                          child: Icon(
                            signUpController.isTextObscure.value == true
                                ? Icons.remove_red_eye_outlined
                                : Icons.remove_red_eye_sharp,
                          ),
                        ),
                      ),
                    ),
                    const MySpace(),
                    MyButton(
                      onPressed: () {
                        Get.toNamed(RouteName.dashboard);
                      },
                      colour: kYellowBackground,
                      child: MyText(
                        text: kSignUp,
                        fontSize: 16.sp,
                        fontWeight: kBlack,
                      ),
                    ),
                    MySpace(height: 14.h),
                    RichText(
                      text: TextSpan(
                        // style: GoogleFonts.mulish(fontSize: 16.sp, color: kPrimaryBlack),
                        children: [
                          TextSpan(
                            text: "$kAlreadyAUser\t",
                            style: GoogleFonts.mulish(
                                fontSize: 16.sp,
                                color: kPrimaryBlack,
                                fontWeight: kSemiBold),
                          ),
                          TextSpan(
                              text: kLogin,
                              style: GoogleFonts.mulish(
                                  fontSize: 16.sp,
                                  color: kPrimaryBlack,
                                  fontWeight: kBold),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Get.toNamed(RouteName.signIn);
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
