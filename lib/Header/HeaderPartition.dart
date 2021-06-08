
import 'package:appetit/DATABASE/Content.dart';
import 'package:appetit/DialogueBox/DialogueBox.dart';
import 'package:flutter/material.dart';

import 'ProfileHome.dart';

class HeaderPartition extends StatelessWidget {

  final Function _setLogged;
  final Function _setIndex;
  HeaderPartition(this._setIndex, this._setLogged);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.all(20),
          height: 70,
          width: double.infinity,
          decoration: BoxDecoration(
              color: DialogueBoxState.isSelected[1] ? Color(0xcc272727) : Color(0xccECFAFF),
              borderRadius: BorderRadius.all(Radius.circular(20)),
              // border: Border.all(color: Colors.white)
          ),
        ),
        Positioned(
          height: 50,
          right: 10,
          top: 30,
          child: ProfileHome(_setIndex, _setLogged),
        ),
        Positioned(
          top: 50,
          right: 90,
          child: Text(
            "\$" + (balance).toString(),
            style: TextStyle(
              color: DialogueBoxState.isSelected[1] ? Colors.white : Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              decoration: TextDecoration.none,
              fontFamily: "ABeeZee",
            ),
          ),
        ),
      ],
    );
  }
}
