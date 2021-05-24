import 'package:appetit/DATABASE/Content.dart';
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
              boxShadow: boxShadowConsist,
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
              boxShadow: boxShadowConsist,
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
