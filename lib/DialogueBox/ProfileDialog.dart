
import 'package:appetit/DATABASE/Content.dart';
import 'package:appetit/Reputation/ProfileRep.dart';
import 'package:flutter/material.dart';

import 'DialogueBox.dart';

class ProfileDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          ProfileRep(AssetImage("icons/emo.png"), DialogueBoxState.isSelected[1] ? Color(0xffecfaff) : Color(0xff3CC1EB)),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "$balance",
                  textAlign: TextAlign.left,
                  style: TextStyle(color: DialogueBoxState.isSelected[1] ? Colors.white : Colors.black),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  "$rp points",
                  textAlign: TextAlign.left,
                  style: TextStyle(color: DialogueBoxState.isSelected[1] ? Colors.white.withOpacity(0.5) : Colors.black.withOpacity(0.5)),
                ),
              ],
            ),
          )
        ],
      );
  }
}
