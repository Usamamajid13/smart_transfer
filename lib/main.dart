// ignore_for_file: unnecessary_null_comparison
import 'package:flutter/material.dart';

import 'AppConstants/constants.dart';
import 'Authentication/account_created_screen.dart';
import 'Authentication/catalog_screen.dart';
import 'Authentication/forgot_password_email_screen.dart';
import 'Authentication/login_screen.dart';
import 'Authentication/login_with_pin_screen.dart';
import 'Authentication/new_password_screen.dart';
import 'Authentication/password_reset_success_screen.dart';
import 'Authentication/sign_up_screen.dart';
import 'Authentication/splash_screen.dart';
import 'Authentication/verify_phone_number_pin_screen.dart';
import 'Authentication/verify_phone_screen.dart';
import 'Home/BottomNavigationBarScreens/home_bottom_navigation_bar_screen.dart';
import 'Home/MoreScreens/faq_screen.dart';
import 'Home/MoreScreens/privacy_policy_screen.dart';
import 'MainScreens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: splashScreenRoute,
      routes: {
        splashScreenRoute: (context) => const SplashScreen(),
        catalogScreenRoute: (context) => const CatalogScreen(),
        homeScreenRoute: (context) => const HomeScreen(),
        loginScreenRoute: (context) => const LoginScreen(),
        passwordResetSuccessScreenRoute: (context) =>
            const PasswordResetSuccessScreen(),
        forgotPasswordEmailScreenRoute: (context) =>
            const ForgotPasswordEmailScreen(),
        signUpScreenRoute: (context) => const SignUpScreen(),
        accountCreatedScreenRoute: (context) => const AccountCreatedScreen(),
        privacyPolicyScreenRoute: (context) => const PrivacyPolicyScreen(),
        loginWithPinScreenRoute: (context) => const LoginWithPinScreen(),
        newPasswordScreenRoute: (context) => const NewPasswordScreen(),
        faqScreenRoute: (context) => const FaqScreen(),
        homeBottomNavigationBarScreenRoute: (context) =>
            const HomeBottomNavigationBarScreen(),
        verifyPhoneNumberPinScreenRoute: (context) =>
            const VerifyPhoneNumberPinScreen(),
        verifyPhoneNumberScreenRoute: (context) =>
            const VerifyPhoneNumberScreen(),
      },
    );
  }
}
