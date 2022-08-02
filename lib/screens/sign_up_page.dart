import 'dart:async';

import 'package:flutter/material.dart';
import 'package:foodapp/screens/verification.dart';
import 'package:foodapp/util/assets_images.dart';
import 'package:foodapp/util/constant.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Stack(
            children: [
              Positioned(
                  right: 0,
                  top: 0,
                  child: Image.asset(AssetsImages.onBoardTopIcon)),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      Constant.signUp,
                      style: GoogleFonts.montserrat(
                          fontSize: 24, fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 64,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40, right: 40),
                      child: TextField(
                        style: GoogleFonts.montserrat(
                            fontSize: 14, color: const Color(Constant.lighiGrayColor)),
                        keyboardType: TextInputType.name,
                        controller: nameController,
                        decoration: InputDecoration(
                          label: Text(
                            Constant.fullName,
                            style: GoogleFonts.montserrat(
                                fontSize: 14, color: const Color(Constant.lighiGrayColor)),
                          ),
                          counterText: "",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40, right: 40),
                      child: TextField(
                        style: GoogleFonts.montserrat(
                            fontSize: 14, color: const Color(Constant.lighiGrayColor)),
                        keyboardType: TextInputType.emailAddress,
                        controller: emailController,
                        decoration: InputDecoration(
                          label: Text(
                            Constant.email,
                            style: GoogleFonts.montserrat(
                                fontSize: 14, color: const Color(Constant.lighiGrayColor)),
                          ),
                          counterText: "",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40, right: 40),
                      child: TextField(
                        style: GoogleFonts.montserrat(
                            fontSize: 14, color: const Color(Constant.lighiGrayColor)),
                        maxLength: 10,
                        keyboardType: TextInputType.number,
                        controller: phoneController,
                        decoration: InputDecoration(
                          label: Text(
                            Constant.mobile,
                            style: GoogleFonts.montserrat(
                                fontSize: 14, color: const Color(Constant.lighiGrayColor)),
                          ),
                          counterText: "",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40, right: 40),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            fixedSize:
                                Size(MediaQuery.of(context).size.width, 50),
                            primary: const Color(Constant.mainColor),
                            side: const BorderSide(
                                color: Color(Constant.mainColor), width: 2),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30))),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (_) => AlertDialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              title: Image.asset(
                                AssetsImages.confirmIcon,
                                width: 50,
                                height: 50,
                              ),
                              content: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    Constant.successText,
                                    style: GoogleFonts.montserrat(
                                      fontSize: 18,
                                      color: const Color(Constant.mainColor),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                          Timer(
                              const Duration(seconds: 2),
                              () => Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Verification())));
                        },
                        child: Text(
                          Constant.signUp,
                          style: GoogleFonts.montserrat(
                              fontSize: 20,
                              color: const Color(Constant.mainColor),
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 38,
                    ),
                    Text(Constant.or,
                        style: GoogleFonts.montserrat(
                            color: const Color(Constant.mainColor), fontSize: 25)),
                    const SizedBox(
                      height: 38,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 40,
                        right: 40,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 95,
                            height: 2,
                            color: const Color(0xFFC7C7C7),
                          ),
                          Text(Constant.signUpWith,
                              style: GoogleFonts.montserrat(
                                  color: const Color(0xFF9D9D9D),
                                  fontSize: 17,
                                  fontStyle: FontStyle.normal)),
                          Container(
                            width: 95,
                            height: 2,
                            color: const Color(0xFFC7C7C7),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        AssetsImages.googleIcon,
                        height: 64,
                        width: 64,
                      ),
                      iconSize: 64,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
