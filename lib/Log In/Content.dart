import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CredLogIn.dart';
import 'SignButton.dart';

class Content extends StatelessWidget {

  final Function _loggedIn;

  Content(this._loggedIn);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: MaterialButton(
                splashColor: Colors.black,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios_rounded,
                  color: Colors.white.withOpacity(0.5),
                  size: 30,
                ),
              ),
            ),
            Expanded(
              child: Container(),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50, left: 70),
              child: Text(
                "LOG IN",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xffC7AD6C),
                  fontSize: 40,
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 150,
              ),
              CredLogIn(),
              Expanded(child: Container()),
              SignButton(_loggedIn),
              Expanded(child: Container()),
            ],
          ),
        ),
        Row(
          children: [
            Expanded(child: Container()),
            Padding(
              padding: EdgeInsets.only(bottom: 40, right: 30),
              child: Text(
                "Forgot Password?",
                style: TextStyle(
                    fontSize: 18, decoration: TextDecoration.underline),
              ),
            )
          ],
        )
      ],
    );
  }
}
