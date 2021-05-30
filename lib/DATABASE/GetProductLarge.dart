import 'package:appetit/Product/ProductLarge.dart';
import 'package:appetit/ProductDetail/Restaurant.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GetProductLarge extends StatelessWidget {

  final Function _setIndex;
  final Function _setLogged;

  GetProductLarge(this._setIndex, this._setLogged);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance
          .collection("Recommendation")
          .snapshots(),
      builder: (context, snapshot){
        if(snapshot.hasData){
          return ProductLarge(snapshot.data!.docs, _setIndex, _setLogged);
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}