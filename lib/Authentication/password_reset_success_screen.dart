import 'package:flutter/material.dart';

import '../Utils/app_utils.dart';

class PasswordResetSuccessScreen extends StatefulWidget {
  const PasswordResetSuccessScreen({Key? key}) : super(key: key);

  @override
  State<PasswordResetSuccessScreen> createState() =>
      _PasswordResetSuccessScreenState();
}

class _PasswordResetSuccessScreenState
    extends State<PasswordResetSuccessScreen> {
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
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.9,
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    const Spacer(),
                    Image.asset(
                      "assets/passwordResetSuccessIcon.png",
                      scale: 5,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Your Password \nHas Been Reset!",
                      style: utils.xlargeHeadingTextStyle(),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Your password had been \nchanged successfully. You can \ncontinue using the app",
                      style: utils.mediumTitleSemiBoldTextStyle(
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const Spacer(),
                    utils.bigButton(
                      width: MediaQuery.of(context).size.width * 0.8,
                      onTap: () {},
                      fontSize: 16,
                      text: "Done",
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
      ),
    );
  }
}
