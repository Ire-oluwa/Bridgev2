import 'package:bridge_v2/main_screens/home/home_controller.dart';
import 'package:bridge_v2/utilities/constants.dart';
import 'package:bridge_v2/utilities/strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return DefaultTabController(
      length: controller.tabPages.length,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: kPrimaryBlack,
          appBar: AppBar(
            backgroundColor: kPrimaryBlack,
            toolbarHeight: 101.h,
            elevation: 0,
            leading: const SizedBox(),
            flexibleSpace: Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 45.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.more_vert,
                                color: kPrimaryWhite,
                              )),
                          CircleAvatar(radius: 20.r, backgroundColor: kGrey),
                        ],
                      ),
                    ),
                    TabBar(
                      dividerColor: kTransparent,
                      labelColor: kPrimaryWhite,
                      unselectedLabelColor: kPrimaryWhite,
                      labelStyle: GoogleFonts.mulish(
                          fontSize: 16.sp, fontWeight: kBold),
                      unselectedLabelStyle: GoogleFonts.mulish(
                          fontSize: 16.sp, fontWeight: kBold),
                      tabs: const [
                        Tab(text: kTrending),
                        Tab(text: kMyConnects),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          body: Container(
            color: kGrey,
            child: TabBarView(
              children: controller.tabPages,
            ),
          ),
        ),
      ),
    );
  }
}
