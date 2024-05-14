import 'package:bridge_v2/main_screens/home/dashboard.dart';
import 'package:bridge_v2/main_screens/home/home_screen.dart';
import 'package:bridge_v2/main_screens/maami/maami_screen.dart';
import 'package:bridge_v2/main_screens/message/message_screen.dart';
import 'package:bridge_v2/main_screens/wallet/wallet_screen.dart';
import 'package:bridge_v2/utilities/strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {

  RxInt selectedIndex = 0.obs;

  void onItemTapped(int index){
    selectedIndex.value = index;
    update();
  }

  List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
      icon: SvgPicture.asset("images/bottom_navigation/home_nav.svg"),
      label: kHome,
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset("images/bottom_navigation/message_icon.svg"),
      label: kMessage,
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset("images/bottom_navigation/shop_icon.svg"),
      label: kMaami,
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset("images/bottom_navigation/wallet_icon.svg"),
      label: kWallet,
    ),
  ];
  List screens = [
    const HomeScreen(),
    const MessageScreen(),
    const MaamiScreen(),
    const WalletScreen(),
  ];
}
