import 'package:appetit/DATABASE/Content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Content.dart';
import 'CredLogIn.dart';
import 'SignButton.dart';

class LogIn extends StatelessWidget {
  final Function _loggedIn;

  LogIn(this._loggedIn);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
            backgroundColor: Color(0xffD0C9B6),
            body: Stack(children: [
              Positioned(
                top: -140,
                left: 60,
                child: Container(
                  height: 420,
                  width: 500,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xff272324),
                  ),
                ),
              ),
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
                top: -290,
                left: -200,
                child: Container(
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Color(0xff2E2E2E),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Content(_loggedIn),
            ]),
      ),
    );
  }
}
