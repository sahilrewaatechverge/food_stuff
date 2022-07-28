import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TrackPage extends StatefulWidget {
  const TrackPage({Key? key}) : super(key: key);

  @override
  State<TrackPage> createState() => _TrackPageState();
}

class _TrackPageState extends State<TrackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Stack(
            children: [
              Image.asset(
                "assets/images/mapimg.png",
                height: 755,
              ),
              Positioned(
                  top: 230,
                  left: 98,
                  child: Image.asset(
                    "assets/images/map.png",
                    height: 333,
                    width: 246.5,
                  )),
              const Positioned(
                  top: 526,
                  left: 71.5,
                  child: Icon(
                    Icons.location_on,
                    size: 44,
                    color: Color(0xFFF06573),
                  )),
              const Positioned(
                  top: 186,
                  right: 53.5,
                  child: Icon(
                    Icons.location_on,
                    size: 44,
                    color: Color(0xFFF06573),
                  )),
              Positioned(
                top: 30,
                left: 20,
                child: Container(
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.arrow_back_ios_rounded,
                      color: Colors.black,
                      size: 32,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 40,
                left: MediaQuery.of(context).size.width * 0.38,
                right: MediaQuery.of(context).size.width * 0.38,
                child: SizedBox(
                  width: 110,
                  height: 32,
                  child: Card(
                      child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      "Track Order",
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                  )),
                ),
              ),
              Positioned(
                  bottom: 0,
                  child: Container(
                    padding: const EdgeInsets.all(17),
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      child: Container(
                        padding: const EdgeInsets.only(
                            left: 13, right: 10, top: 8, bottom: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                                text: TextSpan(
                                    text: "Estimated Time",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                    children: [
                                  TextSpan(
                                    text: " 30 min",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xFFF06573)),
                                  )
                                ])),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 32,
                                    height: 32,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFF06573),
                                      borderRadius: BorderRadius.circular(22),
                                    ),
                                    child: Center(
                                      child: Image.asset(
                                        "assets/images/orderplace.png",
                                        height: 16,
                                        width: 16,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  const DottedLine(
                                    direction: Axis.horizontal,
                                    lineThickness: 1,
                                    lineLength: 67,
                                    dashLength: 2,
                                    dashColor: Color(0xFFF06573),
                                  ),
                                  Container(
                                    width: 32,
                                    height: 32,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(22),
                                        border: Border.all(
                                          width: 2,
                                          color: const Color(0xFFC7C7C7),
                                        )),
                                    child: Center(
                                      child: Image.asset(
                                        "assets/images/orderprepare.png",
                                        height: 16,
                                        width: 16,
                                        color: const Color(0xFFC7C7C7),
                                      ),
                                    ),
                                  ),
                                  const DottedLine(
                                    direction: Axis.horizontal,
                                    lineThickness: 1,
                                    lineLength: 67,
                                    dashLength: 2,
                                    dashColor: Color(0xFFC7C7C7),
                                  ),
                                  Container(
                                    width: 32,
                                    height: 32,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(22),
                                        border: Border.all(
                                          width: 2,
                                          color: const Color(0xFFC7C7C7),
                                        )),
                                    child: Center(
                                      child: Image.asset(
                                        "assets/images/outfor.png",
                                        height: 16,
                                        width: 16,
                                        color: const Color(0xFFC7C7C7),
                                      ),
                                    ),
                                  ),
                                  const DottedLine(
                                    direction: Axis.horizontal,
                                    lineThickness: 1,
                                    lineLength: 67,
                                    dashLength: 2,
                                    dashColor: Color(0xFFC7C7C7),
                                  ),
                                  Container(
                                    width: 32,
                                    height: 32,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(22),
                                        border: Border.all(
                                          width: 2,
                                          color: const Color(0xFFC7C7C7),
                                        )),
                                    child: Center(
                                      child: Image.asset(
                                        "assets/images/deliver.png",
                                        height: 16,
                                        width: 16,
                                        color: const Color(0xFFC7C7C7),
                                      ),
                                    ),
                                  ),
                                ]),
                            const SizedBox(
                              height: 3,
                            ),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Order\nPlaced",
                                    maxLines: 2,
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        color: const Color(0xFFF06573)),
                                  ),
                                  Text(
                                    "Preparing your\norder",
                                    maxLines: 2,
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        color: const Color(0xFFC7C7C7)),
                                  ),
                                  Text(
                                    "Out For\nDelivery",
                                    maxLines: 2,
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        color: const Color(0xFFC7C7C7)),
                                  ),
                                  Text(
                                    "Delivered",
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        color: const Color(0xFFC7C7C7)),
                                  ),
                                ]),
                            const SizedBox(
                              height: 14,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                        "assets/images/person.png",
                                      ))),
                                      height: 36,
                                      width: 36,
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Jayesh ",
                                          style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          "your delivery boy",
                                          style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: const Color(0xFF9D9D9D)),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Container(
                                  width: 32,
                                  height: 32,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(22),
                                      border: Border.all(
                                        width: 2,
                                        color: const Color(0xFFF06573),
                                      )),
                                  child: Center(
                                    child: Image.asset(
                                      "assets/images/phone.png",
                                      height: 14,
                                      width: 14,
                                      color: const Color(0xFFF06573),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
