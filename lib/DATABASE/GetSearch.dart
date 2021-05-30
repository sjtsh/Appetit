import 'package:appetit/SearchScreen/SearchScreen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GetSearch extends StatelessWidget {

  final Function _setIndex;
  GetSearch(this._setIndex);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance
          .collection("Products")
          .snapshots(),
      builder: (context, snapshot){
        if(snapshot.hasData){
          return SearchScreen(snapshot.data!.docs, _setIndex);
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
