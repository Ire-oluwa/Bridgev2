import 'package:bridge_v2/main_screens/settings/security/security_controller.dart';
import 'package:bridge_v2/routes/route_names.dart';
import 'package:bridge_v2/utilities/constants.dart';
import 'package:bridge_v2/utilities/strings.dart';
import 'package:bridge_v2/utilities/widgets/my_button.dart';
import 'package:bridge_v2/utilities/widgets/my_text.dart';
import 'package:bridge_v2/utilities/widgets/my_textfield.dart';
import 'package:bridge_v2/utilities/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class TransferPin extends StatelessWidget {
  const TransferPin({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SecurityController());
    return Scaffold(
      backgroundColor: kPrimaryBlack,
      appBar: AppBar(
        centerTitle: true,
        title: MyText(
          text: kTransferPin,
          fontSize: 20.sp,
          fontWeight: kExtraBold,
        ),
      ),
      body: kUnfocus(
        child: Container(
          color: kGrey,
          height: 1.sh,
          padding: EdgeInsets.fromLTRB(24.w, 22.h, 24.w, 0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Obx(
                  () => MyTextField(
                    controller: controller.pin,
                    label: kPin,
                    hint: kPin,
                    textFormatter: kNumberFormatter,
                    inputType: kNumberKeyboard,
                    maxLength: 4,
                    obscure: controller.isPinObscure.value,
                    suffixIcon: GestureDetector(
                      onTap: () => controller.obscurePin(),
                      child: Icon(
                        controller.isPinObscure.value == true
                            ? Icons.remove_red_eye_outlined
                            : Icons.remove_red_eye_sharp,
                      ),
                    ),
                  ),
                ),
                const MySpace(),
                Obx(
                  () => MyTextField(
                    controller: controller.confirmPin,
                    label: kConfirmPin,
                    hint: kConfirmPin,
                    textFormatter: kNumberFormatter,
                    inputType: kNumberKeyboard,
                    maxLength: 4,
                    obscure: controller.isConfirmPinObscure.value,
                    suffixIcon: GestureDetector(
                      onTap: () => controller.obscureConfirmPin(),
                      child: Icon(
                        controller.isConfirmPinObscure.value == true
                            ? Icons.remove_red_eye_outlined
                            : Icons.remove_red_eye_sharp,
                      ),
                    ),
                  ),
                ),
                const MySpace(),
                MyButton(
                  onPressed: () => Get.toNamed(RouteName.transferPin),
                  child: MyText(
                    text: kSave,
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
