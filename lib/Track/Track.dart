import 'package:flutter/material.dart';

import '../Reputation/Heading.dart';
import '../Reputation/ProgressBar.dart';
import 'TrackCard.dart';

class Track extends StatelessWidget {

  final Function _setIndex;

  Track(this._setIndex);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        width: double.infinity,
        child: Column(
          children: [
            Heading(false),
            Expanded(child: Container()),
            ProgressBar(false),
            Expanded(child: Container()),
            TrackCard(_setIndex),
          ],
        ));
  }
}
