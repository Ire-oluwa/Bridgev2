import 'package:bridge_v2/utilities/constants.dart';
import 'package:bridge_v2/utilities/strings.dart';
import 'package:bridge_v2/utilities/widgets/my_text.dart';
import 'package:bridge_v2/utilities/widgets/space.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_navigation/src/routes/get_transition_mixin.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

class TrendingPage extends StatelessWidget {
  const TrendingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ScrollPhysics(),
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 15,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 30.h),
            child: Container(
              height: 363.h,
              width: 328.w,
              color: kPrimaryWhite,
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20.r,
                        backgroundColor: kGrey,
                      ),
                      MySpace(
                        height: 0,
                        width: 10.w,
                      ),
                      MyText(
                        text: "Daniel John",
                        fontSize: 16.sp,
                        fontWeight: kBold,
                      ),
                      MySpace(height: 0, width: 121.w),
                      GestureDetector(
                        child: const Icon(Icons.more_horiz),
                      ),
                    ],
                  ),
                  MySpace(height: 16.h),
                  Expanded(
                    child: Image.asset("images/home_screen/bottle.png"),
                  ),
                  MySpace(height: 8.h),
                  SizedBox(
                    height: 72.h,
                    child: ReadMoreText(
                      kCommunitySubtitle,
                      trimMode: TrimMode.Line,
                      colorClickableText: kYellowBackground,
                      trimCollapsedText: "See more",
                      trimExpandedText: "See less",
                      style: GoogleFonts.manrope(
                        fontSize: 14.sp,
                        fontWeight: kRegular,
                      ),
                    ),
                  ),
                  MySpace(height: 8.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.5.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(child: SvgPicture.asset("images/home_screen/messages.svg")),
                            MyText(text: "1.2M", fontSize: 14.sp, fontWeight: kSemiBold,),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(child: FaIcon(FontAwesomeIcons.heart, size: 24.sp)),
                            MyText(text: "5361", fontSize: 14.sp, fontWeight: kSemiBold,),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(child: SvgPicture.asset("images/home_screen/share.svg")),
                            MyText(text: "Share", fontSize: 14.sp, fontWeight: kSemiBold,),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
