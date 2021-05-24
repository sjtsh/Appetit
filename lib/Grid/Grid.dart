import 'package:appetit/Product/ProductSmall.dart';
import 'package:flutter/material.dart';

class Grid extends StatelessWidget {

  final Function _setIndex;
  final Function _setLogged;

  Grid(this._setIndex, this._setLogged);

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
              ProductSmall(AssetImage("assets/hamburger.png"), _setIndex, _setLogged),
              ProductSmall(AssetImage("assets/hotdog.png"), _setIndex, _setLogged),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ProductSmall(AssetImage("assets/pizza.png"), _setIndex, _setLogged),
              ProductSmall(AssetImage("assets/icecream.png"), _setIndex, _setLogged),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ProductSmall(AssetImage("assets/noodles.png"), _setIndex, _setLogged),
              ProductSmall(AssetImage("assets/hamburger.png"), _setIndex, _setLogged),
            ],
          ),
        ),
      ],
    );
  }
}
