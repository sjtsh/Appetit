import 'package:appetit/DialogueBox/DialogueBox.dart';
import 'package:flutter/material.dart';

class eSewaLoad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () {},
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
