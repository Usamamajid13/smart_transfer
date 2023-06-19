import 'package:flutter/material.dart';

import '../../AppConstants/constants.dart';
import '../../Utils/app_utils.dart';

class RecipientsScreen extends StatefulWidget {
  const RecipientsScreen({Key? key}) : super(key: key);

  @override
  State<RecipientsScreen> createState() => _RecipientsScreenState();
}

class _RecipientsScreenState extends State<RecipientsScreen> {
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
                          Text(
                            "Usama Majid",
                            style: utils.mediumTitleSemiBoldTextStyle(),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
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
