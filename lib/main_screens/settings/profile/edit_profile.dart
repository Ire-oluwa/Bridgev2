import 'package:bridge_v2/utilities/constants.dart';
import 'package:bridge_v2/utilities/strings.dart';
import 'package:bridge_v2/utilities/widgets/my_text.dart';
import 'package:bridge_v2/utilities/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryBlack,
      appBar: AppBar(
        backgroundColor: kPrimaryBlack,
        leading: BackButton(color: kPrimaryWhite),
        centerTitle: true,
        title: MyText(
          text: kEditProfile,
          fontSize: 20.sp,
          fontWeight: kExtraBold,
          colour: kPrimaryWhite,
        ),
      ),
      body: SizedBox(
        height: 1.sh,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 0.8956.sh,
                  width: 1.sw,
                  color: Colors.green,
                  padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 124.h),
                  child: Column(
                    children: [
                      Text("efewrwogwor"),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    color: Colors.orange, // Change color as desired
                    height: 100.h, // Half screen height
                  ),
                ),
                Positioned(
                  left: 24.w,
                  top: 69.97.h,
                  child: CircleAvatar(
                    backgroundColor: kGrey,
                    radius: 26.3.r,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
