import 'package:country_picker/country_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../AppConstants/constants.dart';
import '../Utils/app_utils.dart';

class VerifyPhoneNumberScreen extends StatefulWidget {
  const VerifyPhoneNumberScreen({Key? key}) : super(key: key);

  @override
  State<VerifyPhoneNumberScreen> createState() =>
      _VerifyPhoneNumberScreenState();
}

class _VerifyPhoneNumberScreenState extends State<VerifyPhoneNumberScreen> {
  var utils = AppUtils();
  bool value = false;
  String countryFlag = "🇦🇱";
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
                    "Verify your phone number",
                    style: utils.xmediumTitleSemiBoldTextStyle(),
                  ),
                  SizedBox(
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
                          Text(
                            "We have sent you an SMS with a code to number +17 0123456789.",
                            style: utils.xmediumTitleTextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          utils.labelTextField(
                            obscureText: false,
                            hintText: "+17 123969821",
                            labelText: "PHONE NUMBER",
                            prefixIcon: GestureDetector(
                              onTap: () {
                                showCountryPicker(
                                  context: context,
                                  showPhoneCode: true,
                                  onSelect: (Country country) {
                                    countryFlag = country.phoneCode;
                                    setState(() {});
                                    if (kDebugMode) {
                                      print(
                                          'Select country: ${country.flagEmoji}');
                                    }
                                  },
                                );
                              },
                              child: Container(
                                width: 30,
                                height: 50,
                                child: Center(
                                  child: Text(
                                    countryFlag,
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            onChange: (val) {
                              setState(() {});
                            },
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          utils.bigButton(
                            width: MediaQuery.of(context).size.width * 0.8,
                            onTap: () {
                              Navigator.pushNamed(
                                  context, accountCreatedScreenRoute);
                            },
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
