import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


var status = true;

var images = [
  AssetImage("assets/hamburger.png"),
  AssetImage("assets/hotdog.png"),
  AssetImage("assets/icecream.png"),
  AssetImage("assets/noodles.png"),
  AssetImage("assets/pizza.png"),
  AssetImage("assets/pizza1.png"),
  AssetImage("assets/pizza2.png"),
];
var names = [
  "Ham Burger",
  "Hot Dog",
  "Ice Cream",
  "Noodles",
  "Pizza",
  "Cheese Pizza",
  "Sausage Pizza"
];
var prices = [
  "\$7",
  "\$3",
  "\$10",
  "\$2",
  "\$12",
  "\$14",
  "\$21",
];
var restaurants = [
  "Attica",
  "Trisara",
  "Orana",
  "Quay",
  "Laura",
  "Attica",
  "Trisara",
];
var times = ["12min", "16min", "9min", "25min", "11min", "12min", "16min"];
var pizzaImg = [
  AssetImage("assets/pizza.png"),
  AssetImage("assets/pizza1.png"),
  AssetImage("assets/pizza2.png"),
  AssetImage("assets/pizza3.png"),
  AssetImage("assets/pizza1.png"),
  AssetImage("assets/pizza2.png"),
];
var favourites = [6, 1, 2, 3, 5];
var balance = "\$893.23";

var locations = [
  LatLng(37.416210, -122.079219),
  LatLng(37.419205, -122.077777),
  LatLng(37.420806, -122.093301),
  LatLng(27.671915, 85.428327),
  LatLng(27.671825, 85.428606),
  LatLng(27.671628, 85.428301),
  LatLng(27.670856, 85.428649),
  LatLng(27.636968, 85.413761),
  LatLng(27.644188, 85.406240),
];
var locationsID = [
  "Appetit1 -Starbucks",
  "Appetit2 -Trisara",
  "Appetit3 -Attica",
  "Appetit4 -Quay",
  "Appetit5 -Orana",
  "Appetit6 -Alucha",
  "Appetit7 -Garuda",
  "Appetit8 -Attica",
  "Appetit9 -Ramit KitchenLand"
];
var rp = 460.0;
List<BoxShadow> boxShadowProgress = const [
  BoxShadow(
      color: Color(0x40000000),
      blurRadius: 10,
      offset: Offset(0, 0),
      spreadRadius: 10
      )
];

List<BoxShadow> boxShadowProfile = const [
  BoxShadow(
      color: Color(0x66607D8B),
      blurRadius: 10,
      offset: Offset(0, 0),
      spreadRadius: 8)
];

List<BoxShadow> boxShadowPrimary = const [
  BoxShadow(color: Color(0xff000000), blurRadius: 10, offset: Offset(0, 10))
];

List<BoxShadow> boxShadowSecondary = const [
  BoxShadow(
    color: Color(0xff000000),
  ),
  BoxShadow(
    color: Color(0xff272727),
    spreadRadius: -12.0,
    blurRadius: 12.0,
  ),
];

Gradient linearGradientRep = LinearGradient(
  colors: [
    Color(0xffffdb7d),
    Color(0xff00d1ff),
  ],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);

Gradient linearGradientTrack = LinearGradient(
  colors: [
    Color(0xff00D1FF),
    Color(0xffFA00FF),
  ],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);

String timeRemaining = "12:02 min";

bool delivered = true;

String delivering = "Pizza";