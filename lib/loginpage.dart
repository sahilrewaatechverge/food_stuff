import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/signuppage.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                      "Join us to explore food",
                      style: GoogleFonts.montserrat(
                          fontSize: 25, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "Discover your perfect food",
                      style: GoogleFonts.montserrat(
                        color: const Color(0xFF30323E),
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 64,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40, right: 40),
                      child: TextField(
                        style: GoogleFonts.montserrat(
                            fontSize: 16, color: const Color(0xFF818181)),
                        maxLength: 10,
                        keyboardType: TextInputType.number,
                        controller: phoneController,
                        decoration: InputDecoration(
                          hintText: "Enter your mobile No",
                          hintStyle: GoogleFonts.montserrat(
                              fontSize: 16, color: const Color(0xFF818181)),
                          label: const Text(
                            "Phone Number",
                          ),
                          prefix: Text(
                            "+91 | ",
                            style: GoogleFonts.montserrat(
                                color: const Color(0xFF818181)),
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
                        onPressed: () {},
                        child: Text(
                          "Request OTP",
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
                    Text(
                      "Or",
                      style: GoogleFonts.montserrat(
                          fontSize: 20,
                          color: const Color(0xFFFBA0A2),
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 45,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: 2,
                          color: const Color(0xFFDADADA),
                        ),
                        Text(
                          "Login With",
                          style: GoogleFonts.montserrat(
                              fontSize: 17, color: const Color(0xFF9D9D9D)),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: 2,
                          color: const Color(0xFFDADADA),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
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
                    const SizedBox(
                      height: 30,
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: "Don’t have an account ? ",
                          style: GoogleFonts.montserrat(
                              fontSize: 14, color: const Color(0xFF3F3F3F)),
                        ),
                        TextSpan(
                            text: "Sign Up",
                            style: GoogleFonts.montserrat(
                                fontSize: 14, color: const Color(0xFFFBA0A2)),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const SignUpPage()));
                              })
                      ]),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
