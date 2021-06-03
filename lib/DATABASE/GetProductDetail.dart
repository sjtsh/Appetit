import 'package:appetit/ProductDetail/ProductDetail.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GetProductDetail extends StatelessWidget {
  final String category;
  final Function _setIndex;
  final Function _setLogged;
  final String img;

  GetProductDetail(this.category, this.img, this._setIndex, this._setLogged);

  //

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance
          .collection('Products')
          .where("CategoryID", isEqualTo: category)
          .snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        return ProductDetail(snapshot, img, _setIndex, _setLogged);
      },
    );
  }
}
