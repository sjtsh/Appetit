
import 'package:flutter/material.dart';

import 'Content.dart';

class JoinUs extends StatelessWidget {
  final Function _setLogged;

  JoinUs(this._setLogged);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: -450,
          left: -230,
          child: Container(
            height: 700,
            width: 700,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                    color: Color(0x66000000),
                    blurRadius: 10,
                    offset: Offset(0, 0),
                    spreadRadius: 10)
              ],
              shape: BoxShape.circle,
              color: Color(0xff434343),
            ),
          ),
        ),
        Positioned(
          right: -280,
          bottom: -200,
          child: Container(
            width: 460,
            height: 400,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                    color: Color(0x66000000),
                    blurRadius: 10,
                    offset: Offset(0, 0),
                    spreadRadius: 10)
              ],
              shape: BoxShape.circle,
              color: Color(0xff434343),
            ),
          ),
        ),
        Content(_setLogged),
      ],
    );
  }
}
