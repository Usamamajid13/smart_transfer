import 'package:flutter/material.dart';

import '../AppConstants/constants.dart';
import '../Utils/app_utils.dart';

class AccountCreatedScreen extends StatefulWidget {
  const AccountCreatedScreen({Key? key}) : super(key: key);

  @override
  State<AccountCreatedScreen> createState() => _AccountCreatedScreenState();
}

class _AccountCreatedScreenState extends State<AccountCreatedScreen> {
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
                      "assets/briefcase.png",
                      scale: 5,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Account Created!",
                      style: utils.xlargeHeadingTextStyle(),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Your account has been created \nsuccessfully.",
                      style: utils.mediumTitleSemiBoldTextStyle(
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const Spacer(),
                    utils.bigButton(
                      width: MediaQuery.of(context).size.width * 0.8,
                      onTap: () {
                        Navigator.pushNamed(
                            context, homeBottomNavigationBarScreenRoute);
                      },
                      fontSize: 16,
                      text: "Continue",
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
