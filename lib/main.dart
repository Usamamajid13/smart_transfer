// ignore_for_file: unnecessary_null_comparison
import 'package:flutter/material.dart';

import 'AppConstants/constants.dart';
import 'Authentication/account_created_screen.dart';
import 'Authentication/catalog_screen.dart';
import 'Authentication/forgot_password_email_screen.dart';
import 'Authentication/login_screen.dart';
import 'Authentication/login_with_pin_screen.dart';
import 'Authentication/new_password_screen.dart';
import 'Authentication/password_reset_success_screen.dart';
import 'Authentication/sign_up_screen.dart';
import 'Authentication/splash_screen.dart';
import 'Authentication/verify_phone_number_pin_screen.dart';
import 'Authentication/verify_phone_screen.dart';
import 'Home/BottomNavigationBarScreens/cards_detail_screen.dart';
import 'Home/BottomNavigationBarScreens/change_pin_code_screen.dart';
import 'Home/BottomNavigationBarScreens/home_bottom_navigation_bar_screen.dart';
import 'Home/FundsTransferScreens/add_beneficiary_account_screen.dart';
import 'Home/FundsTransferScreens/fund_transfer_amount_screen.dart';
import 'Home/FundsTransferScreens/fund_transfer_to_screen.dart';
import 'Home/FundsTransferScreens/payment_confirmation_screen.dart';
import 'Home/FundsTransferScreens/payment_successfull_screen.dart';
import 'Home/FundsTransferScreens/something_went_wrong_screen.dart';
import 'Home/MoreScreens/faq_screen.dart';
import 'Home/MoreScreens/privacy_policy_screen.dart';
import 'MainScreens/add_new_card_screen.dart';
import 'MainScreens/home_screen.dart';
import 'MainScreens/transaction_details_screen.dart';
import 'MainScreens/transaction_history_screen.dart';
import 'ProfileScreens/edit_profile_screen.dart';
import 'ProfileScreens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: splashScreenRoute,
      routes: {
        splashScreenRoute: (context) => const SplashScreen(),
        catalogScreenRoute: (context) => const CatalogScreen(),
        homeScreenRoute: (context) => const HomeScreen(),
        changePinCodeScreenRoute: (context) => const ChangePinCodeScreen(),
        editProfileScreenRoute: (context) => const EditProfileScreen(),
        addNewCardScreenRoute: (context) => const AddNewCardScreen(),
        cardDetailsScreenRoute: (context) => const CardDetailsScreen(),
        somethingWentWrongScreenRoute: (context) =>
            const SomethingWentWrongScreen(),
        paymentConfirmationScreenRoute: (context) =>
            const PaymentConfirmationScreen(),
        addBeneficiaryAccountScreenRoute: (context) =>
            const AddBeneficiaryAccountScreen(),
        loginScreenRoute: (context) => const LoginScreen(),
        passwordResetSuccessScreenRoute: (context) =>
            const PasswordResetSuccessScreen(),
        forgotPasswordEmailScreenRoute: (context) =>
            const ForgotPasswordEmailScreen(),
        signUpScreenRoute: (context) => const SignUpScreen(),
        accountCreatedScreenRoute: (context) => const AccountCreatedScreen(),
        transactionHistoryScreenRoute: (context) =>
            const TransactionHistoryScreen(),
        privacyPolicyScreenRoute: (context) => const PrivacyPolicyScreen(),
        fundTransferAmountScreenRoute: (context) =>
            const FundTransferAmountScreen(),
        transactionDetailsScreenRoute: (context) =>
            const TransactionDetailsScreen(),
        paymentSuccessfulScreenRoute: (context) =>
            const PaymentSuccessfulScreen(),
        loginWithPinScreenRoute: (context) => const LoginWithPinScreen(),
        newPasswordScreenRoute: (context) => const NewPasswordScreen(),
        faqScreenRoute: (context) => const FaqScreen(),
        fundTransferToScreenRoute: (context) => const FundTransferToScreen(),
        profileScreenRoute: (context) => const ProfileScreen(),
        homeBottomNavigationBarScreenRoute: (context) =>
            const HomeBottomNavigationBarScreen(),
        verifyPhoneNumberPinScreenRoute: (context) =>
            const VerifyPhoneNumberPinScreen(),
        verifyPhoneNumberScreenRoute: (context) =>
            const VerifyPhoneNumberScreen(),
      },
    );
  }
}
