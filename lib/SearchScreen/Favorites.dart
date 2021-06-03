
import 'package:appetit/DATABASE/Content.dart';
import 'package:appetit/DATABASE/GetFavourites.dart';
import 'package:appetit/DialogueBox/DialogueBox.dart';
import 'package:flutter/material.dart';

class Favorites extends StatelessWidget {

  final Function _setIndex;
  final Function _setLogged;

  Favorites(this._setIndex, this._setLogged);

  List<Widget> _favouriteResult(){
    List<Widget> results = [];
    for(int i=0; i<favourites.length; i++){
      results.add(GetFavourites(favourites[i], _setIndex, _setLogged, (String i){}));
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
                    color: DialogueBoxState.isSelected[1] ? Colors.white : Colors.black,
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
            SizedBox(height: 10,),
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
