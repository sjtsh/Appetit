import 'package:appetit/DATABASE/GetRestaurants.dart';
import 'package:appetit/DialogueBox/DialogueBox.dart';
import 'package:appetit/ProductDetail/Header.dart';
import 'package:flutter/material.dart';

import 'Image.dart';

class ProductDetail extends StatefulWidget {
  final String img;
  final Function _setIndex;
  final Function _setLogged;

  ProductDetail(this.img, this._setIndex, this._setLogged);

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  String img = "";

  void setImage(String image) {
    setState(() {
      img = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: DialogueBoxState.isSelected[1]
            ? Color(0xff272727)
            : Color(0xffECFAFF),
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ListView(
                children: [
                  SizedBox(
                    height: 140,
                  ),
                  img=="" ? DetailImage(widget.img): DetailImage(img),
                  GetRestaurants(
                    6,
                    widget._setIndex,
                    widget._setLogged,
                    setImage,
                    condition: true,
                  ),
                  GetRestaurants(
                    5,
                    widget._setIndex,
                    widget._setLogged,
                    setImage,
                    condition: true,
                  ),
                  GetRestaurants(
                    4,
                    widget._setIndex,
                    widget._setLogged,
                    setImage,
                    condition: true,
                  ),
                ],
              ),
            ),
            Header(widget._setIndex, widget._setLogged),
          ],
        ),
      ),
    );
  }
}
