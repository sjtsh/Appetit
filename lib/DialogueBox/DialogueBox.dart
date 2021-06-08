
import 'package:appetit/File%20Handling/Dark.dart';
import 'package:appetit/File%20Handling/Log.dart';
import 'package:appetit/LoadMoney/eSewaLoad.dart';
import 'package:appetit/NavBar/NavBar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'ProfileDialog.dart';

class DialogueBox extends StatefulWidget {

  final Function _setLogged;
  final Function _setIndex;

  DialogueBox(this._setIndex, this._setLogged);

  @override
  DialogueBoxState createState() => DialogueBoxState();
}

class DialogueBoxState extends State<DialogueBox> {
  static var isSelected = [false, true];

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
          isSelected: isSelected,
          selectedColor: DialogueBoxState.isSelected[1] ? Colors.white : Colors.black,
          selectedBorderColor: DialogueBoxState.isSelected[1] ? Colors.white : Colors.black,
          onPressed: (int i) {
            Dark dark = Dark();
            setState(() {
              if (i==0) {
                isSelected = [true, false];
                dark.writeContents(false);
              }else{
                isSelected = [false, true];
                dark.writeContents(true);
              }
              widget._setIndex(1);
              NavBarState.onItemTapped(1);
            });
          },
          borderColor: DialogueBoxState.isSelected[1] ? Colors.white : Colors.black,
          borderRadius: BorderRadius.circular(20),
          constraints: BoxConstraints.tightFor(width: 80, height: 50),
        ),
        eSewaLoad(widget._setIndex),
        MaterialButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onPressed: () async{
                await FirebaseAuth.instance.signOut();
                widget._setLogged(false);
                Log log = Log();
                log.writeContents(false);
              },
            child: Container(
              width: 160,
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
