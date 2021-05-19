import 'package:appetit/DATABASE/Content.dart';
import 'package:appetit/ProductDetail/Restaurant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Favorites.dart';
import 'Results.dart';
import 'Search.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<Widget> results = [];
  bool change = false;

  void _changeResults(String input) {
    results = [];
    for (int i = 0; i < names.length; i++) {
      if (names[i] == input) {
        print("found");
        setState(() {
          results.add(Restaurant(i));
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
      return Favorites();
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
