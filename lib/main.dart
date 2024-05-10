import 'package:bridge_v2/routes/app_pages.dart';
import 'package:bridge_v2/routes/route_names.dart';
import 'package:bridge_v2/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      ensureScreenSize: true,
      splitScreenMode: true,
      designSize: const Size(375, 809),
      builder: (context, Widget? child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: const ColorScheme(
            brightness: Brightness.light,
            primary: kYellowBackground,
            onPrimary: Color(0xff0F0B11),
            secondary: kPrimaryBlack,
            onSecondary: kPrimaryWhite,
            error: kRed,
            onError: kPrimaryWhite,
            background: kYellowBackground,
            onBackground: Color(0xff0F0B11),
            surface: kPrimaryWhite,
            onSurface: kPrimaryBlack,
          ),
        ),
        initialRoute: RouteName.splash,
        getPages: AppPages.pages,
      ),
    );
  }
}
