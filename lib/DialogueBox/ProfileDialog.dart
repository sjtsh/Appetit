import 'package:appetit/DATABASE/Content.dart';
import 'package:appetit/Reputation/ProfileRep.dart';
import 'package:flutter/material.dart';

class ProfileDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          ProfileRep(AssetImage("icons/emo.png"), Color(0xffECFAFF)),
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
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  "$rp points",
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.white.withOpacity(0.5)),
                ),
              ],
            ),
          )
        ],
      );
  }
}
