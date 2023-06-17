import 'package:flutter/material.dart';
import 'package:smart_transfer/AppConstants/constants.dart';

import '../Utils/app_utils.dart';

class LoginWithPinScreen extends StatefulWidget {
  const LoginWithPinScreen({Key? key}) : super(key: key);

  @override
  State<LoginWithPinScreen> createState() => _LoginWithPinScreenState();
}

class _LoginWithPinScreenState extends State<LoginWithPinScreen> {
  var utils = AppUtils();
  List pinCodeList = [];

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
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.9,
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
                    Container(
                      width: 100,
                      height: 100,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/dummyProfileImage.png",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Payton Parks",
                      style: utils.largeSemiBoldTextStyle(),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Paytonparks@gmail.com",
                      style: utils.mediumTitleTextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (int i = 0; i < 4; i++)
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: pinCodeList.asMap().containsKey(i)
                                  ? Colors.black
                                  : Colors.grey[300],
                            ),
                          ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: Center(
                        child: Wrap(
                          spacing: 15.0,
                          runSpacing: 15.0,
                          children: [
                            utils.numPadButton(
                              text: "1",
                              onTap: () {
                                if (pinCodeList.length < 4) {
                                  pinCodeList.add(1);
                                }
                                setState(() {});
                              },
                            ),
                            utils.numPadButton(
                              text: "2",
                              onTap: () {
                                if (pinCodeList.length < 4) {
                                  pinCodeList.add(2);
                                }
                                setState(() {});
                              },
                            ),
                            utils.numPadButton(
                              text: "3",
                              onTap: () {
                                if (pinCodeList.length < 4) {
                                  pinCodeList.add(3);
                                }
                                setState(() {});
                              },
                            ),
                            utils.numPadButton(
                              text: "4",
                              onTap: () {
                                if (pinCodeList.length < 4) {
                                  pinCodeList.add(4);
                                }
                                setState(() {});
                              },
                            ),
                            utils.numPadButton(
                              text: "5",
                              onTap: () {
                                if (pinCodeList.length < 4) {
                                  pinCodeList.add(5);
                                }
                                setState(() {});
                              },
                            ),
                            utils.numPadButton(
                              text: "6",
                              onTap: () {
                                if (pinCodeList.length < 4) {
                                  pinCodeList.add(6);
                                }
                                setState(() {});
                              },
                            ),
                            utils.numPadButton(
                              text: "7",
                              onTap: () {
                                if (pinCodeList.length < 4) {
                                  pinCodeList.add(7);
                                }
                                setState(() {});
                              },
                            ),
                            utils.numPadButton(
                              text: "8",
                              onTap: () {
                                if (pinCodeList.length < 4) {
                                  pinCodeList.add(8);
                                }
                                setState(() {});
                              },
                            ),
                            utils.numPadButton(
                              text: "9",
                              onTap: () {
                                if (pinCodeList.length < 4) {
                                  pinCodeList.add(9);
                                }
                                setState(() {});
                              },
                            ),
                            utils.numPadImageButton(
                              image: "assets/faceIdIcon.png",
                              onTap: () {
                                Navigator.pushNamed(context,
                                    homeBottomNavigationBarScreenRoute);
                              },
                              scale: 12.0,
                            ),
                            utils.numPadButton(
                              text: "0",
                              onTap: () {
                                if (pinCodeList.length < 4) {
                                  pinCodeList.add(0);
                                }
                                setState(() {});
                              },
                            ),
                            utils.numPadImageButton(
                              image: "assets/crossIcon.png",
                              scale: 28.0,
                              onTap: () {
                                if (pinCodeList.isNotEmpty) {
                                  pinCodeList.removeLast();
                                }
                                setState(() {});
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Text(
                      "Lost your password?",
                      style: utils.mediumTitleSemiBoldTextStyle(
                        color: darkBlueColor,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Switch user",
                      style: utils.mediumTitleSemiBoldTextStyle(
                        color: darkBlueColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
