import 'package:flutter/material.dart';

import '../Utils/app_utils.dart';

class AddNewCardScreen extends StatefulWidget {
  const AddNewCardScreen({Key? key}) : super(key: key);

  @override
  State<AddNewCardScreen> createState() => _AddNewCardScreenState();
}

class _AddNewCardScreenState extends State<AddNewCardScreen> {
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
                    "Add new card",
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
                padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "CARD INFORMATION",
                      style: utils.smallTitleSemiBoldTextStyle(),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                        ),
                        border: Border.all(
                          width: 0.5,
                          color: Colors.black,
                        ),
                      ),
                      child: const Row(
                        children: [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "1234 1234 1234 1234",
                                contentPadding: EdgeInsets.only(
                                  left: 10,
                                  bottom: 5,
                                ),
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                          // Image.asset(
                          //   "assets/visa.png",
                          // ),
                          // Image.asset(
                          //   "assets/master.png",
                          // ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                        ),
                        border: Border.all(
                          color: Colors.black,
                          width: 0.5,
                        ),
                      ),
                      child: Row(
                        children: [
                          const Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "MM / YY",
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.only(
                                  left: 10,
                                  bottom: 5,
                                ),
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 1,
                            height: 45,
                            color: Colors.grey,
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                const Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "CVC",
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.only(
                                        left: 10,
                                        bottom: 5,
                                      ),
                                      hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                                Image.asset(
                                  "assets/visaCardIcon2.png",
                                  scale: 20,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                          )
                          // Image.asset(
                          //   "assets/visa.png",
                          // ),
                          // Image.asset(
                          //   "assets/master.png",
                          // ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    utils.labelTextField(
                      obscureText: false,
                      hintText: "Enter your name",
                      labelText: "NAME ON CARD",
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
