import 'dart:async';

import 'package:bridge_v2/onboarding/onboarding.dart';
import 'package:bridge_v2/routes/route_names.dart';
import 'package:bridge_v2/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
    animation = CurvedAnimation(parent: controller, curve: Curves.elasticOut);
    controller.forward();

    Future.delayed(
      const Duration(seconds: 3),
      () {
        Get.offNamed(RouteName.onboardingOne);
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryBlack,
      body: Center(
        child: AnimatedBuilder(
          animation: animation,
          builder: (context, child) {
            return Transform.scale(
              scale: animation.value,
              child: child,
            );
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              SvgPicture.asset("images/onboarding/bridge_v2_logo.svg"),
              Image.asset("images/onboarding/bridge_logo.png",),
            ],
          ),
        ),
      ),
    );
  }
}
