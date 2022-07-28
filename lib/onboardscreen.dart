import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/loginpage.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardPage extends StatefulWidget {
  const OnBoardPage({Key? key}) : super(key: key);

  @override
  State<OnBoardPage> createState() => _OnBoardPageState();
}

class _OnBoardPageState extends State<OnBoardPage> {
  late final PageController pageController;
  final List<String> icons = [
    "assets/images/onboardicon1.png",
    "assets/images/onboardicon2.png",
    "assets/images/onboardicon3.png"
  ];
  int imgpos = 0;

  final List<String> headtext = [
    "Order Your Food",
    "Quick Delivery",
    "Fresh Cooking"
  ];
  final List<String> headcaption = [
    "Order your food anytime\nanywhere",
    "Your favorite meal & order will be \nimmediately deliver  ",
    "We serve you the fresh and quality\nfood"
  ];

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            imgpos == 0
                ? Container()
                : Positioned(
                    left: 20,
                    top: 20,
                    child: IconButton(
                      color: Colors.black,
                      onPressed: () {
                        setState(() {
                          if (imgpos < 2) {
                            imgpos--;
                          } else {
                            imgpos--;
                          }
                        });
                      },
                      icon: const Icon(Icons.arrow_back_ios_rounded),
                    )),
            Positioned(
                right: 0,
                top: 0,
                child: Image.asset("assets/images/onboardbg.png")),
            Positioned(
              bottom: 15,
              right: 15,
              child: FloatingActionButton(
                onPressed: () {
                  setState(() {
                    if (imgpos == 2) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()));
                    } else {
                      imgpos++;
                    }
                  });
                },
                backgroundColor: const Color(0xFFF06573),
                child: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              bottom: 15,
              left: 15,
              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()));
                },
                child: const Text(
                  "Skip",
                  style: TextStyle(color: Color(0xFFF06573), fontSize: 20.0),
                ),
              ),
            ),
            Positioned(
              top: 130,
              left: 30,
              child: Text(
                headtext[imgpos],
                style: GoogleFonts.montserrat(
                    fontSize: 25, fontWeight: FontWeight.w700),
              ),
            ),
            Positioned(
              top: 170,
              left: 30,
              child: Text(
                headcaption[imgpos],
                style: GoogleFonts.montserrat(
                  color: Colors.grey,
                  fontSize: 20,
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // PageView.builder(
                  //   itemBuilder: (context, index) {
                  //     return AnimatedBuilder(
                  //       animation: pageController,
                  //       builder: (context, child) {
                  //         return child!;
                  //       },
                  //       child: Image.asset(
                  //         icons[index],
                  //         width: MediaQuery.of(context).size.width,
                  //         height: 250,
                  //       ),
                  //     );
                  //   },
                  //   itemCount: icons.length,
                  // ),
                  Draggable(
                    feedback: Image.asset(
                      icons[imgpos],
                      width: MediaQuery.of(context).size.width,
                      height: 250,
                    ),
                    childWhenDragging: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 250,
                    ),
                    child: Image.asset(
                      icons[imgpos],
                      width: MediaQuery.of(context).size.width,
                      height: 250,
                    ),
                    onDragEnd: (drag) {
                      if (drag.velocity.pixelsPerSecond.dx < 0) {
                        setState(() {
                          if (imgpos == 2) {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginPage()));
                          } else {
                            imgpos++;
                          }
                        });
                      } else {
                        setState(() {
                          if (imgpos == 0) {
                          } else {
                            imgpos--;
                          }
                        });
                      }
                    },
                  ),
                  RichText(
                    text: TextSpan(
                        text: '.',
                        style: imgpos == 0
                            ? const TextStyle(
                                color: Color(0xFFF06573), fontSize: 70.0)
                            : const TextStyle(
                                color: Colors.grey, fontSize: 60.0),
                        children: [
                          TextSpan(
                            text: '.',
                            style: imgpos == 1
                                ? const TextStyle(
                                    color: Color(0xFFF06573), fontSize: 70.0)
                                : const TextStyle(
                                    color: Colors.grey, fontSize: 60.0),
                          ),
                          TextSpan(
                            text: '.',
                            style: imgpos == 2
                                ? const TextStyle(
                                    color: Color(0xFFF06573), fontSize: 70.0)
                                : const TextStyle(
                                    color: Colors.grey, fontSize: 60.0),
                          ),
                        ]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
