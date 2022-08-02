import 'menu.dart';

class Restaurants {
  Restaurants({
    required this.name,
    required  this.foodtype,
    required  this.distance,
    required  this.costperperson,
    required  this.ratings,
    required  this.openingtiming,
    required  this.cloeingtiming,
    required  this.foodcat,
    required  this.address,
    required this.img,
    required this.vegimg,
    required  this.menu,
  });


  String name;
  String foodtype;
  String distance;
  String costperperson;
  String ratings;
  String openingtiming;
  String cloeingtiming;
  String foodcat;
  String address;
  String img;
  String vegimg;
  List<Menu> menu;



}
