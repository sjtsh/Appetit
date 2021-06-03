import 'package:appetit/ProductDetail/Restaurant.dart';
import 'package:appetit/Skeleton/SkeletonRestaurant.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GetRestaurants extends StatelessWidget {
  final DocumentSnapshot product;
  final Function _setIndex;
  final bool condition;
  final Function setImage;
  final Function _setLogged;

  GetRestaurants(this.product, this._setIndex, this._setLogged, this.setImage,
      {this.condition = false});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection("Restaurants")
            .where("RestaurantID", isEqualTo: (product.data() as dynamic)["RestaurantID"])
            .snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text('Something went wrong');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return SkeletonRestaurant();
          }
          return Restaurant(
              product, snapshot.data!.docs[0], _setIndex, _setLogged, condition, setImage);
        });
  }
}
