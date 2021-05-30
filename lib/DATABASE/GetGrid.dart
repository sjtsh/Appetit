import 'package:appetit/Grid/Grid.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GetGrid extends StatelessWidget {

  final Function _setIndex;
  final Function _setLogged;

  GetGrid(this._setIndex, this._setLogged);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance
          .collection("Products")
          .snapshots(),
      builder: (context, snapshot){
        if(snapshot.hasData){
          return Grid(snapshot.data!.docs, _setIndex, _setLogged);
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
