import 'package:appetit/DATABASE/Content.dart';
import 'package:appetit/DATABASE/GetProductDetail.dart';
import 'package:appetit/DialogueBox/DialogueBox.dart';
import 'package:appetit/File%20Handling/Favorites.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'WantButton.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Restaurant extends StatefulWidget {
  final DocumentSnapshot product;
  final DocumentSnapshot restaurant;
  final Function _setIndex;
  final bool condition;
  final Function setImage;
  final Function _setLogged;

  Restaurant(this.product,
      this.restaurant,
      this._setIndex,
      this._setLogged,
      this.condition,
      this.setImage,);

  @override
  State<Restaurant> createState() => _RestaurantState();
}

class _RestaurantState extends State<Restaurant> {
  @override
  Widget build(BuildContext context) {
    bool favStatus = false;

    for (int i = 0; i < favourites.length; i++) {
      if ((widget.product.data() as dynamic)['ProductID'] == favourites[i]) {
        favStatus = true;
      }
      print(favourites);
    }

    changeFav() {
      if (favStatus == false) {
        favourites.add((widget.product.data() as dynamic)['ProductID']);
      }
      if (favStatus == true) {
        favourites.remove((widget.product.data() as dynamic)['ProductID']);
      }
      Favorites favorites = Favorites();
      favorites.writeContents(favourites);
      setState(() {
        favStatus = !favStatus;
      });
    }

    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: MaterialButton(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onPressed: () {
          if (widget.condition) {
            widget.setImage((widget.product.data() as dynamic)['Image']);
          } else {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        GetProductDetail(
                            (widget.product.data() as dynamic)['CategoryID'],
                            (widget.product.data() as dynamic)['Image'],
                            widget._setIndex,
                            widget._setLogged)));
          }
        },
        child: Slidable(
          closeOnScroll: true,
          secondaryActions: [
          MaterialButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onPressed: changeFav,
            child: Container(
              color: DialogueBoxState.isSelected[1]
                  ? Color(0xff272727)
                  : Color(0xffffffff),
              child: favStatus
                  ? Icon(Icons.favorite, color: DialogueBoxState.isSelected[1] ? Colors.white: Colors.black,)
                  : Icon(Icons.favorite_border, color: DialogueBoxState.isSelected[1] ? Colors.white: Colors.black,),
            ),
          ),],
          actionPane: SlidableStrechActionPane(),
          actionExtentRatio: 0.2,
          child: Container(
            height: 120,
            decoration: BoxDecoration(
              color: DialogueBoxState.isSelected[1]
                  ? Color(0xff272727)
                  : Color(0xffffffff),
              borderRadius: BorderRadius.all(Radius.circular(20)),
              border: DialogueBoxState.isSelected[1]
                  ? Border.all(color: Colors.black, width: 1)
                  : Border.all(color: Colors.white),
              boxShadow: DialogueBoxState.isSelected[1]
                  ? const [
                BoxShadow(
                    color: Color(0xff000000),
                    blurRadius: 10,
                    offset: Offset(0, 10))
              ]
                  : const [
                BoxShadow(
                    color: Color(0x40000000),
                    blurRadius: 10,
                    offset: Offset(0, 10))
              ],
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Image.network(
                    (widget.product.data() as dynamic)['Image'],
                    width: 70,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        (widget.restaurant.data() as dynamic)['Name'],
                        style: TextStyle(
                          color: DialogueBoxState.isSelected[1]
                              ? Colors.white
                              : Colors.black,
                          fontSize: 20,
                          fontFamily: "ABeeZee",
                          decoration: TextDecoration.none,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 5),
                        child: Text(
                          "\$" +
                              (widget.product.data() as dynamic)['Price']
                                  .toString(),
                          style: TextStyle(
                            color: DialogueBoxState.isSelected[1]
                                ? Colors.white.withOpacity(0.5)
                                : Colors.black.withOpacity(0.5),
                            fontSize: 15,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 5),
                        child: Text(
                          (widget.restaurant.data() as dynamic)['Time']
                              .toString() +
                              "min",
                          style: TextStyle(
                            color: DialogueBoxState.isSelected[1]
                                ? Colors.white.withOpacity(0.5)
                                : Colors.black.withOpacity(0.5),
                            fontSize: 15,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(child: Container()),
                WantButton(widget.product, widget._setIndex, widget.condition),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
