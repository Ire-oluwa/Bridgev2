import 'package:bridge_v2/routes/route_names.dart';
import 'package:bridge_v2/utilities/constants.dart';
import 'package:bridge_v2/utilities/strings.dart';
import 'package:bridge_v2/utilities/widgets/my_list_tile.dart';
import 'package:bridge_v2/utilities/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryBlack,
      body: SafeArea(
        child: Scaffold(
          backgroundColor: kGrey,
          appBar: AppBar(
            centerTitle: true,
            title: MyText(
              text: kSettings,
              fontSize: 20.sp,
              fontWeight: kExtraBold,
            ),
          ),
          body: Container(
            child: Column(
              children: [
                Container(
                  height: 92.h,
                  color: kPrimaryBlack,
                  alignment: Alignment.center,
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 20.r,
                      backgroundColor: kGrey,
                    ),
                    title: MyText(
                      text: "Larry Davis",
                      fontSize: 20.sp,
                      fontWeight: kBold,
                      colour: kPrimaryWhite,
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      MyListTiles(leading: SvgPicture.asset("images/settings/profile.svg"), title: MyText(text: kProfile, fontSize: 17.sp, fontWeight: kSemiBold,), onTap: ()=> Get.toNamed(RouteName.profileScreen),),
                      MyListTiles(leading: SvgPicture.asset("images/settings/security.svg"), title: MyText(text: kSecurity, fontSize: 17.sp, fontWeight: kSemiBold,), onTap: ()=> Get.toNamed(RouteName.security),),
                      MyListTiles(leading: SvgPicture.asset("images/settings/document.svg"), title: MyText(text: kDocumentUpload, fontSize: 17.sp, fontWeight: kSemiBold,), onTap: ()=> Get.toNamed(RouteName.documentUpload),),
                      MyListTiles(leading: SvgPicture.asset("images/settings/bank.svg"), title: MyText(text: kWithdrawalBank, fontSize: 17.sp, fontWeight: kSemiBold,), onTap: ()=> {Get.toNamed(RouteName.withdrawalBank)},),
                      MyListTiles(leading: SvgPicture.asset("images/settings/privacy_and_policy.svg"), title: MyText(text: kTermsAndPrivacy, fontSize: 17.sp, fontWeight: kSemiBold,), onTap: ()=> Get.toNamed(RouteName.termsAndPrivacy),),
                      MyListTiles(leading: SvgPicture.asset("images/settings/help_and_support.svg"), title: MyText(text: kHelpAndSupport, fontSize: 17.sp, fontWeight: kSemiBold,), onTap: ()=> Get.toNamed(RouteName.helpsAndSupport),),
                      MyListTiles(leading: SvgPicture.asset("images/settings/deactivate_account.svg"), title: MyText(text: kDeactivateAccount, fontSize: 17.sp, fontWeight: kSemiBold,), onTap: (){},),
                      MyListTiles(leading: SvgPicture.asset("images/home_screen/logout.svg", color: kPrimaryBlack,), title: MyText(text: kLogout, fontSize: 17.sp, fontWeight: kSemiBold,), onTap: (){},),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
