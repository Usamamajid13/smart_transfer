import 'package:flutter/material.dart';
import 'package:smart_transfer/AppConstants/constants.dart';

import '../../Utils/app_utils.dart';

class CatalogScreen extends StatefulWidget {
  const CatalogScreen({Key? key}) : super(key: key);

  @override
  State<CatalogScreen> createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
  var utils = AppUtils();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Expanded(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Image.asset(
                    "assets/catalogImage1.png",
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Track Your Income And Expenses In One Place!",
                    style: utils.largeHeadingTextStyle(
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Labore sunt culpa excepteur culpa ipsum.\n Labore occaecat ex nisi mollit.",
                    style: utils.mediumTitleTextStyle(
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    width: 8.0,
                    height: 8.0,
                    margin: const EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 2.0,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: darkBlueColor,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            utils.bigButton(
              width: MediaQuery.of(context).size.width * 0.9,
              onTap: () {
                Navigator.pushNamed(context, signUpScreenRoute);
              },
              text: "Get Started",
              borderRadius: 15.0,
              textColor: Colors.white,
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
