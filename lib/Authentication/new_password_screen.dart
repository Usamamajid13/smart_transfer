import 'package:flutter/material.dart';

import '../AppConstants/constants.dart';
import '../Utils/app_utils.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({Key? key}) : super(key: key);

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
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
                    "New password",
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
                height: 300,
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
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Enter new password and confirm",
                              style: utils.xmediumTitleTextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          utils.labelTextField(
                            obscureText: true,
                            hintText: "Confirm your password",
                            labelText: "NEW PASSWORD",
                            suffixIcon: const Icon(
                              Icons.remove_red_eye,
                              color: Colors.grey,
                              size: 20,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          utils.labelTextField(
                            obscureText: true,
                            hintText: "Confirm your password",
                            labelText: "CONFIRM PASSWORD",
                            suffixIcon: const Icon(
                              Icons.remove_red_eye,
                              color: Colors.grey,
                              size: 20,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          utils.bigButton(
                            width: MediaQuery.of(context).size.width * 0.8,
                            onTap: () {
                              Navigator.pushNamed(
                                  context, passwordResetSuccessScreenRoute);
                            },
                            fontSize: 16,
                            text: "Change Password",
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
