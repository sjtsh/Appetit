import 'package:appetit/DATABASE/Content.dart';
import 'package:appetit/LoadMoney/eSewaLoad.dart';
import 'package:appetit/NavBar/NavBar.dart';
import 'package:appetit/Track/Timer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'DialogueBox.dart';

class BalanceDialog extends StatefulWidget {

  final DocumentSnapshot products;
  final Function _setIndex;
  final bool condition;

  BalanceDialog(this.products, this._setIndex, this.condition);

  @override
  _BalanceDialogState createState() => _BalanceDialogState();
}

class _BalanceDialogState extends State<BalanceDialog> {

  @override
  Widget build(BuildContext context) {
    return Column(
    children: [
      Text(
        "Insufficient Balance",
        textAlign: TextAlign.left,
        style: TextStyle(color: DialogueBoxState.isSelected[1] ? Colors.white : Colors.black, fontSize: 20),
      ),
      eSewaLoad(widget._setIndex),
      MaterialButton(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onPressed: () {
            if (widget.condition) {
              Navigator.pop(context);
            }
            delivered = false;
            payStatus = "UNPAID!";
            newCost = (widget.products.data() as dynamic).data()['Price'];
            delivering = (widget.products.data() as dynamic).data()['Name'];
            NavBarState.onItemTapped(0);
            TimerState.stopTimer();
            widget._setIndex(0);
            },
          child: Container(
            decoration: BoxDecoration(
              boxShadow: DialogueBoxState.isSelected[1]
                  ? const [
                BoxShadow(
                    color: Color(0xff000000), blurRadius: 10, offset: Offset(0, 10))
              ]
                  : const [
                BoxShadow(
                    color: Color(0x40000000), blurRadius: 10, offset: Offset(0, 10))
              ],
              borderRadius: BorderRadius.circular(20),
              color: Color(0xff2E434B),
            ),
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 12),
            child: Text(
              "Cash On Delivery",
              style: TextStyle(
                color: Colors.white, fontSize: 18,),
            ),
          ))
    ],
    );
  }
}
