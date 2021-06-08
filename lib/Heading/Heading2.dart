
import 'package:appetit/DialogueBox/DialogueBox.dart';
import 'package:appetit/MapScreen/MapScreen.dart';
import 'package:flutter/material.dart';

class Heading2 extends StatelessWidget {

  final Function _setIndex;
  final Function _setLogged;
  Heading2(this._setIndex, this._setLogged);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Text(
            "Categories",
            style: TextStyle(
              color: DialogueBoxState.isSelected[1] ? Colors.white : Colors.black,
              fontSize: 20,
            ),
          ),
          Expanded(
            child: Container(),
          ),
          MaterialButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MapScreen(_setIndex, _setLogged)),
              );
            },
            child: Icon(
              Icons.location_on,
              color: DialogueBoxState.isSelected[1] ? Colors.white : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
