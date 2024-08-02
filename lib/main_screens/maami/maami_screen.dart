import 'package:bridge_v2/main_screens/maami/maami_controller.dart';
import 'package:bridge_v2/utilities/constants.dart';
import 'package:bridge_v2/utilities/strings.dart';
import 'package:bridge_v2/utilities/widgets/space.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MaamiScreen extends StatefulWidget {
  const MaamiScreen({super.key});

  @override
  State<MaamiScreen> createState() => _MaamiScreenState();
}

class _MaamiScreenState extends State<MaamiScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final controller = Get.put(MaamiController());

  @override
  void initState() {
    _tabController =
        TabController(length: controller.tabPages.length, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kGrey,
        body: kUnfocus(
          child: Padding(
            padding: EdgeInsets.fromLTRB(24.w, 32.h, 24.h, 0),
            child: DefaultTabController(
              length: controller.tabPages.length,
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      isDense: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r)),
                      hintText: kSearch,
                      prefixIcon: IconButton(
                        onPressed: null,
                        icon: SvgPicture.asset(
                          "images/home_screen/search_icon.svg",
                          height: 18.h,
                          width: 18.w,
                        ),
                      ),
                      filled: true,
                      fillColor: kPrimaryWhite,
                    ),
                  ),
                  MySpace(height: 16.h),
                  Container(
                    color: kGrey,
                    child: AppBar(
                      backgroundColor: kGrey,
                      leading: const SizedBox.shrink(),
                      titleSpacing: 0.0,
                      automaticallyImplyLeading: false,
                      centerTitle: false,
                      title: TabBar(
                        indicator: BoxDecoration(
                          color: kYellowBackground,
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        // indicatorPadding: EdgeInsets.symmetric(horizontal: 8.w),
                        indicatorSize: TabBarIndicatorSize.tab,
                        dividerColor: kTransparent,
                        labelColor: kPrimaryBlack,
                        unselectedLabelColor: kPrimaryWhite,
                        labelStyle: GoogleFonts.mulish(
                          fontSize: 12.sp,
                          fontWeight: kBold,
                        ),
                        unselectedLabelStyle: GoogleFonts.mulish(
                          fontSize: 12.sp,
                          fontWeight: kBold,
                        ),
                        indicatorColor: kTransparent,
                        isScrollable: true,

                        tabs: [
                          Tab(text: kElectronics),
                          Tab(text: kGrocery),
                          Tab(text: kFurniture),
                          Tab(text: kClothing),
                          Tab(text: kSkincare),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: _tabController,
                      children: controller.tabPages,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
