import 'package:appetit/DATABASE/Content.dart';
import 'package:appetit/DialogueBox/DialogueBox.dart';
import 'package:appetit/File%20Handling/ReadWrite.dart';
import 'package:appetit/NavBar/NavBar.dart';
import 'package:flutter/material.dart';

class eSewaLoad extends StatelessWidget {

  final Function _setIndex;

  eSewaLoad(this._setIndex);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onPressed: () {
        ReadWrite readWrite = ReadWrite();
        balance += 100;
        readWrite.writeContents((balance+100).toStringAsFixed(2), rp.toString(), totalRP.toString());
        Navigator.pop(context);
        NavBarState.onItemTapped(1);
        _setIndex(1);
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
            color: Color(0xff00A743),
          ),
          margin: EdgeInsets.only(top: 20),
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: Text(
            "Load Money",
            style: TextStyle(
              color: Colors.white, fontSize: 18,),
          ),
        ));
  }
}
