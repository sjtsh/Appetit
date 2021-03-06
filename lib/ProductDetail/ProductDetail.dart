import 'package:appetit/DATABASE/GetRestaurants.dart';
import 'package:appetit/DialogueBox/DialogueBox.dart';
import 'package:appetit/ProductDetail/Header.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'Image.dart';

class ProductDetail extends StatefulWidget {
  final AsyncSnapshot<QuerySnapshot> snapshot;
  final Function _setIndex;
  final Function _setLogged;
  final String img;

  ProductDetail(this.snapshot, this.img, this._setIndex, this._setLogged);

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {

  bool condition = true;
  var img;

  void setImage(String image) {
    setState(() {
      img = image;
      condition = false;
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
            Column(
              children: [
                SizedBox(
                  height: 140,
                ),
                // DetailImage(img),
                condition == true ? DetailImage(widget.img): DetailImage(img),
                Expanded(
                  child: ListView(
                    children: widget.snapshot.data!.docs
                        .map((DocumentSnapshot document) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: GetRestaurants(
                          document,
                          widget._setIndex,
                          widget._setLogged,
                          setImage,
                          condition: true,
                          ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
            Header(widget._setIndex, widget._setLogged),
          ],
        ),
      ),
    );
  }
}
