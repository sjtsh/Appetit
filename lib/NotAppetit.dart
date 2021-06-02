
import 'package:flutter/material.dart';

import 'JoinUs/JoinUs.dart';

class NotAppetit extends StatelessWidget {

  final Function _setLogged;
  NotAppetit(this._setLogged);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appetit',
      theme: ThemeData(
        fontFamily: "ABeeZee",
      ),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xff9DC7D0),
          body: JoinUs(_setLogged),
        ),
      ),
    );
  }
}
