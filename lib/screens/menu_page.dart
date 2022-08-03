import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:foodapp/screens/cart_page.dart';
import 'package:foodapp/models/restaurants.dart';
import 'package:foodapp/util/assets_images.dart';
import 'package:foodapp/util/constant.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key, required this.restaurant}) : super(key: key);
  final Restaurants restaurant;

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  void isSelect(bool isOn) {}
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 381,
                child: Stack(
                  children: [
                    Positioned(child: Image.asset(widget.restaurant.img)),
                    Positioned(
                      top: 20,
                      left: 20,
                      child: IconButton(
                        iconSize: 42,
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Container(
                          decoration: BoxDecoration(
                            color: const Color(Constant.textBlackColor),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.arrow_back_ios_rounded,
                              color: Colors.white,
                              size: 32,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 29,
                      right: 20,
                      child: GestureDetector(
                        child: Container(
                          height: 42,
                          width: 42,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: const Icon(
                            Icons.shopping_cart_outlined,
                            color: Color(Constant.mainColor),
                            size: 24,
                          ),
                        ),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => CartPage(
                                    title: widget.restaurant.name,
                                  )));
                        },
                      ),
                    ),
                    Positioned(
                        right: 0,
                        top: 143,
                        child: Image.asset(
                          AssetsImages.vegBanner,
                          height: 20,
                          width: 78,
                        )),
                    Positioned(
                        right: 20,
                        top: 145,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              widget.restaurant.ratings,
                              style: GoogleFonts.montserrat(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 15,
                            )
                          ],
                        )),
                    Positioned(
                      top: 213,
                      child: Container(
                        height: MediaQuery.of(context).size.height*0.15,
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.only(
                          left: 17,
                          right: 17,
                        ),
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          elevation: 8,
                          color: Colors.white,
                          child: Container(
                            padding: const EdgeInsets.only(
                                top: 15, left: 18, right: 21, bottom: 15),
                            child: Stack(
                              children: [
                                Positioned(
                                    top:0,
                                    left: 0,
                                    child:  Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      Constant.overview,
                                      style: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 19,
                                          color: const Color(Constant.mainColor)),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      widget.restaurant.name,
                                      style: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                          color: Colors.black),
                                    ),
                                    Text(
                                      widget.restaurant.foodcat,
                                      style: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: Colors.black),
                                    ),
                                    Text(
                                      widget.restaurant.address,
                                      style: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: Colors.black),
                                    ),
                                  ],
                                ))
                               ,
                                Positioned(
                                  top: 30,
                                  right: 0,
                                    child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      Constant.nowOpen,
                                      style: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: const Color(0xFFEC6EAD)),
                                    ),
                                    Text(
                                      "Close at ${widget.restaurant.cloeingtiming}",
                                      style: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10,
                                          color: Colors.black),
                                    )
                                  ],
                                ))
                                ,
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 355,
                      left: 17,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            Constant.pureVeg,
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: const Color(0xFF60A894)),
                          ),
                          SizedBox(
                            width: 23,
                            height: 15,
                            child: FittedBox(
                              fit: BoxFit.fill,
                              child: Switch(
                                value: true,
                                onChanged: isSelect,
                                activeColor: const Color(0xFF60A894),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Text(
                            Constant.nonVeg,
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: const Color(Constant.textRedColor)),
                          ),
                          SizedBox(
                            width: 23,
                            height: 15,
                            child: FittedBox(
                              fit: BoxFit.fill,
                              child: Switch(
                                inactiveThumbColor: Colors.grey.shade300,
                                inactiveTrackColor: Colors.grey.shade300,
                                value: false,
                                onChanged: isSelect,
                                activeColor: const Color(Constant.textRedColor),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Text(
                            Constant.customize,
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: const Color(Constant.textBlueColor)),
                          ),
                          SizedBox(
                            width: 23,
                            height: 15,
                            child: FittedBox(
                              fit: BoxFit.fill,
                              child: Switch(
                                inactiveThumbColor: Colors.grey.shade300,
                                inactiveTrackColor: Colors.grey.shade300,
                                value: false,
                                onChanged: isSelect,
                                activeColor: const Color(Constant.textBlueColor),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.537,
                child: ListView.builder(
                  itemCount: widget.restaurant.menu.length,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) => Container(
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width,
                    height: 87,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 17, right: 17),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    AssetsImages.vegIcon,
                                    height: 10,
                                    width: 10,
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    widget.restaurant.menu[index].itemname,
                                    style: GoogleFonts.montserrat(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    widget.restaurant.menu[index].catname,
                                    style: GoogleFonts.montserrat(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    "₹${widget.restaurant.menu[index].amount}",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  RatingBar.builder(
                                    itemSize: 8,
                                    initialRating: double.parse(
                                        widget.restaurant.menu[index].rate),
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemBuilder: (context, _) => const Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 8,
                                    ),
                                    onRatingUpdate: (rating) {},
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 82,
                                height: 67,
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 49,
                                      width: 77,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        image: DecorationImage(
                                          image: AssetImage(
                                            widget.restaurant.menu[index].img,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                        top: 40,
                                        left: 8,
                                        child: Container(
                                          width: 61,
                                          height: 20,
                                          decoration: BoxDecoration(
                                              color: const Color(Constant.mainColor),
                                              borderRadius:
                                                  BorderRadius.circular(4)),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
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
                                                count == 0
                                                    ? Constant.add
                                                    : count.toString(),
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
                                        ))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          transform: Matrix4.translationValues(0, 7, 0),
                          width: MediaQuery.of(context).size.width,
                          height: 1,
                          color: const Color(Constant.lightGrayColor),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
