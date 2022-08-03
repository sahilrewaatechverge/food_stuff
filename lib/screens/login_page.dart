import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/screens/sign_up_page.dart';
import 'package:foodapp/util/assets_images.dart';
import 'package:foodapp/util/constant.dart';
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
                  child: Image.asset(AssetsImages.onBoardTopIcon)),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      Constant.loginText1,
                      style: GoogleFonts.montserrat(
                          color: const Color(Constant.textBlackColor),
                          fontSize: 25, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      Constant.loginText2,
                      style: GoogleFonts.montserrat(
                        color: const Color(Constant.textBlackColor),
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
                            fontSize: 16, color: const Color(Constant.textGrayColor)),
                        maxLength: 10,
                        keyboardType: TextInputType.number,
                        controller: phoneController,
                        decoration: InputDecoration(
                          hintText: Constant.phoneFiledHint,
                          hintStyle: GoogleFonts.montserrat(
                              fontSize: 16, color: const Color(Constant.textGrayColor)),
                          label: const Text(
                            Constant.phoneFiledLabel,
                          ),
                          prefix: Text(
                            Constant.phonePrefixText,
                            style: GoogleFonts.montserrat(
                                color: const Color(Constant.textGrayColor)),
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
                            primary: const Color(Constant.textThemeColor),
                            side: const BorderSide(
                                color: Color(Constant.mainColor), width: 2),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30))),
                        onPressed: () {},
                        child: Text(
                          Constant.requestOtp,
                          style: GoogleFonts.montserrat(
                              fontSize: 20,
                              color: const Color(Constant.textThemeColor),
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 38,
                    ),
                    Text(
                      Constant.or,
                      style: GoogleFonts.montserrat(
                          fontSize: 20,
                          color: const Color(Constant.mainColor),
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
                          color: const Color(Constant.lightGrayColor),
                        ),
                        Text(
                          Constant.loginWith,
                          style: GoogleFonts.montserrat(
                              fontSize: 17, color: const Color(Constant.textGrayColor)),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: 2,
                          color: const Color(Constant.lightGrayColor),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
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
                    const SizedBox(
                      height: 30,
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: Constant.doNotHave,
                          style: GoogleFonts.montserrat(
                              fontSize: 14, color: const Color(Constant.textGrayColor)),
                        ),
                        TextSpan(
                            text: Constant.signUp,
                            style: GoogleFonts.montserrat(
                                fontSize: 14, color: const Color(Constant.mainColor)),
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
