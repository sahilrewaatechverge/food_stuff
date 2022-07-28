import 'package:flutter/material.dart';
import 'package:foodapp/menu.dart';
import 'package:foodapp/restaurant.dart';
import 'package:foodapp/restaurants.dart';
import 'package:foodapp/menupage.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> catName = [
    "Home Style",
    "Pizza",
    "Sandwich",
    "Burger",
    "Fries",
    "Home Style",
    "Pizza",
    "Sandwich",
    "Burger",
    "Fries"
  ];
  List<String> caticon = [
    "assets/images/caticon5.png",
    "assets/images/caticon4.png",
    "assets/images/caticon3.png",
    "assets/images/caticon2.png",
    "assets/images/caticon1.png",
    "assets/images/caticon5.png",
    "assets/images/caticon4.png",
    "assets/images/caticon3.png",
    "assets/images/caticon2.png",
    "assets/images/caticon1.png",
  ];

  List<String> offersicon = [
    "assets/images/offer1.png",
    "assets/images/offer2.png",
    "assets/images/offer1.png",
    "assets/images/offer2.png",
  ];
  late List<Restaurants> restaurantsList;
  late List<Menu> menuList;
  late Restaurant restaurant;

  @override
  void initState() {
    super.initState();
    Menu menu = Menu(
        img: "assets/images/menuitemimg.png",
        amount: "120",
        catname: "In Frankies",
        itemname: "Cheese Burst Frankie",
        rate: "4.5");
    Menu menu1 = Menu(
        img: "assets/images/coffeeimg.png",
        amount: "80",
        catname: "In Coffee",
        itemname: "Cold Coffee",
        rate: "3.5");
    Menu menu2 = Menu(
        img: "assets/images/warpimg.png",
        amount: "100",
        catname: "In Frankies",
        itemname: " Frankie",
        rate: "4.5");
    Menu menu3 = Menu(
        img: "assets/images/menuitemimg.png",
        amount: "120",
        catname: "In Frankies",
        itemname: "Cheese Burst Frankie",
        rate: "4.5");
    Menu menu4 = Menu(
        img: "assets/images/warpimg.png",
        amount: "50",
        catname: "In Frankies",
        itemname: "Cheese Burst Frankie",
        rate: "4.5");

    menuList = [
      menu,
      menu1,
      menu2,
      menu3,
      menu4,
      menu,
      menu1,
      menu2,
      menu3,
      menu4,
      menu,
      menu1,
      menu2,
      menu3,
      menu4,
    ];

    Restaurants restaurants = Restaurants(
        name: "Freek It",
        address: "Prahalad nagar Cross Road Ahemdabad",
        cloeingtiming: "11 PM",
        openingtiming: "10 AM",
        costperperson: "250",
        distance: "15km .20min",
        foodcat: "coffee,wrap & Roll",
        foodtype: "Pure Veg",
        menu: menuList,
        vegimg: "assets/images/vegbanner.png",
        img: "assets/images/freakit.png",
        ratings: "4.1");

    Restaurants restaurants2 = Restaurants(
        name: "Egg Slut",
        address: "Prahalad nagar Cross Road Ahemdabad",
        cloeingtiming: "11 PM",
        openingtiming: "10 AM",
        costperperson: "250",
        distance: "10km .15min",
        foodcat: "coffee,wrap & Roll",
        foodtype: "Non Veg",
        img: "assets/images/egg.png",
        vegimg: "assets/images/nonvegbanner.png",
        menu: menuList,
        ratings: "4.2");

    restaurantsList = [restaurants, restaurants2, restaurants, restaurants2];
    restaurant = Restaurant(restaurants: restaurantsList);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        shadowColor: const Color(0x00ffffff),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.location_on_outlined,
              color: Color(0xFFF06573),
            ),
            Column(
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
                  style:
                      GoogleFonts.montserrat(color: Colors.black, fontSize: 14),
                ),
              ],
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 21),
            child: IconButton(
              iconSize: 24,
              icon: Image.asset(
                "assets/images/alert.png",
                height: 24,
                width: 24,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 8,
        shape: const CircularNotchedRectangle(),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          children: [
            IconButton(
                onPressed: () {},
                icon: Image.asset(
                  "assets/images/favicon.png",
                  height: 24,
                  width: 24,
                )),
            const SizedBox(
              width: 121,
            ),
            IconButton(
                onPressed: () {},
                icon: Image.asset(
                  "assets/images/accounticon.png",
                  height: 24,
                  width: 24,
                )),
            const SizedBox(
              width: 44,
            )
          ],
        ),
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(right: 21, left: 21, bottom: 25),
                child: SizedBox(
                  height: 45,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    child: TextField(
                      style: GoogleFonts.montserrat(
                          fontSize: 17, color: const Color(0xFF818181)),
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search),
                        label: Text(
                          "Restaurant ,name  or dish",
                          style: GoogleFonts.montserrat(
                              fontSize: 14,
                              color: const Color(0xFF818181),
                              fontWeight: FontWeight.w400),
                        ),
                        counterText: "",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 19, bottom: 16),
                child: Text(
                  "Order Popular One’s",
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w600, fontSize: 22),
                ),
              ),
              Container(
                height: 110,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.only(left: 19, bottom: 23),
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: catName.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(right: 0),
                    child: GestureDetector(
                      child: Container(
                        margin: const EdgeInsets.only(right: 25),
                        height: 75,
                        width: 65,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color(0xFFF06573), width: 2),
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(7),
                              topRight: Radius.circular(31),
                              bottomLeft: Radius.circular(31),
                              bottomRight: Radius.circular(7)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              caticon[index],
                              width: 41,
                              height: 41,
                            ),
                            Text(
                              catName[index],
                              style: GoogleFonts.montserrat(
                                  fontSize: 10, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(catName[index]),
                          duration: const Duration(milliseconds: 500),
                        ));
                      },
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: 40,
                  height: 3,
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFFF06573)),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 24, left: 19),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/offericon.png",
                      width: 24,
                      height: 24,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Offers",
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w600, fontSize: 21),
                    )
                  ],
                ),
              ),
              Container(
                height: 150,
                padding: const EdgeInsets.only(left: 19, top: 14),
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: offersicon.length,
                  itemBuilder: (context, index) => Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    elevation: 2,
                    child: Image.asset(
                      offersicon[index],
                      width: 110,
                      height: 130,
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 17, left: 20),
                child: Text(
                  "Featured Restaurant",
                  style: GoogleFonts.montserrat(
                      fontSize: 22, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                height: 195,
                padding: const EdgeInsets.only(top: 21, left: 19),
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: restaurant.restaurants.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(right: 25),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => MenuPage(
                                restaurant: restaurant.restaurants[index])));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: SizedBox(
                          height: 195,
                          width: 266,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 0,
                                left: 0,
                                right: 0,
                                child: Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          restaurant.restaurants[index].img,
                                        ),
                                      ),
                                      borderRadius: const BorderRadius.only(
                                          topRight: Radius.circular(15),
                                          topLeft: Radius.circular(15))),
                                  height: 120,
                                  width: 266,
                                ),
                              ),
                              Positioned(
                                top: 11,
                                right: 11,
                                child: Container(
                                  height: 24,
                                  width: 24,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: const Icon(
                                    Icons.favorite_border,
                                    color: Color(0xFFF06573),
                                    size: 15,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 82,
                                child: Image.asset(
                                  restaurant.restaurants[index].vegimg,
                                  height: 19,
                                  width: 72,
                                ),
                              ),
                              Positioned(
                                top: 83,
                                left: 5,
                                child: Text(
                                  restaurant.restaurants[index].foodtype,
                                  style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Positioned(
                                  top: 121,
                                  child: Container(
                                      padding: const EdgeInsets.only(
                                          right: 9, left: 9),
                                      height: 75,
                                      width: 266,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                restaurant
                                                    .restaurants[index].name,
                                                style: GoogleFonts.montserrat(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 20),
                                              ),
                                              Text(
                                                restaurant.restaurants[index]
                                                    .distance,
                                                style: GoogleFonts.montserrat(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 12),
                                              ),
                                              Text(
                                                "${restaurant.restaurants[index].costperperson} for one",
                                                style: GoogleFonts.montserrat(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 12),
                                              ),
                                            ],
                                          ),
                                          Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(3),
                                                color: const Color(0xFF55A899),
                                              ),
                                              transform:
                                                  Matrix4.translationValues(
                                                      0, -17.5, 0),
                                              width: 28,
                                              height: 12,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    restaurant
                                                        .restaurants[index]
                                                        .ratings,
                                                    style:
                                                        GoogleFonts.montserrat(
                                                            color: Colors.white,
                                                            fontSize: 8),
                                                  ),
                                                  const SizedBox(
                                                    width: 1,
                                                  ),
                                                  const Icon(
                                                    Icons.star,
                                                    size: 8,
                                                    color: Colors.white,
                                                  )
                                                ],
                                              ))
                                        ],
                                      )))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 17, left: 20),
                child: Text(
                  "Must Try",
                  style: GoogleFonts.montserrat(
                      fontSize: 22, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                height: 195,
                padding: const EdgeInsets.only(top: 21, left: 19),
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: restaurant.restaurants.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(right: 25),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => MenuPage(
                                restaurant: restaurant.restaurants[index])));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: SizedBox(
                          height: 195,
                          width: 266,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 0,
                                left: 0,
                                right: 0,
                                child: Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          restaurant.restaurants[index].img,
                                        ),
                                      ),
                                      borderRadius: const BorderRadius.only(
                                          topRight: Radius.circular(15),
                                          topLeft: Radius.circular(15))),
                                  height: 120,
                                  width: 266,
                                ),
                              ),
                              Positioned(
                                top: 11,
                                right: 11,
                                child: Container(
                                  height: 24,
                                  width: 24,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: const Icon(
                                    Icons.favorite_border,
                                    color: Color(0xFFF06573),
                                    size: 15,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 82,
                                child: Image.asset(
                                  restaurant.restaurants[index].vegimg,
                                  height: 19,
                                  width: 72,
                                ),
                              ),
                              Positioned(
                                top: 83,
                                left: 5,
                                child: Text(
                                  restaurant.restaurants[index].foodtype,
                                  style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Positioned(
                                  top: 121,
                                  child: Container(
                                      padding: const EdgeInsets.only(
                                          right: 9, left: 9),
                                      height: 75,
                                      width: 266,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                restaurant
                                                    .restaurants[index].name,
                                                style: GoogleFonts.montserrat(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 20),
                                              ),
                                              Text(
                                                restaurant.restaurants[index]
                                                    .distance,
                                                style: GoogleFonts.montserrat(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 12),
                                              ),
                                              Text(
                                                "${restaurant.restaurants[index].costperperson} for one",
                                                style: GoogleFonts.montserrat(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 12),
                                              ),
                                            ],
                                          ),
                                          Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(3),
                                                color: const Color(0xFF55A899),
                                              ),
                                              transform:
                                                  Matrix4.translationValues(
                                                      0, -17.5, 0),
                                              width: 28,
                                              height: 12,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    restaurant
                                                        .restaurants[index]
                                                        .ratings,
                                                    style:
                                                        GoogleFonts.montserrat(
                                                            color: Colors.white,
                                                            fontSize: 8),
                                                  ),
                                                  const SizedBox(
                                                    width: 1,
                                                  ),
                                                  const Icon(
                                                    Icons.star,
                                                    size: 8,
                                                    color: Colors.white,
                                                  )
                                                ],
                                              ))
                                        ],
                                      )))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Image.asset(
          "assets/images/fabicon.png",
          height: 15,
          width: 21,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
    );
  }
}