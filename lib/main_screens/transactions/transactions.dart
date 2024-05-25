import 'package:bridge_v2/utilities/constants.dart';
import 'package:bridge_v2/utilities/strings.dart';
import 'package:bridge_v2/utilities/widgets/my_list_tile.dart';
import 'package:bridge_v2/utilities/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Transactions extends StatelessWidget {
  const Transactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryBlack,
      body: SafeArea(
        child: Scaffold(
          backgroundColor: kGrey,
          appBar: AppBar(
            centerTitle: true,
            title: MyText(text: kTransactions, fontSize: 20.sp, fontWeight: kExtraBold,),
          ),
          body: Container(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 42.h),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  MyListTiles(leading: SvgPicture.asset("images/transactions/withdrawal_transaction.svg"), title: titleText(text: kWithdrawal), subtitle: subtitleText(text: kWithdrawalSubtitle), onTap: () {},),
                  MyListTiles(leading: SvgPicture.asset("images/transactions/deposit_transaction.svg"), title: titleText(text: kDeposit), subtitle: subtitleText(text: kDepositSubtitle), onTap: () {},),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget titleText({required String text}) {
  return MyText(
    text: text,
    fontSize: 17.sp,
    fontWeight: kSemiBold,
    colour: kPrimaryBlack,
  );
}

Widget subtitleText({required String text}) {
  return MyText(
    text: text,
    fontSize: 14.sp,
    fontWeight: kRegular,
    colour: kPrimaryBlack,
  );
}