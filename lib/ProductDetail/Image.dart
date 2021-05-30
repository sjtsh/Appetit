import 'package:appetit/DATABASE/Content.dart';
import 'package:flutter/material.dart';

class DetailImage extends StatelessWidget {

  final String img;

  DetailImage(this.img);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      splashColor: Colors.black,
      onPressed: () {
        Navigator.pop(context);
      },
      child: Stack(
      alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: Color(0xff272727),
                borderRadius: BorderRadius.all(Radius.circular(20)),
                border: Border.all(color: Colors.black, width: 1),
                boxShadow: boxShadowPrimary,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 240,
            child: Hero(
              tag: "product",
              child: InteractiveViewer(
                child: Image.network(img, fit: BoxFit.contain,),
              ),
            ),
            ),
        ],
      ),
    );
  }
}
