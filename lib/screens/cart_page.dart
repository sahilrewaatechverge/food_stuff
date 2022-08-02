import 'dart:async';

import 'package:flutter/material.dart';
import 'package:foodapp/screens/track_page.dart';
import 'package:google_fonts/google_fonts.dart';

class CartPage extends StatefulWidget {
  final String title;

  const CartPage({Key? key, required this.title}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          shadowColor: const Color(0x00ffffff),
          title: Text(
            widget.title,
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w500, fontSize: 14),
          )),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(left: 17, right: 17, bottom: 15),
            child: Column(
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  color: Colors.white,
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(8),
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        const Positioned(
                          child: Icon(
                            Icons.location_on_outlined,
                            color: Color(0xFFF06573),
                          ),
                        ),
                        Positioned(
                          left: 31,
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.65,
                            transform: Matrix4.translationValues(-10, 0, 0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Titanium city center',
                                  style: GoogleFonts.montserrat(
                                      color: const Color(
                                        0xFFF06573,
                                      ),
                                      fontSize: 14),
                                ),
                                Text(
                                  "Seema Hall, 100 feet Anand nagar Road, jo...",
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.montserrat(
                                      color: Colors.black, fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Change",
                              style: GoogleFonts.montserrat(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xFFF06573)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 23,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  color: Colors.white,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/vegicon.png",
                          height: 10,
                          width: 10,
                        ),
                        Container(
                          transform: Matrix4.translationValues(-75, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Cheese Burst Frankie',
                                style: GoogleFonts.montserrat(
                                    color: Colors.black, fontSize: 14),
                              ),
                              Text(
                                "₹120",
                                style: GoogleFonts.montserrat(
                                    color: Colors.black, fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          width: 61,
                          height: 20,
                          decoration: BoxDecoration(
                              color: const Color(0xFFF06573),
                              borderRadius: BorderRadius.circular(4)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                child: const Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                  size: 8,
                                ),
                                onTap: () {
                                  if (count == 0) {
                                  } else {
                                    setState(() {
                                      count--;
                                    });
                                  }
                                },
                              ),
                              Text(
                                count == 0 ? "Add" : count.toString(),
                                style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 10),
                              ),
                              GestureDetector(
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 8,
                                ),
                                onTap: () {
                                  setState(() {
                                    count++;
                                  });
                                },
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  color: Colors.white,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/vegicon.png",
                          height: 10,
                          width: 10,
                        ),
                        Container(
                          transform: Matrix4.translationValues(-100, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Cold Coffee',
                                style: GoogleFonts.montserrat(
                                    color: Colors.black, fontSize: 14),
                              ),
                              Text(
                                "₹80",
                                style: GoogleFonts.montserrat(
                                    color: Colors.black, fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          width: 61,
                          height: 20,
                          decoration: BoxDecoration(
                              color: const Color(0xFFF06573),
                              borderRadius: BorderRadius.circular(4)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                child: const Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                  size: 8,
                                ),
                                onTap: () {
                                  if (count == 0) {
                                  } else {
                                    setState(() {
                                      count--;
                                    });
                                  }
                                },
                              ),
                              Text(
                                count == 0 ? "Add" : count.toString(),
                                style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 10),
                              ),
                              GestureDetector(
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 8,
                                ),
                                onTap: () {
                                  setState(() {
                                    count++;
                                  });
                                },
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 11,
                ),
                Row(
                  children: [
                    const Icon(Icons.add, size: 11, color: Color(0xFFF06573)),
                    const SizedBox(
                      width: 7,
                    ),
                    Text(
                      "Add more",
                      style: GoogleFonts.montserrat(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFFF06573)),
                    )
                  ],
                ),
                const SizedBox(
                  height: 37,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border:
                          Border.all(width: 1, color: const Color(0xFFF06573))),
                  child: Text(
                    "Apply Coupon",
                    style: GoogleFonts.montserrat(
                        color: const Color(0xFFF06573),
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Card(
                  color: Colors.white,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  child: Container(
                    padding:
                        const EdgeInsets.only(left: 13, right: 13, top: 13),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Payment Summery",
                          style: GoogleFonts.montserrat(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Item Total",
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w400, fontSize: 12),
                            ),
                            Text(
                              "₹200",
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w400, fontSize: 10),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Tax & Charges",
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w400, fontSize: 12),
                            ),
                            Text(
                              "₹35",
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w400, fontSize: 10),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Delivery fee",
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w400, fontSize: 12),
                            ),
                            Text(
                              "₹15",
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w400, fontSize: 10),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Divider(
                          height: 2,
                          color: Color(0xFFEAEAEA),
                        ),
                        SizedBox(
                          height: 50,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Grand Total",
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w500, fontSize: 15),
                              ),
                              Text(
                                "₹250",
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w500, fontSize: 16),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Row(
                      children: [
                        Container(
                            padding: const EdgeInsets.all(9.5),
                            height: 48,
                            width: MediaQuery.of(context).size.width * 0.32,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(23),
                                border: Border.all(
                                    width: 1, color: const Color(0xFFC7C7C7))),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Pay Using",
                                      style: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 10),
                                    ),
                                    const Icon(
                                      Icons.arrow_drop_up,
                                      size: 15,
                                      color: Color(0xFFF06573),
                                    ),
                                  ],
                                ),
                                Text(
                                  "Cash on Delivery",
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10),
                                ),
                              ],
                            )),
                        const SizedBox(
                          width: 3,
                        ),
                        GestureDetector(
                            child: Container(
                              padding: const EdgeInsets.all(13),
                              height: 48,
                              width: MediaQuery.of(context).size.width * 0.58,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(23),
                                  border: Border.all(
                                      width: 1,
                                      color: const Color(0xFFF06573))),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Pay Now",
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                        color: const Color(0xFFF06573)),
                                  ),
                                  Text(
                                    "₹250",
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        color: const Color(0xFFF06573)),
                                  ),
                                ],
                              ),
                            ),
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (_) => Scaffold(
                                          body: Container(
                                        color: Colors.white,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height:
                                            MediaQuery.of(context).size.height,
                                        child: Center(
                                            child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              "assets/images/otpconfirm.png",
                                              height: 119,
                                              width: 119,
                                            ),
                                            const SizedBox(
                                              height: 42,
                                            ),
                                            Text(
                                              "Order Confirmed",
                                              style: GoogleFonts.montserrat(
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.w700,
                                                  color:
                                                      const Color(0xFFF06573)),
                                            )
                                          ],
                                        )),
                                      )));
                              Timer(
                                const Duration(seconds: 3),
                                () => Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const TrackPage(),
                                  ),
                                ),
                              );
                            })
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
