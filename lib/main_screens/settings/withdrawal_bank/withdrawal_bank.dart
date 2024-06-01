import 'package:bridge_v2/main_screens/settings/withdrawal_bank/withdrawal_controller.dart';
import 'package:bridge_v2/utilities/constants.dart';
import 'package:bridge_v2/utilities/strings.dart';
import 'package:bridge_v2/utilities/widgets/my_button.dart';
import 'package:bridge_v2/utilities/widgets/my_text.dart';
import 'package:bridge_v2/utilities/widgets/my_textfield.dart';
import 'package:bridge_v2/utilities/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class WithdrawalBankScreen extends StatelessWidget {
  const WithdrawalBankScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(WithdrawalController());
    return Scaffold(
      backgroundColor: kPrimaryBlack,
      appBar: AppBar(
        centerTitle: true,
        title: MyText(
          text: kWithdrawalBank,
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
                MyTextField(
                  controller: controller.accountNumber,
                  label: kBankAccount,
                  hint: kAccountNumber,
                  textFormatter: kNumberFormatter,
                  inputType: kNumberKeyboard,
                  maxLength: 10,
                ),
                const MySpace(),
                MyButton(
                  onPressed: () {},
                  child: MyText(
                    text: kWithdraw,
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
