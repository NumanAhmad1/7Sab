import 'dart:ffi';

import 'package:financial_app/screens/authScreens/account/welcome1.dart';
import 'package:financial_app/screens/authScreens/enterMobileNumber.dart';
import 'package:flutter/material.dart';

import 'package:financial_app/screens/authScreens/resetPassword.dart';
import 'package:financial_app/screens/authScreens/login.dart';

import '../screens/authScreens/mobileOTP.dart';

class Utils {
  static void showLoginWindow(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Login(),
      ),
    );
  }

  static void showEnterMobileNumberWindow(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EnterMobileNumber(),
      ),
    );
  }

  static void showMobileOTPWindow(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EnterMobileOTP(),
      ),
    );
  }

  static void showWelcome1Account(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Welcome1Account(),
      ),
    );
  }

  static void showResetPassWindow(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResetPassword(),
      ),
    );
  }

  static void GoBackToPreviousScreen(BuildContext context) {
    Navigator.pop(context);
  }

  static String getFontFamily(String localisation, {bool bold = false}) {
    if (localisation == 'ar') {
      return 'DroidKufi';
    } else {
      return 'Montserrat' + (bold ? '-Bold' : '');
    }
  }
}
