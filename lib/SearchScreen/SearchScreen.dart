import 'package:appetit/DATABASE/GetRestaurants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Favorites.dart';
import 'Search.dart';

class SearchScreen extends StatefulWidget {
  final List products;
  final Function _setIndex;
  final Function _setLogged;

  SearchScreen(this.products, this._setIndex, this._setLogged);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<Widget> results = [];
  bool change = false;

  Widget changeBody() {
    if (change) {
      return ListView(
        children: results,
      );
    } else {
      return Favorites(widget._setIndex, widget._setLogged);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 30.0, right: 20, left: 20),
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


  void _changeResults(String input) {
    results = [];
    for (int i = 1; i <= widget.products.length; i++) {
      if ((input).length == 1) {
        if (widget.products[i].data()['Name'].substring(0,1).toLowerCase() == input.toLowerCase() || widget.products[i].data()['CategoryID'].substring(0,1).toLowerCase() == input.toLowerCase()) {
          setState(() {
            results.add(GetRestaurants(widget.products[i], widget._setIndex,
                widget._setLogged, (String i) {}));
            change = true;
          });
        }
      }else if ((input).length == 2) {
        if (widget.products[i].data()['Name'].substring(0,2).toLowerCase() == input.toLowerCase() || widget.products[i].data()['CategoryID'].substring(0,2).toLowerCase() == input.toLowerCase()) {
          setState(() {
            results.add(GetRestaurants(widget.products[i], widget._setIndex,
                widget._setLogged, (String i) {}));
            change = true;
          });
        }
      }else if ((input).length == 3) {
        if (widget.products[i].data()['Name'].substring(0,3).toLowerCase() == input.toLowerCase() || widget.products[i].data()['CategoryID'].substring(0,3).toLowerCase() == input.toLowerCase()) {
          setState(() {
            results.add(GetRestaurants(widget.products[i], widget._setIndex,
                widget._setLogged, (String i) {}));
            change = true;
          });
        }
      }else if ((input).length == 4) {
        if (widget.products[i].data()['Name'].substring(0,4).toLowerCase() == input.toLowerCase() || widget.products[i].data()['CategoryID'].substring(0,4).toLowerCase() == input.toLowerCase()) {
          setState(() {
            results.add(GetRestaurants(widget.products[i], widget._setIndex,
                widget._setLogged, (String i) {}));
            change = true;
          });
        }
      }else if ((input).length == 5) {
        if (widget.products[i].data()['Name'].substring(0,5).toLowerCase() == input.toLowerCase() || widget.products[i].data()['CategoryID'].substring(0,5).toLowerCase() == input.toLowerCase()) {
          setState(() {
            results.add(GetRestaurants(widget.products[i], widget._setIndex,
                widget._setLogged, (String i) {}));
            change = true;
          });
        }
      }else if(widget.products[i].data()['Name'].toLowerCase() == input.toLowerCase() || widget.products[i].data()['CategoryID'].toLowerCase() == input.toLowerCase()) {
        print("found");
        setState(() {
          results.add(GetRestaurants(widget.products[i], widget._setIndex,
              widget._setLogged, (String i) {}));
          change = true;
        });
      }
    }
  }

}
