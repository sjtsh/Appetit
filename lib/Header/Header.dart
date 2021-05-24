import 'package:appetit/Header/HeaderPartition.dart';

import 'Menu.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final Function _setLogged;
  Header(this._setLogged);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        HeaderPartition(_setLogged),
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
