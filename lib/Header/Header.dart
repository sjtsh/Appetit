import 'package:appetit/Header/HeaderPartition.dart';

import 'Menu.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final Function _setLogged;
  final Function _setIndex;
  Header(this._setIndex, this._setLogged);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        HeaderPartition(_setIndex, _setLogged),
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
