import 'package:flutter/material.dart';

class Constant {
  // Colors

  static const int mainColor = 0xFFFBA0A2;
  static const int textThemeColor = 0xFFF06573;
  static const int textBlackColor = 0xFF30323E;
  static const int textGrayColor = 0xFF818181;
  static const int lightGrayColor = 0xFFDADADA;
  static const int transparent = 0x00ffffff;
  static const int textRedColor = 0xFFF12C2C;
  static const int textBlueColor = 0xFF5F66D1;
  static const int white = 0xFF5F66D1;

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
  static const String doNotHave = "Don’t have an account ?";
  static const String signUp = "Sign Up";
  static const String requestOtp = "Request OTP";
  static const String or = "Or";
  static const String fullName = "Full Name";
  static const String email = "Email";
  static const String mobile = "Mobile No.";
  static const String successText = "Sign Up Successfully";
  static const String address1 = "Titanium city center";
  static const String address2 = "Seema Hall, 100 feet Anand nagar Road, jo";
  static const String searchLabel = "Restaurant ,name  or dish";
  static const String popularText = "Order Popular One’s";
  static const String offerText = "Offers";
  static const String featuredText = "Featured Restaurant";
  static const String mustTry = "Must Try";
  static const String overview = "Overview";
  static const String nowOpen = "Now Open";
  static const String pureVeg = "Pure Veg";
  static const String nonVeg = "Non Veg";
  static const String customize = "Customize";
  static const String change = "Change";
  static const String itemName1 = "Cheese Burst Frankie";
  static const String itemName2 = "Cold Coffee";
  static const String applyCoupon = "Apply Coupon";
  static const String paymentSummery = "Payment Summery";
  static const String tax = "Tax & Charges";
  static const String deliveryFee = "Delivery fee";
  static const String grandTotal = "Grand Total";
  static const String payUsing = "Pay Using";
  static const String cod = "Cash on Delivery";
  static const String payNow = "Pay Now";
  static const String orderConfirm = "Order Confirmed";
  static const String itemTotal = "Item Total";
  static const String add = "Add";
  static const String trackOrder = "Track Order";
  static const String estimatedTime = "Estimated Time";
  static const String orderPlaced = "Order\nPlaced";
  static const String preparingOrder = "Preparing your\norder";
  static const String outForDelivery = "Out For\nDelivery";
  static const String delivery = "Delivered";
  static const String deliveryBoy = "your delivery boy";

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
