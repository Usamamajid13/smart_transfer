import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Utils/app_utils.dart';

class ChangePinCodeScreen extends StatefulWidget {
  const ChangePinCodeScreen({Key? key}) : super(key: key);

  @override
  State<ChangePinCodeScreen> createState() => _ChangePinCodeScreenState();
}

class _ChangePinCodeScreenState extends State<ChangePinCodeScreen> {
  var utils = AppUtils();
  bool obscure1 = true;
  bool obscure2 = true;
  bool obscure3 = true;
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
                    "Change PIN code",
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
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          utils.labelTextField(
                            obscureText: obscure1,
                            hintText: "Enter your old PIN",
                            labelText: "CURRENT PIN CODE",
                            suffixIcon: GestureDetector(
                              onTap: () {
                                obscure1 = !obscure1;
                                setState(() {});
                              },
                              child: Icon(
                                !obscure1
                                    ? CupertinoIcons.eye_slash_fill
                                    : CupertinoIcons.eye,
                                color: Colors.grey,
                                size: 20,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          utils.labelTextField(
                            obscureText: obscure2,
                            hintText: "Enter new PIN",
                            labelText: "NEW PIN",
                            suffixIcon: GestureDetector(
                              onTap: () {
                                obscure2 = !obscure2;
                                setState(() {});
                              },
                              child: Icon(
                                !obscure2
                                    ? CupertinoIcons.eye_slash_fill
                                    : CupertinoIcons.eye,
                                color: Colors.grey,
                                size: 20,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          utils.labelTextField(
                            obscureText: obscure3,
                            hintText: "Confirm your new PIN",
                            labelText: "CONFIRM PIN",
                            suffixIcon: GestureDetector(
                              onTap: () {
                                obscure3 = !obscure3;
                                setState(() {});
                              },
                              child: Icon(
                                !obscure3
                                    ? CupertinoIcons.eye_slash_fill
                                    : CupertinoIcons.eye,
                                color: Colors.grey,
                                size: 20,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
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
