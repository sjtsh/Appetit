import 'package:appetit/Skeleton/SkeletonRestaurant.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'GetRestaurants.dart';

class GetFavourites extends StatelessWidget {
  final String productID;
  final Function _setIndex;
  final Function setImage;
  final Function _setLogged;

  GetFavourites(this.productID, this._setIndex, this._setLogged, this.setImage);

  @override
  Widget build(BuildContext context) {

    return StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection("Products")
            .where("ProductID", isEqualTo: productID)
            .snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text('Something went wrong');
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return SkeletonRestaurant();
          }
          return GetRestaurants(
              snapshot.data!.docs[0], _setIndex, _setLogged, (String i) {});
        });
  }
}
