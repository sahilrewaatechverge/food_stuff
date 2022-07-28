import 'dart:async';

import 'package:flutter/material.dart';
import 'package:foodapp/verification.dart';
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
                  child: Image.asset("assets/images/onboardbg.png")),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Sign Up",
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
                            fontSize: 14, color: const Color(0xFF818181)),
                        keyboardType: TextInputType.name,
                        controller: nameController,
                        decoration: InputDecoration(
                          label: Text(
                            "Full Name",
                            style: GoogleFonts.montserrat(
                                fontSize: 14, color: const Color(0xFF818181)),
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
                            fontSize: 14, color: const Color(0xFF818181)),
                        keyboardType: TextInputType.emailAddress,
                        controller: emailController,
                        decoration: InputDecoration(
                          label: Text(
                            "Email",
                            style: GoogleFonts.montserrat(
                                fontSize: 14, color: const Color(0xFF818181)),
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
                            fontSize: 14, color: const Color(0xFF818181)),
                        maxLength: 10,
                        keyboardType: TextInputType.number,
                        controller: phoneController,
                        decoration: InputDecoration(
                          label: Text(
                            "Mobile No.",
                            style: GoogleFonts.montserrat(
                                fontSize: 14, color: const Color(0xFF818181)),
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
                            primary: const Color(0xFFFBA0A2),
                            side: const BorderSide(
                                color: Color(0xFFFBA0A2), width: 2),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30))),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (_) => AlertDialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              title: Image.asset(
                                "assets/images/otpconfirm.png",
                                width: 50,
                                height: 50,
                              ),
                              content: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Sign Up Successfully ',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 18,
                                      color: const Color(0xFFFBA0A2),
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
                          "Sign Up",
                          style: GoogleFonts.montserrat(
                              fontSize: 20,
                              color: const Color(0xFFFBA0A2),
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 38,
                    ),
                    Text("Or",
                        style: GoogleFonts.montserrat(
                            color: const Color(0xFFFBA0A2), fontSize: 25)),
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
                          Text("Sign Up With",
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
                        "assets/images/googleicon.png",
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
