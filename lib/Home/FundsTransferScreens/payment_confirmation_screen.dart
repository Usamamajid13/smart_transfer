import 'package:flutter/material.dart';

import '../../Utils/app_utils.dart';

class PaymentConfirmationScreen extends StatefulWidget {
  const PaymentConfirmationScreen({Key? key}) : super(key: key);

  @override
  State<PaymentConfirmationScreen> createState() =>
      _PaymentConfirmationScreenState();
}

class _PaymentConfirmationScreenState extends State<PaymentConfirmationScreen> {
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
                    "Payment Confirmation",
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
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "IBAN number",
                            style: utils.mediumTitleSemiBoldTextStyle(
                              color: Colors.grey[600],
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "US 12 124 412412512512251352521",
                            style: utils.xmediumTitleSemiBoldTextStyle(
                              color: Colors.grey[800],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Beneficiary name",
                            style: utils.mediumTitleSemiBoldTextStyle(
                              color: Colors.grey[600],
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "NIY Com - Major LTD",
                            style: utils.xmediumTitleSemiBoldTextStyle(
                              color: Colors.grey[800],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "BIC code",
                            style: utils.mediumTitleSemiBoldTextStyle(
                              color: Colors.grey[600],
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "124151",
                            style: utils.xmediumTitleSemiBoldTextStyle(
                              color: Colors.grey[800],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Bank Name",
                            style: utils.mediumTitleSemiBoldTextStyle(
                              color: Colors.grey[600],
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Nexipay International Bank",
                            style: utils.xmediumTitleSemiBoldTextStyle(
                              color: Colors.grey[800],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Amount",
                            style: utils.mediumTitleSemiBoldTextStyle(
                              color: Colors.grey[600],
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "124.00 USD",
                            style: utils.xmediumTitleSemiBoldTextStyle(
                              color: Colors.grey[800],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Comment",
                            style: utils.mediumTitleSemiBoldTextStyle(
                              color: Colors.grey[600],
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Payment for invoice Ne9214gr2",
                            style: utils.xmediumTitleSemiBoldTextStyle(
                              color: Colors.grey[800],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Bank fee",
                            style: utils.mediumTitleSemiBoldTextStyle(
                              color: Colors.grey[600],
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "1.42 USD",
                            style: utils.xmediumTitleSemiBoldTextStyle(
                              color: Colors.grey[800],
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.25,
                          ),
                          utils.bigButton(
                            width: MediaQuery.of(context).size.width * 0.8,
                            onTap: () {},
                            fontSize: 16,
                            text: "Confirm",
                            borderRadius: 15.0,
                            textColor: Colors.white,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
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
