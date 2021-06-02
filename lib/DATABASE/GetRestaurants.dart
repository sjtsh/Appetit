import 'package:appetit/ProductDetail/Restaurant.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GetRestaurants extends StatelessWidget {

  final Function _setIndex;
  final bool condition;
  final int index;
  final Function setImage;
  final Function _setLogged;

  GetRestaurants(this.index, this._setIndex, this._setLogged, this.setImage, {this.condition = false});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance
          .collection("Products")
          .snapshots(),
      builder: (context, snapshot){
        if(snapshot.hasData){
          return Restaurant(snapshot.data!.docs, index, _setIndex, _setLogged, condition, setImage);
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
