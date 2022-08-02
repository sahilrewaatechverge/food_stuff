import 'package:flutter/material.dart';
import 'package:foodapp/screens/login_page.dart';
import 'package:foodapp/util/assets_images.dart';
import 'package:foodapp/util/constant.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardPage extends StatefulWidget {
  const OnBoardPage({Key? key}) : super(key: key);

  @override
  State<OnBoardPage> createState() => _OnBoardPageState();
}

class _OnBoardPageState extends State<OnBoardPage> {
  late final PageController pageController;

  int imgPos = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController(
      initialPage: 1,
      keepPage: false,
      viewportFraction: 1,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (imgPos == 2) {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const LoginPage()));
            } else {
              imgPos++;
            }
          });
        },
        backgroundColor: const Color(Constant.textThemeColor),
        child: const Icon(
          Icons.arrow_forward_ios_rounded,
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            imgPos == 0
                ? Container()
                : Positioned(
                    left: 20,
                    top: 20,
                    child: IconButton(
                      color: Colors.black,
                      onPressed: () {
                        setState(() {
                          if (imgPos <= 2) {
                            imgPos--;
                          } else {
                            imgPos--;
                          }
                        });
                      },
                      icon: const Icon(Icons.arrow_back_ios_rounded),
                    )),
            Positioned(
                right: 0,
                top: 0,
                child: Image.asset(AssetsImages.onBoardTopIcon)),
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
                  Constant.skip,
                  style: TextStyle(
                      color: Color(Constant.textThemeColor), fontSize: 20.0),
                ),
              ),
            ),
            Positioned(
              top: 130,
              left: 30,
              child: Text(
                Constant.headText[imgPos],
                style: GoogleFonts.montserrat(
                    fontSize: 25, fontWeight: FontWeight.w700),
              ),
            ),
            Positioned(
              top: 170,
              left: 30,
              child: Text(
                Constant.headCaption[imgPos],
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
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 250,
                    child: PageView.builder(
                      itemBuilder: (context, index) {
                        return Image.asset(AssetsImages.onBoardsIcons[index]);
                      },
                      itemCount: AssetsImages.onBoardsIcons.length,
                      pageSnapping: true,
                      scrollDirection: Axis.horizontal,
                      onPageChanged: (index) {
                        setState(() {
                          imgPos=index;
                            });

                        },
                    )
                  ),
                  RichText(
                    text: TextSpan(
                        text: '.',
                        style: imgPos == 0
                            ? const TextStyle(
                                color: Color(Constant.textThemeColor),
                                fontSize: 70.0)
                            : const TextStyle(
                                color: Colors.grey, fontSize: 60.0),
                        children: [
                          TextSpan(
                            text: '.',
                            style: imgPos == 1
                                ? const TextStyle(
                                    color: Color(Constant.textThemeColor),
                                    fontSize: 70.0)
                                : const TextStyle(
                                    color: Colors.grey, fontSize: 60.0),
                          ),
                          TextSpan(
                            text: '.',
                            style: imgPos == 2
                                ? const TextStyle(
                                    color: Color(Constant.textThemeColor),
                                    fontSize: 70.0)
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
