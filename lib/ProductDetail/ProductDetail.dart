import 'package:appetit/DATABASE/GetRestaurants.dart';
import 'package:appetit/ProductDetail/Header.dart';
import 'package:flutter/material.dart';

import 'Image.dart';
import 'Restaurant.dart';

class ProductDetail extends StatelessWidget {
  final String img;
  final Function _setIndex;
  final Function _setLogged;

  ProductDetail(this.img, this._setIndex, this._setLogged);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Color(0xff272727),
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ListView(
                children: [
                  SizedBox(
                    height: 140,
                  ),
                  DetailImage(img),
                  GetRestaurants(
                    6,
                    _setIndex,
                    condition: true,
                  ),
                  GetRestaurants(
                    5,
                    _setIndex,
                    condition: true,
                  ),
                  GetRestaurants(
                    4,
                    _setIndex,
                    condition: true,
                  ),
                ],
              ),
            ),
            Header(_setLogged),
          ],
        ),
      ),
    );
  }
}
