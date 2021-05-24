import 'package:appetit/DATABASE/Content.dart';
import 'package:flutter/material.dart';

import 'PressedProfile.dart';

class ProfileHome extends StatelessWidget {

  final Function _setLogged;

  ProfileHome(this._setLogged);

  @override
  Widget build(BuildContext context) {
      return MaterialButton(
        splashColor: Colors.black,
        onPressed: (){
          showDialog(
            context: context,
            builder: (_) => PressedProfile(_setLogged),
          );
        },
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffECFAFF).withOpacity(0.6),
                boxShadow: boxShadowProfile,
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
                color: Color(0xffECFAFF),
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
