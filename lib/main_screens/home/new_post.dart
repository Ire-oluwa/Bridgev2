import 'package:bridge_v2/utilities/constants.dart';
import 'package:bridge_v2/utilities/strings.dart';
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
        leading: const BackButton(color: kPrimaryWhite,),
        title: MyText(text: kNewPost, colour: kPrimaryWhite, fontSize: 20.sp, fontWeight: kExtraBold,),
      ),
      body: kUnfocus(
        child: SingleChildScrollView(
          child: Container(
            color: kGrey,
            height: 768.h,
            padding: EdgeInsets.fromLTRB(24.w, 32.h, 18.w, 76.h),
            child: Column(
              children: [
                Row(),
                MySpace(),
                MyTextField(textFieldSize: 321.h, hint: kPost, textInputAction: TextInputAction.newline,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
