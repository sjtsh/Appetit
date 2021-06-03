import 'package:appetit/Product/ProductLarge.dart';
import 'package:appetit/Skeleton/SkeletonProductLarge.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GetProductLarge extends StatelessWidget {
  final Function _setIndex;
  final Function _setLogged;

  GetProductLarge(this._setIndex, this._setLogged);

  @override
  Widget build(BuildContext context) {
    CollectionReference products = FirebaseFirestore.instance.collection('Products');

    return FutureBuilder<DocumentSnapshot>(
      future: products.doc("p1").get(),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {

        if (snapshot.hasError) {
          return Text("Something went wrong");
        }

        if (snapshot.hasData && !snapshot.data!.exists) {
          return Text("Document does not exist");
        }

        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data = snapshot.data!.data() as Map<String, dynamic>;
          return ProductLarge("Who wants Pizza?", data['Price'], data["Image"], _setIndex, _setLogged);
        }

        return SkeletonProductLarge();
      },
    );
  }
}
