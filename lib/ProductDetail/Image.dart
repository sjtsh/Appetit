import 'package:flutter/material.dart';

class DetailImage extends StatelessWidget {

  final List<BoxShadow> boxShadow = const [
    BoxShadow(color: Color(0xff000000), blurRadius: 10, offset: Offset(0, 10))
  ];
  final AssetImage img;

  DetailImage(this.img);

  @override
  Widget build(BuildContext context) {
    return TextButton(
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
                boxShadow: boxShadow,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 240,
            child: Hero(
              tag: "product",
              child: InteractiveViewer(
                child: Image(
                  fit: BoxFit.fitHeight,
                  image: img,
                ),
              ),
            ),
            ),
        ],
      ),
    );
  }
}
