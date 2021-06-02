import 'package:appetit/Product/ProductLarge.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GetProductLarge extends StatelessWidget {
  final Function _setIndex;
  final Function _setLogged;

  GetProductLarge(this._setIndex, this._setLogged);

  @override
  Widget build(BuildContext context) {
    var recommendation;
    var product;
    FirebaseFirestore.instance
        .collection("Recommendation")
        .doc("r1")
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        recommendation = documentSnapshot.data();
      }
    });
    FirebaseFirestore.instance
        .collection("Products")
        .doc(recommendation["ProductID"])
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        product = documentSnapshot.data();
      }
    });
    return ProductLarge(recommendation["Caption"], product!["Price"],
        product["Image"], _setIndex, _setLogged);
  }
}
