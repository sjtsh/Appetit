
import 'package:appetit/DATABASE/Content.dart';
import 'package:appetit/DialogueBox/DialogueBox.dart';
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
            color: DialogueBoxState.isSelected[1]
                ? Colors.white.withOpacity(0.5)
                : Colors.black.withOpacity(0.5),
            fontSize: 20,
          ),
        ),
        ShaderMask(
          shaderCallback: (bounds) => LinearGradient(
            colors: [
              Color(0xffffdb7d),
              Color(0xff00d1ff),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ).createShader(
            Rect.fromLTWH(0, 0, bounds.width, bounds.height),
          ),
          child: Text(
            "$rp",
            style: TextStyle(
              fontSize: 40,
              color:
                  DialogueBoxState.isSelected[1] ? Colors.white : Colors.black,
            ),
          ),
        )
      ],
    );
  }
}
