import 'package:bridge_v2/main_screens/settings/document_upload/upload_controller.dart';
import 'package:bridge_v2/utilities/constants.dart';
import 'package:bridge_v2/utilities/strings.dart';
import 'package:bridge_v2/utilities/widgets/my_button.dart';
import 'package:bridge_v2/utilities/widgets/my_text.dart';
import 'package:bridge_v2/utilities/widgets/space.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class DocumentUpload extends StatelessWidget {
  const DocumentUpload({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UploadController());
    return Scaffold(
      backgroundColor: kPrimaryBlack,
      appBar: AppBar(
        centerTitle: true,
        title: MyText(
          text: kIdDocument,
          fontSize: 20.sp,
          fontWeight: kExtraBold,
        ),
      ),
      body: Container(
        color: kGrey,
        height: 1.sh,
        padding: EdgeInsets.fromLTRB(24.w, 22.h, 24.w, 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: MyText(
                  text: kUploadID,
                  fontSize: 16.sp,
                  fontWeight: kSemiBold,
                ),
              ),
              GestureDetector(
                child: SvgPicture.asset(
                  "images/authentication/attach document.svg",
                ),
              ),
              MySpace(height: 250.h),
              MyButton(
                onPressed: () {},
                child: MyText(text: kSave, fontSize: 16.sp, fontWeight: kBlack,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
