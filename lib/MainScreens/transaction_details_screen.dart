import 'package:flutter/material.dart';

import '../AppConstants/constants.dart';
import '../Utils/app_utils.dart';

class TransactionDetailsScreen extends StatefulWidget {
  const TransactionDetailsScreen({Key? key}) : super(key: key);

  @override
  State<TransactionDetailsScreen> createState() =>
      _TransactionDetailsScreenState();
}

class _TransactionDetailsScreenState extends State<TransactionDetailsScreen> {
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
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
                  Text(
                    "Transaction details",
                    style: utils.xmediumTitleSemiBoldTextStyle(),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.85,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 150,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            topLeft: Radius.circular(20.0),
                          ),
                          gradient: LinearGradient(
                            colors: [
                              purpleColor,
                              blueColor,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const Text(
                                  "- 954",
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 5),
                                  child: Text(
                                    ".24 USD",
                                    style: utils.mediumTitleBoldTextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Sep 10, 2022 at 11:34 AM",
                              style: utils.smallTitleSemiBoldTextStyle(
                                color: Colors.white.withOpacity(0.8),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Sent to",
                                style: utils.mediumTitleSemiBoldTextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                "Janessa Ritter",
                                style: utils.mediumTitleSemiBoldTextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Fee",
                                style: utils.mediumTitleSemiBoldTextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                "1.4 USD",
                                style: utils.mediumTitleSemiBoldTextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Residual Balance",
                                style: utils.mediumTitleSemiBoldTextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                "1124.4 USD",
                                style: utils.mediumTitleSemiBoldTextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Divider(
                            color: Colors.black,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.rotate_left_sharp,
                                color: Colors.grey[700],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Send again",
                                style: utils.mediumTitleSemiBoldTextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.access_time_outlined,
                                color: Colors.grey[700],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Create auto payment",
                                style: utils.mediumTitleSemiBoldTextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.sticky_note_2,
                                color: Colors.grey[700],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "View receipt",
                                style: utils.mediumTitleSemiBoldTextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.3,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              utils.bigWhiteButton(
                                width: MediaQuery.of(context).size.width * 0.37,
                                onTap: () {},
                                fontSize: 16,
                                text: "Download",
                                borderRadius: 15.0,
                                textColor: darkBlueColor,
                              ),
                              utils.bigButton(
                                width: MediaQuery.of(context).size.width * 0.37,
                                onTap: () {},
                                fontSize: 16,
                                text: "Share",
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
                    )
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
