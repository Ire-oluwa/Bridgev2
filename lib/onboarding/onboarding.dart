import 'package:bridge_v2/routes/route_names.dart';
import 'package:bridge_v2/utilities/constants.dart';
import 'package:bridge_v2/utilities/strings.dart';
import 'package:bridge_v2/utilities/widgets/my_button.dart';
import 'package:bridge_v2/utilities/widgets/my_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

int currentIndex = 0;

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kYellowBackground,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 438.h,
                color: kFadedYellow,
              ),
              Container(
                height: 371.h,
                color: kPrimaryWhite,
                child: Padding(
                  padding: EdgeInsets.only(left: 24.w, right: 24.w, bottom: 8.h),
                  child: Column(
                    children: [
                      SizedBox(height: 27.h),
                      DotsIndicator(
                        dotsCount: carouselItems.length,
                        position: currentIndex,
                        decorator: const DotsDecorator(
                            activeColor: kYellowBackground, color: kGrey),
                      ),
                      CarouselSlider(
                        items: carouselItems,
                        options: CarouselOptions(
                          autoPlay: true,
                          viewportFraction: 1,
                          onPageChanged: (index, reason) => setState(() {
                            currentIndex = index;
                          }),
                        ),
                      ),
                      MyButton(
                        onPressed: () {
                          Get.toNamed(RouteName.signUp);
                        },
                        colour: kYellowBackground,
                        child: MyText(
                          text: kSignUp,
                          fontSize: 16.sp,
                          fontWeight: kBlack,
                        ),
                      ),
                      SizedBox(height: 13.h),
                      RichText(
                        text: TextSpan(
                          // style: GoogleFonts.mulish(fontSize: 16.sp, color: kPrimaryBlack),
                          children: [
                            TextSpan(text: "$kAlreadyAUser\t",style: GoogleFonts.mulish(fontSize: 16.sp, color: kPrimaryBlack, fontWeight: kSemiBold)),
                            TextSpan(text: kLogin, style: GoogleFonts.mulish(fontSize: 16.sp, color: kPrimaryBlack, fontWeight: kBold), recognizer: TapGestureRecognizer()..onTap = (){Get.toNamed(RouteName.signIn);}),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  final carouselItems = [
    SizedBox(
      child: Column(
        children: [
          MyText(
              text: kCommunityTitle, fontSize: 24.sp, fontWeight: kExtraBold),
          MyText(
            text: kCommunitySubtitle,
            fontSize: 16.sp,
            fontWeight: kLight,
            align: TextAlign.center,
          ),
        ],
      ),
    ),
    SizedBox(
      child: Column(
        children: [
          MyText(
              text: kAccommodationTitle,
              fontSize: 24.sp,
              fontWeight: kExtraBold),
          MyText(
            text: kAccommodationSubtitle,
            fontSize: 16.sp,
            fontWeight: kLight,
            align: TextAlign.center,
          ),
        ],
      ),
    ),
    SizedBox(
      child: Column(
        children: [
          MyText(
              text: kMaamiMarketTitle, fontSize: 24.sp, fontWeight: kExtraBold),
          MyText(
            text: kMaamiMarketSubtitle,
            fontSize: 16.sp,
            fontWeight: kLight,
            align: TextAlign.center,
          ),
        ],
      ),
    ),
  ];
}
