import 'package:appetit/Grid/Grid.dart';
import 'package:appetit/Heading/Heading1.dart';
import 'package:appetit/Heading/Heading2.dart';
import 'package:appetit/Product/ProductLarge.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: ListView(
        children: [
          SizedBox(
          height: 140,
          ),
          Heading1(),
          ProductLarge(),
          Heading2(),
          Grid(),
        ],
      ),
    );
  }
}
