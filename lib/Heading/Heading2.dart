import 'package:appetit/MapScreen/MapScreen.dart';
import 'package:flutter/material.dart';

class Heading2 extends StatelessWidget {
  final Function _setLogged;
  Heading2(this._setLogged);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Text(
            "Featured",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          Expanded(
            child: Container(),
          ),
          MaterialButton(
            splashColor: Colors.black,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MapScreen(_setLogged)),
              );
            },
            child: Icon(
              Icons.location_on_outlined,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
