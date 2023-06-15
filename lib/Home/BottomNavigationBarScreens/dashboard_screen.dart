import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_transfer/Utils/app_utils.dart';

import '../../AppConstants/constants.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  var utils = AppUtils();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.55,
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
              child: Column(
                children: [
                  const SizedBox(
                    height: 70,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Exchange rates",
                          style: utils.largeSemiBoldTextStyle(
                            color: Colors.white,
                          ),
                        ),
                        const Icon(
                          Icons.credit_card,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    "BALANCE",
                    style: utils.smallTitleTextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        "3 954",
                        style: TextStyle(
                          fontSize: 36,
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
                    height: 40,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, fundTransferToScreenRoute);
                    },
                    child: Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[900],
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: const Center(
                        child: Icon(
                          CupertinoIcons.arrow_2_squarepath,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Money Transfer",
                    style: utils.smallTitleSemiBoldTextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 10,
                    height: 10,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.45,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    topLeft: Radius.circular(20.0),
                  ),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(15.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Latest Transactions",
                            style: utils.largeSemiBoldTextStyle(),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, transactionHistoryScreenRoute);
                            },
                            child: Text(
                              "View All",
                              style: utils.mediumTitleSemiBoldTextStyle(
                                color: darkBlueColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      for (int i = 0; i < 5; i++)
                        Column(
                          children: [
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.1),
                                        blurRadius: 5,
                                        offset: const Offset(0, 2),
                                      )
                                    ],
                                  ),
                                  child: const Center(
                                    child: Icon(
                                      Icons.compare_arrows_rounded,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Adalyn Roth",
                                      style: utils.mediumTitleSemiBoldTextStyle(
                                        color: Colors.black.withOpacity(0.7),
                                      ),
                                    ),
                                    Text(
                                      "Money Transfer",
                                      style: utils.mediumTitleTextStyle(
                                        color: Colors.black.withOpacity(0.5),
                                      ),
                                    )
                                  ],
                                ),
                                const Spacer(),
                                Text(
                                  "-123.00",
                                  style: utils.smallTitleSemiBoldTextStyle(
                                    color: i == 2 ? Colors.green : Colors.black,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                              ],
                            ),
                          ],
                        )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
