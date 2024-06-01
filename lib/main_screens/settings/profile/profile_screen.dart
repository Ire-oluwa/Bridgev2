import 'package:bridge_v2/routes/route_names.dart';
import 'package:bridge_v2/utilities/constants.dart';
import 'package:bridge_v2/utilities/strings.dart';
import 'package:bridge_v2/utilities/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryBlack,
      appBar: AppBar(
        backgroundColor: kPrimaryBlack,
        centerTitle: true,
        leading: const BackButton(color: kPrimaryWhite),
        title: MyText(
          text: kProfile,
          colour: kPrimaryWhite,
          fontSize: 20.sp,
          fontWeight: kExtraBold,
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 201.h,
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 36.r,
                      backgroundColor: kGrey,
                    ),
                    Column(
                      children: [
                        MyText(
                          text: "100",
                          fontSize: 16.sp,
                          fontWeight: kBlack,
                          colour: kPrimaryWhite,
                        ),
                        MyText(
                          text: "Posts",
                          fontSize: 14.sp,
                          fontWeight: kLight,
                          colour: kPrimaryWhite,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        MyText(
                          text: "100",
                          fontSize: 16.sp,
                          fontWeight: kBlack,
                          colour: kPrimaryWhite,
                        ),
                        MyText(
                          text: "Following",
                          fontSize: 14.sp,
                          fontWeight: kLight,
                          colour: kPrimaryWhite,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        MyText(
                          text: "100",
                          fontSize: 16.sp,
                          fontWeight: kBlack,
                          colour: kPrimaryWhite,
                        ),
                        MyText(
                          text: "Followers",
                          fontSize: 14.sp,
                          fontWeight: kLight,
                          colour: kPrimaryWhite,
                        ),
                      ],
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: MyText(
                    text: "Issac David",
                    fontSize: 16.sp,
                    fontWeight: kMedium,
                    colour: kPrimaryWhite,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () => Get.toNamed(RouteName.editProfile),
                      style: ElevatedButton.styleFrom(backgroundColor: kYellowBackground, fixedSize: Size(121.5.w, 40.h),),
                      child: MyText(text: kEditProfile, fontSize: 14.sp, fontWeight: kRegular, colour: kPrimaryBlack,),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(backgroundColor: kYellowBackground, fixedSize: Size(121.5.w, 40.h),),
                      child: MyText(text: kShareProfile, fontSize: 14.sp, fontWeight: kRegular, colour: kPrimaryBlack,),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(backgroundColor: kYellowBackground, fixedSize: Size(56.w, 40.h),),
                      child: SvgPicture.asset("images/settings/profile_add.svg"),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Container(
              color: kGrey,
              height: 0.6471.sh,
              padding: const EdgeInsets.all(24.0),
            ),
          ),
        ],
      ),
    );
  }
}
