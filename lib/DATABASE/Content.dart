import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

var loggedIn = false;

var status = true;
final personal = FirebaseFirestore.instance.collection("Personal");
final productsContent = FirebaseFirestore.instance.collection("Products");
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

var favourites = [6, 1, 2, 3, 5];
var balance = 100.00;

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
List<BoxShadow> boxShadowConsist = const [
  BoxShadow(
      color: Color(0x66000000),
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

int timeRemaining = 6;

bool delivered = true;
var newCost = 0;
var newRP = 0;
String delivering = "Pizza";