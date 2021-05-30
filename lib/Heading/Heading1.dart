import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Heading1 extends StatelessWidget {

  final user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Hi " + (user!.displayName!.split(" ")[0]) + ",",
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Text(
            "Hungry? Grab a Diet",
            style: TextStyle(
              color: Colors.white.withOpacity(0.5),
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}
