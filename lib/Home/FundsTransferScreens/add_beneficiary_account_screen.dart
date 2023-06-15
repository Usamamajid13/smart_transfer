import 'package:flutter/material.dart';
import 'package:smart_transfer/Utils/app_utils.dart';

class AddBeneficiaryAccountScreen extends StatefulWidget {
  const AddBeneficiaryAccountScreen({Key? key}) : super(key: key);

  @override
  State<AddBeneficiaryAccountScreen> createState() =>
      _AddBeneficiaryAccountScreenState();
}

class _AddBeneficiaryAccountScreenState
    extends State<AddBeneficiaryAccountScreen> {
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
                    "IBAN payment",
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
                height: MediaQuery.of(context).size.height * 0.85,
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
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Beneficiary info",
                      style: utils.xmediumTitleSemiBoldTextStyle(
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    utils.labelTextField(
                      obscureText: false,
                      hintText: "US xx xxxxx xxxxxxxxxxxx",
                      labelText: "IBAN NUMBER",
                      onChange: (val) {
                        setState(() {});
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    utils.labelTextField(
                      obscureText: false,
                      hintText: "Enter beneficiary name",
                      labelText: "BENEFICIARY NAME",
                      onChange: (val) {
                        setState(() {});
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    utils.labelTextField(
                      obscureText: false,
                      hintText: "Enter BIC code",
                      labelText: "BIC CODE",
                      onChange: (val) {
                        setState(() {});
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    utils.labelTextField(
                      obscureText: false,
                      hintText: "Enter beneficiary bank name",
                      labelText: "BANK NAME",
                      onChange: (val) {
                        setState(() {});
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    utils.labelTextField(
                      obscureText: false,
                      hintText: "Enter amount",
                      labelText: "AMOUNT",
                      onChange: (val) {
                        setState(() {});
                      },
                      prefixIcon: const Icon(
                        Icons.attach_money_outlined,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    utils.labelTextField(
                      obscureText: false,
                      hintText: "Enter your comment",
                      labelText: "COMMENT",
                      onChange: (val) {
                        setState(() {});
                      },
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    const Divider(
                      color: Colors.black,
                    ),
                    Text(
                      "Bank fee: 0.15USD",
                      style: utils.smallTitleSemiBoldTextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    utils.bigButton(
                      width: MediaQuery.of(context).size.width * 0.8,
                      onTap: () {},
                      fontSize: 16,
                      text: "Next",
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
