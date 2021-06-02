import 'package:appetit/DialogueBox/BalanceDialog.dart';
import 'package:appetit/DialogueBox/DialogueBox.dart';
import 'package:appetit/NavBar/NavBar.dart';
import 'package:appetit/ProductDetail/ProductDetail.dart';
import 'package:appetit/Track/Timer.dart';
import 'package:flutter/material.dart';

import 'package:appetit/DATABASE/Content.dart';

import 'PressedWant.dart';
import 'WantButton.dart';

class Restaurant extends StatelessWidget {
  final List products;
  final Function _setIndex;
  final bool condition;
  final int index;
  final Function setImage;
  final Function _setLogged;

  Restaurant(this.products, this.index, this._setIndex, this._setLogged,
      this.condition, this.setImage);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: MaterialButton(
        onPressed: () {
          if (condition) {
            setImage(products[index].data()['Image']);
          } else {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ProductDetail(
                        products[index].data()['Image'],
                        _setIndex,
                        _setLogged)));
          }
        },
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
                  products[index].data()['Image'],
                  width: 100,
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
                      restaurants[index],
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
                        "\$" + products[index].data()['Price'].toString(),
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
                        times[index],
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
              WantButton(products, index, _setIndex, condition),
            ],
          ),
        ),
      ),
    );
  }
}
