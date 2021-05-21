import 'package:appetit/DATABASE/Content.dart';
import 'package:appetit/Header/HeaderPartition.dart';
import 'package:appetit/Header/ProfileHome.dart';

import 'Menu.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {

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
