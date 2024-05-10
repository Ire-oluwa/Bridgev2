import 'package:bridge_v2/authentication/login/login_screen.dart';
import 'package:bridge_v2/authentication/sign_up/sign_up_screen.dart';
import 'package:bridge_v2/onboarding/onboarding_one.dart';
import 'package:bridge_v2/onboarding/onboarding_three.dart';
import 'package:bridge_v2/onboarding/onboarding_two.dart';
import 'package:bridge_v2/onboarding/splash.dart';
import 'package:bridge_v2/routes/route_names.dart';
import 'package:get/get.dart';

class AppPages {
  static final pages = [
    GetPage(name: RouteName.splash, page: ()=> const SplashScreen()),
    GetPage(name: RouteName.onboardingOne, page: ()=> OnboardingScreenOne()),
    GetPage(name: RouteName.onboardingTwo, page: ()=> const OnboardingScreenTwo()),
    GetPage(name: RouteName.onboardingThree, page: ()=> const OnboardingScreenThree()),
    GetPage(name: RouteName.signUp, page: ()=> const SignUpScreen()),
    GetPage(name: RouteName.signIn, page: ()=> const LoginScreen()),
  ];
}