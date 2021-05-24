import 'package:appetit/Log%20In/LogIn.dart';
import 'package:appetit/Log%20In/SignButton.dart';
import 'package:flutter/material.dart';

import 'CredJoinUs.dart';

class Content extends StatelessWidget {
  final Function _setLogged;

  Content(this._setLogged);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(top: 110, left: 70),
              child: Text(
                "JOIN US",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff14A6C7),
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
                height: 120,
              ),
              CredJoinUs(),
              SizedBox(
                height: 40,
              ),
              SignButton(_setLogged),
            ],
          ),
        ),
        Row(
          children: [
            Expanded(child: Container()),
            Padding(
              padding: EdgeInsets.only(bottom: 40, right: 10),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LogIn(_setLogged),
                    ),
                  );
                },
                child: Text(
                  "Log In",
                  style: TextStyle(color: Colors.yellow, fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
