// ignore_for_file: use_build_context_synchronously

import 'dart:async';

import 'package:flutter/material.dart';

import '../AppConstants/constants.dart';
import '../Utils/app_utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  var utils = AppUtils();
  @override
  void initState() {
    super.initState();
    splashNavigator();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  purpleColor,
                  blueColor,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          const Center(
            child: Icon(
              Icons.ac_unit,
              color: Colors.white,
              size: 150,
            ),
          ),
          // Center(
          //   child: Image.asset(
          //     "assets/logo.png",
          //     scale: 3,
          //   ),
          // ),
        ],
      ),
    );
  }

  splashNavigator() {
    Timer(const Duration(seconds: 3), () async {
      Navigator.pushNamed(context, catalogScreenRoute);
    });
  }
}
