import 'package:appetit/Product/ProductSmall.dart';
import 'package:flutter/material.dart';

class Grid extends StatelessWidget {

  final Function _setIndex;

  Grid(this._setIndex);

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
              ProductSmall(AssetImage("assets/hamburger.png"), _setIndex),
              ProductSmall(AssetImage("assets/hotdog.png"), _setIndex),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ProductSmall(AssetImage("assets/pizza.png"), _setIndex),
              ProductSmall(AssetImage("assets/icecream.png"), _setIndex),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ProductSmall(AssetImage("assets/noodles.png"), _setIndex),
              ProductSmall(AssetImage("assets/hamburger.png"), _setIndex),
            ],
          ),
        ),
      ],
    );
  }
}
