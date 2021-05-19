import 'package:flutter/material.dart';

class Menu extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.all(3),
              height: 30,
              width: 5,
              decoration: BoxDecoration(
                color: Color(0x80C4C4C4),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0x80C4C4C4),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              margin: EdgeInsets.all(3),
              height: 30,
              width: 5,
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(3),
              height: 30,
              width: 5,
              decoration: BoxDecoration(
                color: Color(0x80C4C4C4),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
            ),
          ],
        ),
        Container(),
      ],
    );
  }
}
