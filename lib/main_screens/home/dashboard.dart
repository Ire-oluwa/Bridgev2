import 'package:bridge_v2/main_screens/home/dashboard_controller.dart';
import 'package:bridge_v2/main_screens/home/home_controller.dart';
import 'package:bridge_v2/utilities/constants.dart';
import 'package:bridge_v2/utilities/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DashboardController());
    return Obx(
      ()=> Scaffold(
        key: controller.scaffoldKey,
        backgroundColor: kPrimaryBlack,
        extendBody: true,
        appBar: controller.selectedIndex.value == 0 ? null : AppBar(
          flexibleSpace: Padding(
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
        ),
        drawer: Drawer(
          backgroundColor: kPrimaryBlack,
          width: 260.w,
          child: Column(
            children: [
              MyListTile(
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: kPrimaryBlack,
          shape: const CircleBorder(),
          child: const Icon(Icons.add, color: kPrimaryWhite),
        ),
        body: Obx(() => controller.screens.elementAt(controller.selectedIndex.value)),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            items: controller.items,
            currentIndex: controller.selectedIndex.value,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: kPrimaryBlack,
            selectedItemColor: kPrimaryBlack,
            onTap: (index)=> controller.onItemTapped(index),
          ),
        ),
      ),
    );
  }
}

class MyListTile extends StatelessWidget {
  const MyListTile({
    super.key, this.leading, this.text, this.fontSize, this.fontWeight, this.colour, this.onTap,
  });
  final Widget? leading;
  final String? text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? colour;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      title: MyText(text: text ?? "", fontSize: fontSize ?? 17.sp, fontWeight: fontWeight ?? kRegular, colour: colour ?? kPrimaryWhite,),
      onTap: onTap,
    );
  }
}
