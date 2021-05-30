import 'package:appetit/DATABASE/Content.dart';
import 'package:flutter/material.dart';

class Heading extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 100,
        ),
        Text(
          "reputation points",
          style: TextStyle(
            color: Colors.white.withOpacity(0.5),
            fontSize: 20,
          ),
        ),
        ShaderMask(
          shaderCallback: (bounds) => linearGradientRep.createShader(
            Rect.fromLTWH(0, 0, bounds.width, bounds.height),
          ),
          child: Text(
            "$rp",
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
