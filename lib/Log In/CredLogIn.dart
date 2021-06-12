import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CredLogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.4),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20, top: 5),
          child: SizedBox(
            width: 250,
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              enableSuggestions: true,
              keyboardAppearance: Brightness.dark,
              cursorColor: Colors.white,
              onSubmitted: (String input) {},
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Your Email",
                hintStyle: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                  fontSize: 18,
                ),
                icon: Icon(
                  Icons.email,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.4),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20, top: 5),
          child: SizedBox(
            width: 250,
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              keyboardAppearance: Brightness.dark,
              cursorColor: Colors.white,
              onSubmitted: (String input) {},
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Password",
                hintStyle: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                  fontSize: 18,
                ),
                icon: Icon(
                  Icons.vpn_key,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}
