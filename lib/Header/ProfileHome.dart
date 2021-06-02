
import 'package:appetit/DialogueBox/DialogueBox.dart';
import 'package:flutter/material.dart';

import 'PressedProfile.dart';

class ProfileHome extends StatelessWidget {

  final Function _setLogged;
  final Function _setIndex;

  ProfileHome(this._setIndex, this._setLogged);

  @override
  Widget build(BuildContext context) {
      return MaterialButton(
        splashColor: Colors.black,
        onPressed: (){
          showDialog(
            context: context,
            builder: (_) => PressedProfile(_setIndex, _setLogged),
          );
        },
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: DialogueBoxState.isSelected[1] ? Color(0x99ecfaff) : Color(0x993CC1EB),
                boxShadow: const [
                  BoxShadow(
                      color: Color(0x66607D8B),
                      blurRadius: 10,
                      offset: Offset(0, 0),
                      spreadRadius: 8)
                ],
              ),
              child: SizedBox(
                height: 50,
                width: 50,
              ),
            ),
            Container(
              margin: EdgeInsets.all(6),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: DialogueBoxState.isSelected[1] ? Color(0xffecfaff) : Color(0xff3CC1EB),
              ),
              child: SizedBox(
                height: 35,
                width:35,
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage("icons/emo.png"),),
              ),
            ),
          ],
        // ),
    ),
      );
  }
}
