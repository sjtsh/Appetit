import 'package:appetit/DATABASE/Content.dart';
import 'package:appetit/DATABASE/GetRestaurants.dart';
import 'package:appetit/ProductDetail/Restaurant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Favorites.dart';
import 'Search.dart';

class SearchScreen extends StatefulWidget {

  final List products;
  final Function _setIndex;
  SearchScreen(this.products, this._setIndex);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<Widget> results = [];
  bool change = false;

  void _changeResults(String input) {
    results = [];
    for (int i = 0; i < widget.products.length; i++) {
      if (widget.products[i].data()['Name'] == input) {
        print("found");
        setState(() {
          results.add(GetRestaurants(i, widget._setIndex));
          change = true;
        });
      }
    }
  }

  Widget changeBody() {
    if (change) {
      return ListView(
        children: results,
      );
    } else {
      return Favorites(widget._setIndex);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top:30.0, right: 20, left: 20),
        child: Column(
          children: [
            SizedBox(
              height: 90,
            ),
            Search(_changeResults),
            Expanded(
              child: changeBody(),
            ),
          ],
        ));
  }
}
