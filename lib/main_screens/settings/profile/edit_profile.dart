import 'package:bridge_v2/main_screens/settings/profile/profile_controller.dart';
import 'package:bridge_v2/utilities/constants.dart';
import 'package:bridge_v2/utilities/strings.dart';
import 'package:bridge_v2/utilities/widgets/my_button.dart';
import 'package:bridge_v2/utilities/widgets/my_text.dart';
import 'package:bridge_v2/utilities/widgets/my_textfield.dart';
import 'package:bridge_v2/utilities/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProfileController());
    return Scaffold(
      backgroundColor: kPrimaryBlack,
      appBar: AppBar(
        backgroundColor: kPrimaryBlack,
        leading: const BackButton(color: kPrimaryWhite),
        centerTitle: true,
        title: MyText(
          text: kEditProfile,
          fontSize: 20.sp,
          fontWeight: kExtraBold,
          colour: kPrimaryWhite,
        ),
      ),
      body: SizedBox(
        height: 1.sh,
        child: Column(
          children: [
            Stack(
              children: [
                kUnfocus(
                  child: Container(
                    // height: 0.8956.sh,
                    width: 1.sw,
                    color: kGrey,
                    padding:
                    EdgeInsets.only(left: 24.w, right: 24.w,),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          MySpace(height: 124.h),
                          MyTextField(
                            label: kFullName,
                            controller: controller.fullName,
                            textInputAction: kNextInputAction,
                            inputType: kNameKeyboard,
                            hint: kFullName,
                            textFormatter: kNameFormatter,
                          ),
                          MySpace(height: 16.h),
                          MyTextField(
                            label: kEmailAddress,
                            controller: controller.email,
                            textInputAction: kNextInputAction,
                            inputType: kEmailKeyboard,
                            hint: kEmailAddress,
                            textFormatter: kEmailFormatter,
                          ),
                          MySpace(height: 16.h),
                          MyTextField(
                            label: kPhoneNumber,
                            controller: controller.phone,
                            textInputAction: kNextInputAction,
                            inputType: kNumberKeyboard,
                            hint: kPhoneNumber,
                            textFormatter: kNumberFormatter,
                          ),
                          MySpace(height: 16.h),
                          Align(
                            alignment: Alignment.topLeft,
                            child: MyText(
                              text: kSex,
                              fontSize: 14.sp,
                              fontWeight: kSemiBold,
                            ),
                          ),
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
                              items: controller.genders
                                  .map<DropdownMenuItem<String>>(
                                      (String gender) =>
                                      DropdownMenuItem(
                                          value: gender,
                                          child: MyText(text: gender)))
                                  .toList(),
                              onChanged: (String? value) {},
                            ),
                          ),
                          MySpace(height: 16.h),
                          MyTextField(
                            label: kLocation,
                            controller: controller.location,
                            textInputAction: kNextInputAction,
                            inputType: TextInputType.text,
                            hint: kLocation,
                            textFormatter: kPasswordFormatter,
                          ),
                          MySpace(height: 16.h),
                          MyTextField(
                            label: kCallUpNumber,
                            controller: controller.callUpNumber,
                            textInputAction: kNextInputAction,
                            inputType: TextInputType.text,
                            hint: kCallUpNumber,
                            capitalization: kUpperCase,
                            textFormatter: kCallUpNumberFormatter,
                          ),
                          MySpace(height: 16.h),
                          MyButton(
                            onPressed: () {},
                            height: 50.h,
                            child: MyText(
                              text: kSave,
                              fontSize: 16.sp,
                              fontWeight: kBlack,
                            ),
                          ),
                          MySpace(height: 44.h),
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    color: kPrimaryBlack, // Change color as desired
                    height: 100.h, // Half screen height
                    child: Center(
                      child: InkWell(
                        child: SvgPicture.asset("images/settings/camera.svg"),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 24.w,
                  top: 69.97.h,
                  child: CircleAvatar(
                    backgroundColor: kFadedYellow,
                    radius: 26.3.r,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
