import 'package:flutter/material.dart';
import 'package:smart_transfer/AppConstants/constants.dart';
import 'package:smart_transfer/Utils/app_utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                height: 480,
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
                      height: 40,
                    ),
                    Text(
                      "Welcome to \nSmart Transfer!",
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
                            hintText: "dummy@gmail.com",
                            labelText: "EMAIL",
                            onChange: (val) {
                              setState(() {});
                            },
                            suffixIcon: const Icon(
                              Icons.check,
                              color: Colors.grey,
                              size: 20,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          utils.labelTextField(
                            obscureText: true,
                            hintText: "******",
                            labelText: "PASSWORD",
                            suffixIcon: const Icon(
                              Icons.remove_red_eye,
                              color: Colors.grey,
                              size: 20,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      value = !value;
                                      setState(() {});
                                    },
                                    child: Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        color: value
                                            ? darkBlueColor
                                            : Colors.blueGrey.withOpacity(0.2),
                                        borderRadius:
                                            BorderRadius.circular(3.0),
                                      ),
                                      child: value
                                          ? const Icon(
                                              Icons.check,
                                              color: Colors.white,
                                              size: 15,
                                            )
                                          : Container(),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Remeber me",
                                    style: utils.mediumTitleTextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, forgotPasswordEmailScreenRoute);
                                },
                                child: Text(
                                  "Lost your password?",
                                  style: utils.mediumTitleSemiBoldTextStyle(
                                    color: darkBlueColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          utils.bigButton(
                            width: MediaQuery.of(context).size.width * 0.8,
                            onTap: () {
                              Navigator.pushNamed(
                                  context, loginWithPinScreenRoute);
                            },
                            text: "Sign In",
                            borderRadius: 15.0,
                            fontSize: 16,
                            textColor: Colors.white,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "No account? ",
                                style: utils.mediumTitleTextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, signUpScreenRoute);
                                },
                                child: Text(
                                  "Register now",
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
