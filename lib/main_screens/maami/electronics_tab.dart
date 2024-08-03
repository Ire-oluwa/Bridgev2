import 'dart:math';

import 'package:bridge_v2/utilities/constants.dart';
import 'package:bridge_v2/utilities/strings.dart';
import 'package:bridge_v2/utilities/widgets/my_text.dart';
import 'package:bridge_v2/utilities/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ElectronicsTab extends StatelessWidget {
  const ElectronicsTab({super.key});

  @override
  Widget build(BuildContext context) {
    final imagePaths = [
      "images/home_screen/headset.png",
      "images/home_screen/macbook_air.png",
      "images/home_screen/laptop.png",
      "images/home_screen/speaker.png"
    ];
    List<String> shuffleImagePaths(List<String> paths) {
      final random = Random();
      final List<String> shuffledPaths = List.from(paths);
      shuffledPaths.shuffle(random);
      return shuffledPaths;
    }

    final shuffledImages = shuffleImagePaths(imagePaths);
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyText(
                text: kElectronicsTopDeals,
                fontSize: 16.sp,
                fontWeight: kBold,
              ),
              GestureDetector(
                onTap: () {},
                child: MyText(
                  text: kViewAll,
                  fontSize: 12.sp,
                  fontWeight: kSemiBold,
                ),
              ),
            ],
          ),
          MySpace(height: 8.h),
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16.w,
              mainAxisSpacing: 8.h,
            ),
            shrinkWrap: true,
            itemCount: 4,
            itemBuilder: (context, index) {
              return Card(
                color: kCardWhite,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Image.asset("images/home_screen/headset.png"),
                    Image.asset(shuffledImages[index]),
                    MyText(
                      text: "Headsets PN-900",
                      fontSize: 12.sp,
                      fontWeight: kSemiBold,
                      colour: kGrey,
                    ),
                    MyText(
                      text: "NGN 15,000",
                      fontSize: 12.sp,
                      fontWeight: kSemiBold,
                      colour: kPrimaryBlack,
                    ),
                  ],
                ),
              );
            },
          ),
          Padding(
            padding: EdgeInsets.only(top: 16.h, bottom: 18.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyText(
                  text: kRecentlyViewed,
                  fontSize: 16.sp,
                  fontWeight: kBold,
                ),
                GestureDetector(
                  onTap: () {},
                  child: MyText(
                    text: kViewAll,
                    fontSize: 12.sp,
                    fontWeight: kSemiBold,
                  ),
                ),
              ],
            ),
          ),
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16.w,
              mainAxisSpacing: 8.h,
            ),
            shrinkWrap: true,
            itemCount: 2,
            itemBuilder: (context, index) {
              return Card(
                color: kCardWhite,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Image.asset("images/home_screen/headset.png"),
                    Image.asset(shuffledImages[index]),
                    MyText(
                      text: "Headsets PN-900",
                      fontSize: 12.sp,
                      fontWeight: kSemiBold,
                      colour: kGrey,
                    ),
                    MyText(
                      text: "NGN 15,000",
                      fontSize: 12.sp,
                      fontWeight: kSemiBold,
                      colour: kPrimaryBlack,
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
