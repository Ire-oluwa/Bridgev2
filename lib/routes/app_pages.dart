import 'package:bridge_v2/authentication/login/login_screen.dart';
import 'package:bridge_v2/authentication/sign_up/sign_up_screen.dart';
import 'package:bridge_v2/onboarding/onboarding.dart';
import 'package:bridge_v2/onboarding/splash.dart';
import 'package:bridge_v2/routes/route_names.dart';
import 'package:get/get.dart';

class AppPages {
  static final pages = [
    GetPage(name: RouteName.splash, page: ()=> const SplashScreen()),
    GetPage(name: RouteName.onboardingOne, page: ()=> const OnboardingScreen()),
    GetPage(name: RouteName.signUp, page: ()=> const SignUpScreen()),
    GetPage(name: RouteName.signIn, page: ()=> const LoginScreen()),
  ];
}