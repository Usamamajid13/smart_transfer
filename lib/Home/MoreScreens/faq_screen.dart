import 'package:flutter/material.dart';
import 'package:smart_transfer/AppConstants/constants.dart';
import 'package:smart_transfer/Utils/app_utils.dart';

class FaqScreen extends StatefulWidget {
  const FaqScreen({Key? key}) : super(key: key);

  @override
  State<FaqScreen> createState() => _FaqScreenState();
}

class _FaqScreenState extends State<FaqScreen> {
  var utils = AppUtils();
  var selected = -1;
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
                    "FAQ",
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
              for (int i = 0; i < 4; i++)
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (selected != i) {
                          selected = i;
                        } else {
                          selected = -1;
                        }

                        setState(() {});
                      },
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 15),
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              offset: const Offset(0, 2),
                              blurRadius: 3,
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 25),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                "Can I deposit a check using this app?",
                                style: utils.mediumTitleSemiBoldTextStyle(
                                  color: selected != i
                                      ? Colors.black
                                      : darkBlueColor,
                                ),
                              ),
                            ),
                            const Icon(
                              Icons.keyboard_arrow_down,
                            )
                          ],
                        ),
                      ),
                    ),
                    selected == i
                        ? Text(
                            "Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor \nsit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum \ndolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet ",
                            style: utils.mediumTitleSemiBoldTextStyle(
                              color: Colors.grey,
                            ),
                          )
                        : Container(),
                    selected == i
                        ? const SizedBox(
                            height: 15,
                          )
                        : Container(),
                  ],
                )
            ],
          ),
        ),
      ),
    );
  }
}
