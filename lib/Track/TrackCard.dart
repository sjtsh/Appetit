
import 'package:appetit/DATABASE/Content.dart';
import 'package:appetit/DialogueBox/DialogueBox.dart';
import 'package:appetit/Reputation/Labels.dart';
import 'package:appetit/Reputation/ProfileRep.dart';
import 'package:appetit/Reputation/ReputationButton.dart';
import 'package:flutter/material.dart';

class TrackCard extends StatelessWidget {

  final Function _setIndex;

  TrackCard(this._setIndex);

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
          Row(
            children: [
              ProfileRep(AssetImage("icons/emo2.png"), DialogueBoxState.isSelected[1]? Color(0xffFFECFF): Color(0xffE33EE7)),
              Container(
              margin: EdgeInsets.only(top:25),
                child: Column(
                  children: [
                    Text(
                      "Emma on her way",
                      style: TextStyle(
                        color: DialogueBoxState.isSelected[1] ? Colors.white : Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        "with your $delivering",
                        style: TextStyle(
                          color: DialogueBoxState.isSelected[1] ? Colors.white.withOpacity(0.5) : Colors.black.withOpacity(0.5),
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Expanded(child: Container()),
          Labels("RP: ", newRP.toString() + " points"),
          Labels("Cost:  ", "\$" + newCost.toString()),
          Labels("Status: ", payStatus ),
          Expanded(child: Container()),
          ReputationButton(false, _setIndex),
          Expanded(child: Container())
        ],
      ),
    );
  }
}
