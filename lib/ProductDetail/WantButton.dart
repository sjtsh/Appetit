import 'package:appetit/DATABASE/Content.dart';
import 'package:appetit/DialogueBox/DialogueBox.dart';
import 'package:appetit/File%20Handling/ReadWrite.dart';
import 'package:appetit/NavBar/NavBar.dart';
import 'package:appetit/Track/Timer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'PressedWant.dart';

class WantButton extends StatelessWidget {
  final DocumentSnapshot products;
  final bool condition;
  final Function _setIndex;
  final bool paid;

  WantButton(this.products, this._setIndex, this.condition,
      {this.paid = true});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Container(
        decoration: BoxDecoration(
            color: DialogueBoxState.isSelected[1]
                ? Colors.white.withOpacity(0.1)
                : Colors.black.withOpacity(0.1),
            border: DialogueBoxState.isSelected[1]
                ? Border.all(color: Colors.white, width: 1)
                : Border.all(color: Colors.black),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: MaterialButton(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onPressed: () {
            if(balance < (products.data() as dynamic)['Price']){
              showDialog(
                context: context,
                builder: (_) => PressedWant(products, _setIndex, condition),
              );
            }else{
              if (condition) {
                Navigator.pop(context);
              }
              delivered = false;
              newCost = (products.data() as dynamic)['Price'];
              newRP = ((products.data() as dynamic)['Price'] * 0.2).round() * 10;
              rp += newRP;
              totalRP += newRP;
              payStatus = "PAID!";
              delivering = (products.data() as dynamic)['Name'];
              NavBarState.onItemTapped(0);
              balance -= (products.data() as dynamic)['Price'];
              TimerState.stopTimer();
              if(rp >= 1000){
                rp -= 1000;
                balance += 11;
              }
              ReadWrite readWrite = ReadWrite();
              readWrite.writeContents(balance.toStringAsFixed(2), rp.toString(), totalRP.toString());
              _setIndex(0);
            }
          },
          child: Text(
            "Want",
            style: TextStyle(
              color: DialogueBoxState.isSelected[1]
                  ? Colors.white
                  : Colors.black,
              fontFamily: "ABeeZee",
              fontSize: 17,
            ),
          ),
        ),
      ),
    );
  }
}
