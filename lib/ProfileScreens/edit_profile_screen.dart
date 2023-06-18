import 'package:country_picker/country_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../Utils/app_utils.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  var utils = AppUtils();

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
                    "Edit personal info",
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
                padding: const EdgeInsets.only(bottom: 20),
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
                        height: 40,
                      ),
                      Container(
                        width: 80,
                        height: 80,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/dummyProfileImage.png"),
                            fit: BoxFit.cover,
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.camera_alt_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      utils.labelTextField(
                        obscureText: false,
                        hintText: "name",
                        labelText: "NAME",
                        onChange: (val) {
                          setState(() {});
                        },
                      ),
                      const SizedBox(
                        height: 10,
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
                                  print('Select country: ${country.flagEmoji}');
                                }
                              },
                            );
                          },
                          child: SizedBox(
                            width: 30,
                            height: 50,
                            child: Center(
                              child: Text(
                                countryFlag,
                                style: const TextStyle(
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
                      utils.labelTextField(
                        obscureText: false,
                        hintText: "Enter your email",
                        labelText: "EMAIL",
                        onChange: (val) {
                          setState(() {});
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      utils.labelTextField(
                        obscureText: false,
                        hintText: "MM/DD/YYYY",
                        labelText: "DATE OF BIRTH",
                        onChange: (val) {
                          setState(() {});
                        },
                        suffixIcon: const Icon(
                          Icons.calendar_month_rounded,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      utils.labelTextField(
                        obscureText: false,
                        hintText: "Enter your address",
                        labelText: "ADDRESS",
                        onChange: (val) {
                          setState(() {});
                        },
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      utils.bigButton(
                        width: MediaQuery.of(context).size.width * 0.8,
                        onTap: () {
                          Navigator.pop(context);
                        },
                        fontSize: 16,
                        text: "Save",
                        borderRadius: 15.0,
                        textColor: Colors.white,
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
