import 'package:appetit/DATABASE/Content.dart';
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
          color: Color(0xff272727),
          boxShadow: boxShadowPrimary,
          border: Border.all(color: Colors.black, width: 1),
          borderRadius: BorderRadius.circular(20),
          ),
      child: Column(
        children: [
          ProfileRep(AssetImage("icons/emo.png"), Color(0xffECFAFF)),
          Expanded(child: Container()),
          Labels("Checkout Value: ", "\$4.6"),
          Labels("Total RP: ", "4460 points"),
          Labels("Position: ", "8th"),
          Expanded(child: Container()),
          ReputationButton(true, _setIndex),
          Expanded(child: Container()),
        ],
      ),
    );
  }
}
