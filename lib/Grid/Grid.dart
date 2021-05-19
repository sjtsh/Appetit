import 'package:appetit/Product/ProductSmall.dart';
import 'package:flutter/material.dart';

class Grid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ProductSmall(AssetImage("assets/hamburger.png")),
              ProductSmall(AssetImage("assets/hotdog.png")),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ProductSmall(AssetImage("assets/pizza.png")),
              ProductSmall(AssetImage("assets/icecream.png")),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ProductSmall(AssetImage("assets/noodles.png")),
              ProductSmall(AssetImage("assets/hamburger.png")),
            ],
          ),
        ),
      ],
    );
  }
}
