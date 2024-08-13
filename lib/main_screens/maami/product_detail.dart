import 'package:bridge_v2/utilities/constants.dart';
import 'package:bridge_v2/utilities/strings.dart';
import 'package:bridge_v2/utilities/widgets/my_button.dart';
import 'package:bridge_v2/utilities/widgets/my_text.dart';
import 'package:bridge_v2/utilities/widgets/space.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetailScreen extends StatefulWidget {
  ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryWhite,
        appBar: AppBar(
          backgroundColor: kPrimaryWhite,
          title: MyText(
            text: kProductDetail,
            fontSize: 20.sp,
            fontWeight: kExtraBold,
          ),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              child: Container(
                height: 400.h,
                color: kGrey,
                child: Center(
                  child: Column(
                    children: [
                      MySpace(height: 42.h),
                      CarouselSlider(
                        items: imagePaths
                            .map(
                              (path) => SizedBox(
                                height: 273.h,
                                width: 276.w,
                                child: Card(
                                  color: kPrimaryWhite,
                                  child: Image.asset(path),
                                ),
                              ),
                            )
                            .toList(),
                        options: CarouselOptions(
                          enlargeCenterPage: true,
                          viewportFraction: 1.0,
                          autoPlay: true,
                          onPageChanged: (index, reason) => setState(() {
                            currentIndex = index;
                          }),
                        ),
                      ),
                      DotsIndicator(
                        dotsCount: imagePaths.length,
                        position: currentIndex,
                        decorator: DotsDecorator(
                          color: const Color(0xFF757575),
                          activeColor: kPrimaryBlack,
                          activeShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(34.r),
                          ),
                          activeSize: Size(24.w, 6.h),
                        ),
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: imagePaths
                              .map(
                                (path) => SizedBox(
                                  width: 73.w,
                                  height: 73.h,
                                  child: Card(
                                    color: kPrimaryWhite,
                                    child: Image.asset(path),
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyText(
                    text: "Sony WH-1000XM4",
                    fontSize: 20.sp,
                    fontWeight: kExtraBold,
                  ),
                  MySpace(height: 18.h),
                  MyText(text: yappings, fontSize: 14.sp, fontWeight: kLight),
                  MySpace(height: 18.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyText(
                        text: "NGN 4,999",
                        fontSize: 20.sp,
                        fontWeight: kExtraBold,
                      ),
                      SizedBox(
                        width: 80.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              backgroundColor: kGrey,
                              radius: 12.r,
                            ),
                            CircleAvatar(
                              backgroundColor: kGrey,
                              radius: 12.r,
                            ),
                            CircleAvatar(
                              backgroundColor: kGrey,
                              radius: 12.r,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  MySpace(height: 18.h),
                  Row(
                    children: [
                      MyButton(
                        onPressed: () {},
                        colour: kYellowBackground,
                        height: 57.h,
                        width: 151.w,
                        child: MyText(
                          text: kAddToCart,
                          fontSize: 16.sp,
                          fontWeight: kBlack,
                        ),
                      ),
                      MySpace(width: 18.h),
                      MyButton(
                        onPressed: () {},
                        colour: kPrimaryBlack,
                        height: 57.h,
                        width: 151.w,
                        child: MyText(
                          text: kBuyNow,
                          colour: kPrimaryWhite,
                          fontSize: 16.sp,
                          fontWeight: kBlack,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  int currentIndex = 0;

  final String yappings =
      "The intuitive and intelligent WH-1000XM4 headphones bring you new improvements in industry-leading noise cancelling technology.";

  final imagePaths = [
    "images/home_screen/speaker.png",
    "images/home_screen/headset.png",
    "images/home_screen/macbook_air.png"
  ];
}
