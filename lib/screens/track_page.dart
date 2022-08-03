import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/util/assets_images.dart';
import 'package:foodapp/util/constant.dart';
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
                AssetsImages.mapImg,
                height: 755,
              ),
              Positioned(
                  top: 230,
                  left: 98,
                  child: Image.asset(
                    AssetsImages.mapTrack,
                    height: 333,
                    width: 246.5,
                  )),
              const Positioned(
                  top: 526,
                  left: 71.5,
                  child: Icon(
                    Icons.location_on,
                    size: 44,
                    color: Color(Constant.mainColor),
                  )),
              const Positioned(
                  top: 186,
                  right: 53.5,
                  child: Icon(
                    Icons.location_on,
                    size: 44,
                    color: Color(Constant.mainColor),
                  )),
              Positioned(
                top: 30,
                left: 20,
                child: Container(
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                    color: const Color(Constant.white),
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
                      Constant.trackOrder,
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
                                    text: Constant.estimatedTime,
                                    style: GoogleFonts.montserrat(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                    children: [
                                  TextSpan(
                                    text: "30 min",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(Constant.mainColor)),
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
                                      color: const Color(Constant.mainColor),
                                      borderRadius: BorderRadius.circular(22),
                                    ),
                                    child: Center(
                                      child: Image.asset(
                                        AssetsImages.orderPlace,
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
                                    dashColor: Color(Constant.mainColor),
                                  ),
                                  Container(
                                    width: 32,
                                    height: 32,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(22),
                                        border: Border.all(
                                          width: 2,
                                          color: const Color(Constant.lightGrayColor),
                                        )),
                                    child: Center(
                                      child: Image.asset(
                                        AssetsImages.orderPrepare,
                                        height: 16,
                                        width: 16,
                                        color: const Color(Constant.lightGrayColor),
                                      ),
                                    ),
                                  ),
                                  const DottedLine(
                                    direction: Axis.horizontal,
                                    lineThickness: 1,
                                    lineLength: 67,
                                    dashLength: 2,
                                    dashColor: Color(Constant.lightGrayColor),
                                  ),
                                  Container(
                                    width: 32,
                                    height: 32,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(22),
                                        border: Border.all(
                                          width: 2,
                                          color: const Color(Constant.lightGrayColor),
                                        )),
                                    child: Center(
                                      child: Image.asset(
                                        AssetsImages.outFor,
                                        height: 16,
                                        width: 16,
                                        color: const Color(Constant.lightGrayColor),
                                      ),
                                    ),
                                  ),
                                  const DottedLine(
                                    direction: Axis.horizontal,
                                    lineThickness: 1,
                                    lineLength: 67,
                                    dashLength: 2,
                                    dashColor: Color(Constant.lightGrayColor),
                                  ),
                                  Container(
                                    width: 32,
                                    height: 32,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(22),
                                        border: Border.all(
                                          width: 2,
                                          color: const Color(Constant.lightGrayColor),
                                        )),
                                    child: Center(
                                      child: Image.asset(
                                        AssetsImages.deliver,
                                        height: 16,
                                        width: 16,
                                        color: const Color(Constant.lightGrayColor),
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
                                    Constant.orderPlaced,
                                    maxLines: 2,
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        color: const Color(Constant.mainColor)),
                                  ),
                                  Text(
                                    Constant.preparingOrder,
                                    maxLines: 2,
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        color: const Color(Constant.lightGrayColor)),
                                  ),
                                  Text(
                                    Constant.outForDelivery,
                                    maxLines: 2,
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        color: const Color(Constant.lightGrayColor)),
                                  ),
                                  Text(
                                    Constant.delivery,
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        color: const Color(Constant.lightGrayColor)),
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
                                        AssetsImages.deliveryPerson,
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
                                          Constant.deliveryBoy,
                                          style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: const Color(Constant.lightGrayColor)),
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
                                        color: const Color(Constant.mainColor),
                                      )),
                                  child: Center(
                                    child: Image.asset(
                                      AssetsImages.phoneIcon,
                                      height: 14,
                                      width: 14,
                                      color: const Color(Constant.mainColor),
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
