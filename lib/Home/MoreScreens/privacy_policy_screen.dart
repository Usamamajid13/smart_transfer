import 'package:flutter/material.dart';

import '../../Utils/app_utils.dart';

class PrivacyPolicyScreen extends StatefulWidget {
  const PrivacyPolicyScreen({Key? key}) : super(key: key);

  @override
  State<PrivacyPolicyScreen> createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
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
                    "",
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
              Text(
                "Privacy Policy",
                style: utils.largestHeadingTextStyle(),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "1. Terms",
                style: utils.largeSemiBoldTextStyle(),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "By accessing this website, you are agreeing to be bound these website Terms and Confitions of Use applicable laws and requlations and their compliance. If you disagree with any of the stated terms and conditions, you are prohibited from using or accessing this site. The materials contained in this site are secured by relevant copyright and trademark law.",
                style: utils.largeTextStyle(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "2. Use Licence",
                style: utils.largeSemiBoldTextStyle(),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "By accessing this website, you are agreeing to be bound these website Terms and Confitions of Use applicable laws and requlations and their compliance. If you disagree with any of the stated terms and conditions, you are prohibited from using or accessing this site. The materials contained in this site are secured by relevant copyright and trademark law.",
                style: utils.largeTextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
