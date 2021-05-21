import 'package:appetit/DATABASE/Content.dart';
import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  final bool rep;

  Heading(this.rep);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 100,
        ),
        Text(
          rep? "reputation points" : "estimated arrival",
          style: TextStyle(
            color: Colors.white.withOpacity(0.5),
            fontSize: 20,
          ),
        ),
        ShaderMask(
          shaderCallback: (bounds) => rep? linearGradientRep.createShader(
            Rect.fromLTWH(0, 0, bounds.width, bounds.height),
          ):
          linearGradientTrack.createShader(
            Rect.fromLTWH(0, 0, bounds.width, bounds.height),
          ),
          child: Text(
            rep? "$rp" : "$timeRemaining",
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
