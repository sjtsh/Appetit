import 'package:appetit/DATABASE/Content.dart';
import 'package:flutter/material.dart';

import 'Heading.dart';
import 'ProgressBar.dart';
import 'ReputationCard.dart';

class Reputation extends StatelessWidget {

  final Function _setIndex;

  Reputation(this._setIndex);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        width: double.infinity,
        child: Column(
          children: [
            Heading(true),
            Expanded(child: Container()),
            ProgressBar(true),
            Expanded(child: Container()),
            ReputationCard(_setIndex),
          ],
        ));
  }
}
