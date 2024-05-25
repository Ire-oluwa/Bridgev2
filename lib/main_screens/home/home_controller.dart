import 'package:bridge_v2/main_screens/home/dashboard_controller.dart';
import 'package:bridge_v2/main_screens/home/my_connects.dart';
import 'package:bridge_v2/main_screens/home/trending.dart';
import 'package:bridge_v2/utilities/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final tabPages = [const TrendingPage(), const MyConnects()];
  final tabs = [const Tab(text: kTrending,), const Tab(text: kMyConnects)];

}