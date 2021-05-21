import 'package:appetit/DATABASE/Content.dart';
import 'package:flutter/material.dart';

import 'ProfileHome.dart';

class HeaderPartition extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.all(20),
          height: 70,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Color(0xff272727).withOpacity(0.8),
              borderRadius: BorderRadius.all(Radius.circular(20)),
              // border: Border.all(color: Colors.white)
          ),
        ),
        Positioned(
          height: 50,
          right: 10,
          top: 30,
          child: ProfileHome(),
        ),
        Positioned(
          top: 50,
          right: 90,
          child: Text(
            balance,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              decoration: TextDecoration.none,
              fontFamily: "ABeeZee",
            ),
          ),
        ),
      ],
    );
  }
}
