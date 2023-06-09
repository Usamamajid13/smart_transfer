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
                              color: i == 0 ? Colors.black : Colors.grey[300],
                            ),
                          ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Center(
                        child: Wrap(
                          spacing: 15.0,
                          runSpacing: 15.0,
                          children: [
                            utils.numPadButton(
                              text: "1",
                              onTap: () {},
                            ),
                            utils.numPadButton(
                              text: "2",
                              onTap: () {},
                            ),
                            utils.numPadButton(
                              text: "3",
                              onTap: () {},
                            ),
                            utils.numPadButton(
                              text: "4",
                              onTap: () {},
                            ),
                            utils.numPadButton(
                              text: "5",
                              onTap: () {},
                            ),
                            utils.numPadButton(
                              text: "6",
                              onTap: () {},
                            ),
                            utils.numPadButton(
                              text: "7",
                              onTap: () {},
                            ),
                            utils.numPadButton(
                              text: "8",
                              onTap: () {},
                            ),
                            utils.numPadButton(
                              text: "9",
                              onTap: () {},
                            ),
                            utils.numPadImageButton(
                              image: "assets/faceIdIcon.png",
                              onTap: () {},
                              scale: 12.0,
                            ),
                            utils.numPadButton(
                              text: "0",
                              onTap: () {},
                            ),
                            utils.numPadImageButton(
                              image: "assets/crossIcon.png",
                              scale: 28.0,
                              onTap: () {},
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
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
