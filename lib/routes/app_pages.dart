import 'package:bridge_v2/authentication/login/login_screen.dart';
import 'package:bridge_v2/authentication/reset_password/reset_pass_confirm.dart';
import 'package:bridge_v2/authentication/reset_password/reset_pass_link.dart';
import 'package:bridge_v2/authentication/sign_up/sign_up_screen.dart';
import 'package:bridge_v2/main_screens/home/dashboard.dart';
import 'package:bridge_v2/main_screens/home/home_screen.dart';
import 'package:bridge_v2/main_screens/home/new_post.dart';
import 'package:bridge_v2/main_screens/maami/maami_screen.dart';
import 'package:bridge_v2/main_screens/message/message_screen.dart';
import 'package:bridge_v2/main_screens/notifications/notifications.dart';
import 'package:bridge_v2/main_screens/settings/document_upload/document_upload.dart';
import 'package:bridge_v2/main_screens/settings/help_and_support/help_and_support.dart';
import 'package:bridge_v2/main_screens/settings/profile/edit_profile.dart';
import 'package:bridge_v2/main_screens/settings/profile/profile_screen.dart';
import 'package:bridge_v2/main_screens/settings/security/change_password.dart';
import 'package:bridge_v2/main_screens/settings/security/security_screen.dart';
import 'package:bridge_v2/main_screens/settings/security/transfer_pin.dart';
import 'package:bridge_v2/main_screens/settings/settings_screen.dart';
import 'package:bridge_v2/main_screens/settings/terms_and_privacy/terms_and_privacy.dart';
import 'package:bridge_v2/main_screens/settings/withdrawal_bank/withdrawal_bank.dart';
import 'package:bridge_v2/main_screens/transactions/transactions.dart';
import 'package:bridge_v2/main_screens/wallet/wallet_screen.dart';
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
    GetPage(name: RouteName.resetPasswordEmailLink, page: ()=> const ResetPasswordEmailScreen()),
    GetPage(name: RouteName.resetPasswordConfirmPassword, page: ()=> const ResetPasswordConfirmPasswordScreen()),
    GetPage(name: RouteName.dashboard, page: ()=> const Dashboard()),
    GetPage(name: RouteName.homeScreen, page: ()=> const HomeScreen()),
    GetPage(name: RouteName.maamiScreen, page: ()=> const MaamiScreen()),
    GetPage(name: RouteName.messageScreen, page: ()=> const MessageScreen()),
    GetPage(name: RouteName.walletScreen, page: ()=> const WalletScreen()),
    GetPage(name: RouteName.newPost, page: ()=> const NewPost()),
    GetPage(name: RouteName.notifications, page: ()=> const Notifications()),
    GetPage(name: RouteName.transactions, page: ()=> const Transactions()),
    GetPage(name: RouteName.settings, page: ()=> const SettingsScreen()),
    GetPage(name: RouteName.security, page: ()=> const SecurityScreen()),
    GetPage(name: RouteName.profileScreen, page: ()=> const ProfileScreen()),
    GetPage(name: RouteName.changePassword, page: ()=> const ChangePassword()),
    GetPage(name: RouteName.transferPin, page: ()=> const TransferPin()),
    GetPage(name: RouteName.documentUpload, page: ()=> const DocumentUpload()),
    GetPage(name: RouteName.withdrawalBank, page: ()=> const WithdrawalBankScreen()),
    GetPage(name: RouteName.termsAndPrivacy, page: ()=> const TermsAndPrivacy()),
    GetPage(name: RouteName.helpsAndSupport, page: ()=> const HelpAndSupportScreen()),
    GetPage(name: RouteName.editProfile, page: ()=> const EditProfileScreen()),
  ];
}