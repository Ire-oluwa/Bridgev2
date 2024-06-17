import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileController extends GetxController {
  @override
  void onInit() {
    getFullName();
    getEmail();
    getPhone();
    getCallUpNumber();
    selectedGender = genders[0];
    super.onInit();
    update();
  }

  late String userFullName;
  late String userEmail;
  late String userPhone;
  late String userCallUpNumber;
  late final String selectedGender;


  final fullName = TextEditingController();
  final email = TextEditingController();
  final phone = TextEditingController();
  final location = TextEditingController();
  final callUpNumber = TextEditingController();

  void changeDropdownValue(value){
    selectedGender = value;
    update();
  }

  final List<String> genders = [
    "Male",
    "Female",
  ];


  Future getFullName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    userFullName = "${prefs.getString("firstName")} ${prefs.getString("lastName")}";
    fullName.text = userFullName;
    update();
  }

  Future getEmail() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    userEmail = prefs.getString("email")!;
    email.text = userEmail;
    update();
  }

  Future getPhone() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    userPhone = prefs.getString("phoneNumber")!;
    phone.text = userPhone;
    update();
  }

  Future getCallUpNumber() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    userCallUpNumber = prefs.getString("callUpNumber")!;
    callUpNumber.text = userCallUpNumber;
    update();
  }

}
