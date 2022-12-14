import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/screens/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

class Verification extends StatefulWidget {
  const Verification({Key? key}) : super(key: key);

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  late FocusNode myFocusNode1;
  late FocusNode myFocusNode2;
  late FocusNode myFocusNode3;
  late FocusNode myFocusNode4;

  @override
  void initState() {
    super.initState();

    myFocusNode1 = FocusNode();
    myFocusNode2 = FocusNode();
    myFocusNode3 = FocusNode();
    myFocusNode4 = FocusNode();
  }

  @override
  void dispose() {
    myFocusNode1.dispose();
    myFocusNode2.dispose();
    myFocusNode3.dispose();
    myFocusNode4.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Positioned(
              top: 0,
              right: 0,
              child: Image.asset("assets/images/onBoardBg.png")),
          Positioned(
              left: 20,
              top: 20,
              child: IconButton(
                color: Colors.black,
                onPressed: () {},
                icon: const Icon(Icons.arrow_back_ios_rounded),
              )),
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    transform: Matrix4.translationValues(-40, 0, 0),
                    child: Image.asset(
                      "assets/images/otpBg.png",
                      width: 250,
                      height: 250,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "OTP Verification",
                    style: GoogleFonts.montserrat(
                        fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 23,
                  ),
                  Text(
                    "We have send the verification code\nto your mobile no",
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                        color: const Color(0xFF818181),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 46,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, right: 50),
                    child: Form(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: 50,
                            width: 50,
                            child: TextField(
                              autofocus: true,
                              onChanged: (newValue) {
                                if (newValue.isNotEmpty) {
                                  myFocusNode1.nextFocus();
                                }
                              },
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                  fontSize: 14, color: const Color(0xFF818181)),
                              maxLength: 1,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                counterText: "",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: 50,
                            child: TextField(
                              focusNode: myFocusNode1,
                              onChanged: (newValue) {
                                if (newValue.isNotEmpty) {
                                  myFocusNode2.nextFocus();
                                } else {
                                  myFocusNode1.previousFocus();
                                }
                              },
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                  fontSize: 14, color: const Color(0xFF818181)),
                              maxLength: 1,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                counterText: "",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: 50,
                            child: TextField(
                              focusNode: myFocusNode2,
                              onChanged: (newValue) {
                                if (newValue.isNotEmpty) {
                                  myFocusNode3.nextFocus();
                                } else {
                                  myFocusNode2.previousFocus();
                                }
                              },
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                  fontSize: 14, color: const Color(0xFF818181)),
                              maxLength: 1,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                counterText: "",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: 50,
                            child: TextField(
                              focusNode: myFocusNode3,
                              onChanged: (newValue) {
                                if (newValue.isNotEmpty) {
                                  myFocusNode3.unfocus();
                                } else {
                                  myFocusNode3.previousFocus();
                                }
                              },
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                  fontSize: 14, color: const Color(0xFF818181)),
                              maxLength: 1,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                counterText: "",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 42,
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 40, right: 40),
                      child: ButtonTheme(
                        height: 50,
                        minWidth: MediaQuery.of(context).size.width,
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
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const HomePage()));
                          },
                          child: Text(
                            "Submit",
                            style: GoogleFonts.montserrat(
                                fontSize: 18,
                                color: const Color(0xFFFBA0A2),
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      )),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: "Don???t have an account ? ",
                        style: GoogleFonts.montserrat(
                            fontSize: 14, color: const Color(0xFF3F3F3F)),
                      ),
                      TextSpan(
                          text: "Resend",
                          style: GoogleFonts.montserrat(
                              fontSize: 14, color: const Color(0xFFFBA0A2)),
                          recognizer: TapGestureRecognizer()..onTap = () {})
                    ]),
                  )
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
