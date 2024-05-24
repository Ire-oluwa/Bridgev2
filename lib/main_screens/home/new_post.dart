import 'package:bridge_v2/utilities/constants.dart';
import 'package:bridge_v2/utilities/strings.dart';
import 'package:bridge_v2/utilities/widgets/my_button.dart';
import 'package:bridge_v2/utilities/widgets/my_text.dart';
import 'package:bridge_v2/utilities/widgets/my_textfield.dart';
import 'package:bridge_v2/utilities/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewPost extends StatelessWidget {
  const NewPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryBlack,
      appBar: AppBar(
        backgroundColor: kPrimaryBlack,
        centerTitle: true,
        leading: const BackButton(
          color: kPrimaryWhite,
        ),
        title: MyText(
          text: kNewPost,
          colour: kPrimaryWhite,
          fontSize: 20.sp,
          fontWeight: kExtraBold,
        ),
      ),
      body: kUnfocus(
        child: SingleChildScrollView(
          child: Container(
            color: kGrey,
            height: 768.h,
            padding: EdgeInsets.fromLTRB(24.w, 32.h, 18.w, 76.h),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(backgroundColor: kPrimaryWhite, radius: 25.r),
                  ],
                ),
                const MySpace(),
                MyTextField(
                  textFieldSize: 321.h,
                  hint: kPostHint,
                  textInputAction: TextInputAction.newline,
                ),
                const MySpace(),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: kPrimaryBlack,
                          radius: 25.r,
                          child: const Icon(
                            Icons.add,
                            color: kPrimaryWhite,
                          ),
                        ),
                        CircleAvatar(backgroundColor: kDashboardBackground, radius: 25.r),
                        CircleAvatar(backgroundColor: kDashboardBackground, radius: 25.r),
                        CircleAvatar(backgroundColor: kDashboardBackground, radius: 25.r),
                        CircleAvatar(backgroundColor: kDashboardBackground, radius: 25.r),
                      ],
                    ),
                  ),
                ),
                MySpace(height: 69.h),
                MyButton(
                  onPressed: () {},
                  height: 56.h,
                  child: MyText(
                    text: kPost,
                    fontSize: 16.sp,
                    fontWeight: kBlack,
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
