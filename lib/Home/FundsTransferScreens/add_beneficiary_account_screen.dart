import 'package:country_picker/country_picker.dart';
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
  String countryCode = "92";
  String selectedReasons = '';
  List<String> reasons = [
    "Education",
    "Credit Card Payment",
    "Loan",
    "Family Support",
  ];

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
                      hintText: "Enter your first name",
                      labelText: "FIRST NAME",
                      onChange: (val) {
                        setState(() {});
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    utils.labelTextField(
                      obscureText: false,
                      hintText: "Enter your last name",
                      labelText: "LAST NAME",
                      onChange: (val) {
                        setState(() {});
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    utils.labelTextField(
                      obscureText: false,
                      hintText: "Enter your bank name",
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
                      hintText: "Enter your IBAN",
                      labelText: "IBAN",
                      onChange: (val) {
                        setState(() {});
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    utils.labelTextField(
                      obscureText: false,
                      hintText: "Enter your address",
                      labelText: "ADDRESS",
                      onChange: (val) {
                        setState(() {});
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    utils.labelTextField(
                      obscureText: false,
                      hintText: "12345678",
                      labelText: "PHONE NUMBER",
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: GestureDetector(
                          onTap: () {
                            showCountryPicker(
                              context: context,
                              showPhoneCode: true,
                              onSelect: (Country country) {
                                countryCode = country.phoneCode;
                                setState(() {});
                              },
                            );
                          },
                          child: SizedBox(
                            width: 30,
                            height: 50,
                            child: Center(
                              child: Text(
                                "+$countryCode",
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      onChange: (val) {
                        setState(() {});
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "REASONS FOR SENDING",
                      style: utils.smallTitleTextStyle(
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: DropdownButton<String>(
                        underline: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 1,
                          color: Colors.grey[500],
                        ),
                        hint: const Text("Reasons"),
                        isExpanded: true,
                        menuMaxHeight: 250.0,
                        value:
                            selectedReasons.isNotEmpty ? selectedReasons : null,
                        onChanged: (value) {
                          setState(() {
                            selectedReasons = value!;
                          });
                        },
                        items: reasons.map((item) {
                          return DropdownMenuItem(
                            value: item,
                            child: Text(item),
                          );
                        }).toList(),
                      ),
                    ),
                    Spacer(),
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
