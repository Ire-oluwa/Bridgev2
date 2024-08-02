import 'package:bridge_v2/main_screens/home/dashboard_controller.dart';
import 'package:bridge_v2/routes/route_names.dart';
import 'package:bridge_v2/utilities/constants.dart';
import 'package:bridge_v2/utilities/strings.dart';
import 'package:bridge_v2/utilities/widgets/my_text.dart';
import 'package:bridge_v2/utilities/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DashboardController());
    return Scaffold(
        key: controller.scaffoldKey,
        backgroundColor: kPrimaryBlack,
        extendBody: true,
        // appBar: controller.selectedIndex.value == 0
        //     ? null
        //     : AppBar(
        //         flexibleSpace: Padding(
        //           padding: EdgeInsets.symmetric(horizontal: 45.w),
        //           child: Row(
        //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //             children: [
        //               IconButton(
        //                   onPressed: () {},
        //                   icon: const Icon(
        //                     Icons.more_vert,
        //                     color: kPrimaryWhite,
        //                   )),
        //               // CircleAvatar(radius: 20.r, backgroundColor: kGrey),
        //             ],
        //           ),
        //         ),
        //       ),
        drawer: SafeArea(
          child: Drawer(
            backgroundColor: kPrimaryBlack,
            width: 260.w,
            child: Padding(
              padding: EdgeInsets.fromLTRB(16.w, 32.h, 16.w, 156.h),
              child: Column(
                children: [
                  MyListTile(
                    leading:
                        SvgPicture.asset("images/home_screen/notification.svg"),
                    text: kNotification,
                    onTap: () {
                      controller.scaffoldKey.currentState?.closeDrawer();
                      Get.toNamed(RouteName.notifications);
                    },
                  ),
                  MyListTile(
                    leading:
                        SvgPicture.asset("images/home_screen/dollar-circle.svg"),
                    text: kTransactions,
                    onTap: () {
                      controller.scaffoldKey.currentState?.closeDrawer();
                      Get.toNamed(RouteName.transactions);
                    },
                  ),
                  MyListTile(
                    leading: SvgPicture.asset("images/home_screen/house.svg"),
                    text: kAccommodation,
                    onTap: () {
                      controller.scaffoldKey.currentState?.closeDrawer();
                    },
                  ),
                  MyListTile(
                    leading: SvgPicture.asset("images/home_screen/settings.svg"),
                    text: kSettings,
                    onTap: () {
                      controller.scaffoldKey.currentState?.closeDrawer();
                      Get.toNamed(RouteName.settings);
                    },
                  ),
                  MySpace(height: 300.h),
                  MyListTile(
                    leading: SvgPicture.asset("images/home_screen/logout.svg"),
                    text: kLogout,
                    onTap: () {
                      controller.scaffoldKey.currentState?.closeDrawer();
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Obx(
            () => controller.screens.elementAt(controller.selectedIndex.value),),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            items: controller.items,
            currentIndex: controller.selectedIndex.value,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: kPrimaryBlack,
            selectedItemColor: kPrimaryBlack,
            onTap: (index) => controller.onItemTapped(index),
          ),
        ),
      );
  }
}

class MyListTile extends StatelessWidget {
  const MyListTile({
    super.key,
    this.leading,
    this.text,
    this.fontSize,
    this.fontWeight,
    this.textColour,
    this.onTap,
  });

  final Widget? leading;
  final String? text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? textColour;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      title: MyText(
        text: text ?? "",
        fontSize: fontSize ?? 17.sp,
        fontWeight: fontWeight ?? kRegular,
        colour: textColour ?? kPrimaryWhite,
      ),
      onTap: onTap,
    );
  }
}
