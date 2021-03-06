import 'package:appetit/SearchScreen/SearchScreen.dart';
import 'package:appetit/Skeleton/SkeletonRestaurant.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GetSearch extends StatelessWidget {

  final Function _setIndex;
  final Function _setLogged;

  GetSearch(this._setIndex, this._setLogged);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance
          .collection("Products")
          .snapshots(),
      builder: (context, snapshot){
        if(snapshot.hasData){
          return SearchScreen(snapshot.data!.docs, _setIndex, _setLogged);
        }
        return SkeletonRestaurant();
      },
    );
  }
}
