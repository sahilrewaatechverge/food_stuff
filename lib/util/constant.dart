import 'package:flutter/material.dart';

class Constant {
  // Colors

  static const int mainColor = 0xFFFBA0A2;
  static const int textThemeColor = 0xFFF06573;
  static const int textBlackColor = 0xFF30323E;
  static const int textGrayColor = 0xFF818181;
  static const int lighiGrayColor = 0xFFDADADA;

  static const MaterialColor themeColor = MaterialColor(
    0xFFFBA0A2,
    <int, Color>{
      50: Color(0xFFFFDDDE),
      100: Color(0xFFFCD2D3),
      200: Color(0xFFFFCDCF),
      300: Color(0xFFFFC8C9),
      350: Color(0xFFFDBDBE),
      // only for raised button while pressed in light theme
      400: Color(0xFFFBA0A2),
      500: Color(0xFFFD9B9D),
      600: Color(0xFFFD9699),
      700: Color(0xFFFD8D91),
      800: Color(0xFFFF868A),
      850: Color(0xFFFF7F83),
      // only for background color in dark theme
      900: Color(0xFFFF7074),
    },
  );

  //Constant String value
  static const String title = "Food App";
  static const String skip = "Skip";
  static const String loginText1 = "Join us to explore food";
  static const String loginText2 = "Discover your perfect food";
  static const String phoneFiledHint = "Enter your mobile No";
  static const String phoneFiledLabel = "Phone Number";
  static const String phonePrefixText = "+91 |";
  static const String loginWith = "Login With";
  static const String signUpWith = "Sign Up With";
  static const String dontHave = "Don’t have an account ?";
  static const String signUp = "Sign Up";
  static const String requestOtp = "Request OTP";
  static const String or = "Or";
  static const String fullName = "Full Name";
  static const String email = "Email";
  static const String mobile = "Mobile No.";
  static const String successText = "Sign Up Successfully";

  static const List<String> catName = [
    "Home Style",
    "Pizza",
    "Sandwich",
    "Burger",
    "Fries",
    "Home Style",
    "Pizza",
    "Sandwich",
    "Burger",
    "Fries"
  ];


  // Constant List Value
  static const List<String> headText = [
    "Order Your Food",
    "Quick Delivery",
    "Fresh Cooking"
  ];
  static const List<String> headCaption = [
    "Order your food anytime\nanywhere",
    "Your favorite meal & order will be\nimmediately deliver  ",
    "We serve you the fresh and quality\nfood"
  ];
}
