import 'package:appetit/DATABASE/Content.dart';
import 'package:flutter/material.dart';

class ProfileHome extends StatelessWidget {

  final List<BoxShadow> boxShadow = const [
    BoxShadow(color: Color(0x66607D8B), blurRadius: 10, offset: Offset(0, 0),spreadRadius: 8)
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xffECFAFF).withOpacity(0.6),
            boxShadow: boxShadow
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
    );
  }
}
