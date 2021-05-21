import 'package:appetit/DATABASE/Content.dart';
import 'package:appetit/Reputation/ProfileRep.dart';
import 'package:flutter/material.dart';

import 'ProfileDialog.dart';

class DialogueBox extends StatefulWidget {
  @override
  _DialogueBoxState createState() => _DialogueBoxState();
}

class _DialogueBoxState extends State<DialogueBox> {
  var _isSelected = [false, true];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileDialog(),
        SizedBox(
          height: 30,
        ),
        ToggleButtons(
          children: [
            Icon(
              Icons.wb_sunny,
            ),
            Icon(
              Icons.nightlight_round,
            ),
          ],
          color: Colors.blueGrey,
          isSelected: _isSelected,
          selectedColor: Colors.white,
          selectedBorderColor: Colors.white,
          onPressed: (int i) {},
          borderColor: Colors.white,
          borderRadius: BorderRadius.circular(20),
          constraints: BoxConstraints.tightFor(width: 80, height: 50),
        ),
        MaterialButton(
            onPressed: () {},
            child: Container(
            decoration: BoxDecoration(
              boxShadow: boxShadowPrimary,
              borderRadius: BorderRadius.circular(20),
              color: Color(0xff00A743),
            ),
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: Text(
                "Load Money",
                style: TextStyle(
                color: Colors.white, fontSize: 18,),
              ),
            )),
        MaterialButton(
            onPressed: () {},
            child: Container(
              width: 160,
              decoration: BoxDecoration(
                boxShadow: boxShadowPrimary,
                borderRadius: BorderRadius.circular(20),
                color: Color(0xff2E434B),
              ),
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Center(
                child: Text(
                  "Sign Out",
                  style: TextStyle(
                    color: Colors.white, fontSize: 18,),
                ),
              ),
            )),
        Expanded(child: Container()),
      ],
    );
  }
}
