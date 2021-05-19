import 'package:appetit/MapScreen/MapScreen.dart';
import 'package:flutter/material.dart';

class Heading2 extends StatelessWidget {

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
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MapScreen()),
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
