import 'package:flutter/material.dart';

import '../AppConstants/constants.dart';
import '../Utils/app_utils.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var utils = AppUtils();
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black.withOpacity(0.8),
                  size: 20,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 550,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 5,
                      offset: const Offset(0, 2),
                    )
                  ],
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Text(
                      "Sign up!",
                      style: utils.largestHeadingTextStyle(),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          utils.labelTextField(
                            obscureText: false,
                            hintText: "name",
                            labelText: "NAME",
                            onChange: (val) {
                              setState(() {});
                            },
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          utils.labelTextField(
                            obscureText: false,
                            hintText: "Enter your email",
                            labelText: "EMAIL",
                            onChange: (val) {
                              setState(() {});
                            },
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          utils.labelTextField(
                            obscureText: true,
                            hintText: "Enter your password",
                            labelText: "PASSWORD",
                            suffixIcon: const Icon(
                              Icons.remove_red_eye,
                              color: Colors.grey,
                              size: 20,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          utils.labelTextField(
                            obscureText: true,
                            hintText: "Confirm your password",
                            labelText: "CONFIRM PASSWORD",
                            suffixIcon: const Icon(
                              Icons.remove_red_eye,
                              color: Colors.grey,
                              size: 20,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          utils.bigButton(
                            width: MediaQuery.of(context).size.width * 0.8,
                            onTap: () {},
                            text: "Sign Up",
                            fontSize: 16,
                            borderRadius: 15.0,
                            textColor: Colors.white,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Already have an account? ",
                                style: utils.mediumTitleTextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, loginScreenRoute);
                                },
                                child: Text(
                                  "Sign in.",
                                  style: utils.mediumTitleTextStyle(
                                    color: darkBlueColor,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 140,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 5,
                      offset: const Offset(0, 2),
                    )
                  ],
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Log in with social networks",
                      style: utils.largeTextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        for (int i = 0; i < 3; i++)
                          Container(
                            width: 100,
                            height: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.blueGrey.withOpacity(0.1),
                            ),
                            child: Center(
                              child: Image.asset(
                                i == 0
                                    ? "assets/facebookIcon.png"
                                    : i == 1
                                        ? "assets/twitterIcon.png"
                                        : "assets/googlePlusIcon.png",
                                scale: 30,
                              ),
                            ),
                          ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
