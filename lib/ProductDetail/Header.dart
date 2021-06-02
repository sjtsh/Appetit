
import 'package:appetit/DialogueBox/DialogueBox.dart';
import 'package:appetit/Header/HeaderPartition.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {

  final Function _setIndex;
  final Function _setLogged;
  Header(this._setIndex, this._setLogged);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        HeaderPartition(_setIndex, _setLogged),
        Positioned(
          height: 50,
          left: 30,
          top: 30,
          child: MaterialButton(
            splashColor: null,
            onPressed: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios_rounded,
              color: DialogueBoxState.isSelected[1] ? Colors.white.withOpacity(0.5) : Colors.black.withOpacity(0.5),
            ),
          ),
        ),
      ],
    );
  }
}
