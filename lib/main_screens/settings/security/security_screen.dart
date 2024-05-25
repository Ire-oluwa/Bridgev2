import 'package:bridge_v2/routes/route_names.dart';
import 'package:bridge_v2/utilities/constants.dart';
import 'package:bridge_v2/utilities/strings.dart';
import 'package:bridge_v2/utilities/widgets/my_list_tile.dart';
import 'package:bridge_v2/utilities/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SecurityScreen extends StatelessWidget {
  const SecurityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryBlack,
      appBar: AppBar(
        centerTitle: true,
        title: MyText(text: kSecurity, fontSize: 20.sp, fontWeight: kExtraBold),
      ),
      body: Container(
        color: kGrey,
        height: 1.sh,
        child: Column(
          children: [
            MyListTiles(
              leading: SvgPicture.asset("images/settings/change_password.svg"),
              title: MyText(
                text: kChangePassword,
                fontSize: 17.sp,
                fontWeight: kSemiBold,
              ),
              onTap: () {
                Get.toNamed(RouteName.changePassword);
              },
            ),
            MyListTiles(
              leading: SvgPicture.asset("images/settings/transfer_pin.svg"),
              title: MyText(
                text: kTransferPin,
                fontSize: 17.sp,
                fontWeight: kSemiBold,
              ),
              onTap: () {
                Get.toNamed(RouteName.transferPin);
              },
            ),
          ],
        ),
      ),
    );
  }
}
