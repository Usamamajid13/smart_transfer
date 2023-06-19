import 'package:flutter/material.dart';
import 'package:smart_transfer/Utils/app_utils.dart';

import '../../AppConstants/constants.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  var utils = AppUtils();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 80,
            ),
            Text(
              "More",
              style: utils.largestHeadingTextStyle(),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                utils.moreWidget(
                  onTap: () {
                    Navigator.pushNamed(context, addNewCardScreenRoute);
                  },
                  text: "Add New Card",
                  scale: 25.0,
                  image: "assets/cardIcon.png",
                  color: Colors.green,
                ),
                const SizedBox(
                  width: 5,
                ),
                utils.moreWidget(
                  text: "Payment schedule",
                  scale: 25.0,
                  image: "assets/calendarIcon.png",
                  color: Colors.blue,
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                utils.moreWidget(
                  text: "Statistics",
                  scale: 25.0,
                  image: "assets/statsIcon.png",
                  color: Colors.orange,
                ),
                const SizedBox(
                  width: 5,
                ),
                utils.moreWidget(
                  text: "Scanner QR",
                  scale: 25.0,
                  image: "assets/scanner.png",
                  color: Colors.purple,
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                utils.moreWidget(
                  text: "Charity",
                  scale: 25.0,
                  image: "assets/heart.png",
                  color: Colors.blueGrey,
                ),
                const SizedBox(
                  width: 5,
                ),
                utils.moreWidget(
                  text: "Support",
                  scale: 25.0,
                  image: "assets/chat.png",
                  color: Colors.deepOrange,
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                utils.moreWidget(
                  text: "FAQ",
                  onTap: () {
                    Navigator.pushNamed(context, faqScreenRoute);
                  },
                  scale: 25.0,
                  image: "assets/questionChat.png",
                  color: Colors.yellow,
                ),
                const SizedBox(
                  width: 5,
                ),
                utils.moreWidget(
                  text: "Terms & fees",
                  scale: 25.0,
                  image: "assets/termsIcon.png",
                  color: Colors.pink,
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                utils.moreWidget(
                  text: "Privacy Policy",
                  onTap: () {
                    Navigator.pushNamed(context, privacyPolicyScreenRoute);
                  },
                  scale: 25.0,
                  image: "assets/privacyIcon.png",
                  color: Colors.greenAccent,
                ),
                const SizedBox(
                  width: 5,
                ),
                const Spacer(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
