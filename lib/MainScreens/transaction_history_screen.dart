import 'package:flutter/material.dart';
import 'package:smart_transfer/Utils/app_utils.dart';

class TransactionHistoryScreen extends StatefulWidget {
  const TransactionHistoryScreen({Key? key}) : super(key: key);

  @override
  State<TransactionHistoryScreen> createState() =>
      _TransactionHistoryScreenState();
}

class _TransactionHistoryScreenState extends State<TransactionHistoryScreen> {
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
                    "Transaction history",
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  utils.labelTextField(
                    obscureText: false,
                    hintText: "Enter value",
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    labelText: "SEARCH TRANSACTION",
                    onChange: (val) {
                      setState(() {});
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Today",
                    style: utils.mediumTitleSemiBoldTextStyle(
                      color: Colors.grey[700],
                    ),
                  ),
                  for (int i = 0; i < 2; i++)
                    Column(
                      children: [
                        const SizedBox(
                          height: 25,
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
                    ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Apr 3, 2023",
                    style: utils.mediumTitleSemiBoldTextStyle(
                      color: Colors.grey[700],
                    ),
                  ),
                  for (int i = 0; i < 4; i++)
                    Column(
                      children: [
                        const SizedBox(
                          height: 25,
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
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
