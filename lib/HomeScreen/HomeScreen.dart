import 'package:appetit/Grid/Grid.dart';
import 'package:appetit/Heading/Heading1.dart';
import 'package:appetit/Heading/Heading2.dart';
import 'package:appetit/Product/ProductLarge.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  final Function _setIndex;
  final Function _setLogged;

  HomeScreen(this._setIndex, this._setLogged);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: ListView(
        children: [
          SizedBox(
          height: 140,
          ),
          Heading1(),
          ProductLarge(_setIndex, _setLogged),
          Heading2(_setLogged),
          Grid(_setIndex, _setLogged),
        ],
      ),
    );
  }
}
