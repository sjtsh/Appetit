import 'package:appetit/ProductDetail/Header.dart';
import 'package:flutter/material.dart';

import 'Image.dart';
import 'Restaurant.dart';

class ProductDetail extends StatelessWidget {
  final AssetImage img;

  ProductDetail(this.img);

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
                    Restaurant(6),
                    Restaurant(5),
                    Restaurant(4),
                  ],
                ),
              ),
              Header(),
            ],
          ),
        ),
    );
  }
}
