import 'package:appetit/DATABASE/Content.dart';
import 'package:appetit/ProductDetail/Restaurant.dart';
import 'package:flutter/material.dart';

class Favorites extends StatelessWidget {

  final Function _setIndex;

  Favorites(this._setIndex);

  List<Widget> _favouriteResult(){
    List<Widget> results = [];
    for(int i=0; i<favourites.length; i++){
      results.add(Restaurant(favourites[i], _setIndex));
    }
    return results;
  }

  @override
  Widget build(BuildContext context) {
    return
      Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Favorites",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.redAccent,
                ),
              ],
            ),
            Expanded(
              child: ListView(
              children: _favouriteResult(),
              ),
            ),
          ],
        ),
      );
  }
}
