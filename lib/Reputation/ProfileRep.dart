import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileRep extends StatelessWidget {

  final Color color;
  final AssetImage img;

  ProfileRep(this.img, this.color);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20, right: 20, left: 20),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color.withOpacity(0.6),
            ),
            child: SizedBox(
              height: 70,
              width: 70,
            ),
          ),
          Container(
            margin: EdgeInsets.all(6),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
            ),
            child: SizedBox(
              height: 55,
              width:55,
              child: Image(
                fit: BoxFit.cover,
                image: img,),
            ),
          ),
        ],
      ),
    );
  }
}
