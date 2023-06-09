// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';

import 'AppConstants/constants.dart';
import 'Authentication/catalog_screen.dart';
import 'Authentication/forgot_password_email_screen.dart';
import 'Authentication/login_screen.dart';
import 'Authentication/sign_up_screen.dart';
import 'Authentication/splash_screen.dart';
import 'MainScreens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: splashScreenRoute,
      routes: {
        splashScreenRoute: (context) => const SplashScreen(),
        catalogScreenRoute: (context) => const CatalogScreen(),
        homeScreenRoute: (context) => const HomeScreen(),
        loginScreenRoute: (context) => const LoginScreen(),
        forgotPasswordEmailScreenRoute: (context) =>
            const ForgotPasswordEmailScreen(),
        signUpScreenRoute: (context) => const SignUpScreen(),
      },
    );
  }
}
