import 'package:appetit/DATABASE/Content.dart';
import 'package:appetit/Header/HeaderPartition.dart';
import 'package:appetit/Header/ProfileHome.dart';

import 'Menu.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {

  final List<BoxShadow> boxShadow = const [
    BoxShadow(color: Color(0xff000000), blurRadius: 5, offset: Offset(0, 0),spreadRadius: 5)
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        HeaderPartition(),
        Positioned(
          height: 50,
          left: 30,
          top: 30,
          child: Menu(),
        ),
      ],
    );
  }
}
