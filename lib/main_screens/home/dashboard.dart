import 'package:bridge_v2/main_screens/home/dashboard_controller.dart';
import 'package:bridge_v2/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DashboardController());
    return Scaffold(
      backgroundColor: kPrimaryBlack,
      extendBody: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kPrimaryBlack,
        shape: const CircleBorder(),
        child: const Icon(Icons.add, color: kPrimaryWhite),
      ),
      body: controller.screens.elementAt(controller.selectedIndex.value),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          items: controller.items,
          currentIndex: controller.selectedIndex.value,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: kPrimaryBlack,
          selectedItemColor: kPrimaryBlack,
          // unselectedLabelStyle: GoogleFonts.manrope(
          //     fontSize: 14.sp, fontWeight: kBold, color: kPrimaryBlack),
          onTap: controller.onItemTapped,
        ),
      ),
    );
  }
}
