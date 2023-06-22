import 'package:flutter/material.dart';
import 'package:smart_transfer/AppConstants/constants.dart';

import '../../Utils/app_utils.dart';

class FundTransferToScreen extends StatefulWidget {
  const FundTransferToScreen({Key? key}) : super(key: key);

  @override
  State<FundTransferToScreen> createState() => _FundTransferToScreenState();
}

class _FundTransferToScreenState extends State<FundTransferToScreen> {
  var utils = AppUtils();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, addBeneficiaryAccountScreenRoute);
        },
        backgroundColor: darkBlueColor,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
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
              utils.labelTextField(
                obscureText: false,
                hintText: "Enter something here",
                labelText: "SEARCH",
                onChange: (val) {
                  setState(() {});
                },
                suffixIcon: const Icon(
                  Icons.person,
                  color: Colors.grey,
                  size: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Send money to",
                style: utils.xmediumTitleSemiBoldTextStyle(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              for (int i = 0; i < 10; i++)
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                            context, fundTransferAmountScreenRoute);
                      },
                      child: Row(
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Usama Majid",
                                style: utils.largeSemiBoldTextStyle(),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Meezan Bank ****1234",
                                style: utils.smallTitleTextStyle(
                                  color: Colors.grey[700],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                  ],
                )
            ],
          ),
        ),
      ),
    );
  }
}
