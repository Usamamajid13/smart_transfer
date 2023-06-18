import 'package:flutter/material.dart';

import '../../AppConstants/constants.dart';
import '../../Utils/app_utils.dart';

class SomethingWentWrongScreen extends StatefulWidget {
  const SomethingWentWrongScreen({Key? key}) : super(key: key);

  @override
  State<SomethingWentWrongScreen> createState() =>
      SomethingWentWrongScreenState();
}

class SomethingWentWrongScreenState extends State<SomethingWentWrongScreen> {
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
                height: 30,
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
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 100,
                      ),
                      Image.asset(
                        "assets/moneyBallImage.png",
                        scale: 4,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.orange[700],
                          shape: BoxShape.circle,
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.close,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            "954",
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 2),
                            child: Text(
                              ".24 USD",
                              style: utils.mediumTitleSemiBoldTextStyle(),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Something went wrong. Please try again or contact the support team",
                        style: utils.xmediumTitleTextStyle(
                          color: Colors.grey,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          utils.bigWhiteButton(
                            width: MediaQuery.of(context).size.width * 0.37,
                            onTap: () {
                              Navigator.pop(context);
                            },
                            fontSize: 16,
                            text: "Back",
                            borderRadius: 15.0,
                            textColor: darkBlueColor,
                          ),
                          utils.bigButton(
                            width: MediaQuery.of(context).size.width * 0.37,
                            onTap: () {
                              Navigator.pushNamed(
                                  context, paymentSuccessfulScreenRoute);
                            },
                            fontSize: 16,
                            text: "Try Again",
                            borderRadius: 15.0,
                            textColor: Colors.white,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
