import 'package:flutter/material.dart';

import '../../AppConstants/constants.dart';
import '../../Utils/app_utils.dart';

class FundTransferAmountScreen extends StatefulWidget {
  const FundTransferAmountScreen({Key? key}) : super(key: key);

  @override
  State<FundTransferAmountScreen> createState() =>
      _FundTransferAmountScreenState();
}

class _FundTransferAmountScreenState extends State<FundTransferAmountScreen> {
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
                    "Fund transfer",
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
                height: 250,
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
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 40,
                                height: 40,
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
                                width: 15,
                              ),
                              Text(
                                "Usama Majid",
                                style: utils.mediumTitleSemiBoldTextStyle(),
                              ),
                              const Spacer(),
                              Text(
                                "**** 1242",
                                style: utils.smallTitleTextStyle(
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          utils.labelTextField(
                            obscureText: false,
                            hintText: "Enter amount",
                            labelText: "AMOUNT",
                            onChange: (val) {
                              setState(() {});
                            },
                            prefixIcon: const Icon(
                              Icons.attach_money_outlined,
                              color: Colors.black,
                              size: 20,
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Bank fee: 0.15USD",
                              style: utils.smallTitleSemiBoldTextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          utils.bigButton(
                            width: MediaQuery.of(context).size.width * 0.8,
                            onTap: () {
                              Navigator.pushNamed(
                                  context, paymentConfirmationScreenRoute);
                            },
                            fontSize: 16,
                            text: "Send",
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
