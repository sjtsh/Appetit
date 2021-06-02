
import 'package:appetit/DATABASE/Content.dart';
import 'package:appetit/DialogueBox/DialogueBox.dart';
import 'package:flutter/material.dart';

import 'Labels.dart';
import 'ProfileRep.dart';
import 'ReputationButton.dart';

class ReputationCard extends StatelessWidget {

  final Function _setIndex;

  ReputationCard(this._setIndex);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 40),
      height: 280,
      width: double.infinity,
      decoration: BoxDecoration(
          color: DialogueBoxState.isSelected[1] ? Color(0xff272727) : Color(0xffffffff),
          boxShadow: DialogueBoxState.isSelected[1]
              ? const [
            BoxShadow(
                color: Color(0xff000000), blurRadius: 10, offset: Offset(0, 10))
          ]
              : const [
            BoxShadow(
                color: Color(0x40000000), blurRadius: 10, offset: Offset(0, 10))
          ],
          border: DialogueBoxState.isSelected[1]
              ? Border.all(color: Colors.black, width: 1)
              : Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(20),
          ),
      child: Column(
        children: [
          ProfileRep(AssetImage("icons/emo.png"), DialogueBoxState.isSelected[1] ? Color(0xffecfaff) : Color(0xff3CC1EB)),
          Expanded(child: Container()),
          Labels("Checkout Value: ", "\$" + (rp/100).toStringAsFixed(2)),
          Labels("Total RP: ", totalRP.toString()),
          Labels("Position: ", "8th"),
          Expanded(child: Container()),
          ReputationButton(true, _setIndex),
          Expanded(child: Container()),
        ],
      ),
    );
  }
}
