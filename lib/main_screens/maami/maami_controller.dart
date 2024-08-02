import 'package:bridge_v2/main_screens/maami/clothing_tab.dart';
import 'package:bridge_v2/main_screens/maami/electronics_tab.dart';
import 'package:bridge_v2/main_screens/maami/furniture_tab.dart';
import 'package:bridge_v2/main_screens/maami/grocery_tab.dart';
import 'package:bridge_v2/main_screens/maami/skincare_tab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MaamiController extends GetxController{

  @override
  void onInit() {

    super.onInit();
  }

  final searchController = TextEditingController();
  final tabPages = [const ElectronicsTab(), const GroceryTab(), const FurnitureTab(), const ClothingTab(), const SkincareTab(),];
}