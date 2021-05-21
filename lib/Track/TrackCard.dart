import 'package:appetit/DATABASE/Content.dart';
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
        color: Color(0xff272727),
        boxShadow: boxShadowPrimary,
        border: Border.all(color: Colors.black, width: 1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            children: [
              ProfileRep(AssetImage("icons/emo2.png"), Color(0xffFFECFF)),
              Container(
              margin: EdgeInsets.only(top:25),
                child: Column(
                  children: [
                    Text(
                      "Emma on her way",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        "with your $delivering",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.5),
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
          Labels("RP: ", "40 points"),
          Labels("Cost:  ", "\$14"),
          Labels("Status: ", "PAID!"),
          Expanded(child: Container()),
          ReputationButton(false, _setIndex),
          Expanded(child: Container())
        ],
      ),
    );
  }
}
