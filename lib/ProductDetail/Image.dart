
import 'package:appetit/DialogueBox/DialogueBox.dart';
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
                color: DialogueBoxState.isSelected[1] ? Color(0xff272727) : Color(0xffffffff),
                borderRadius: BorderRadius.all(Radius.circular(20)),
                border: DialogueBoxState.isSelected[1]
                    ? Border.all(color: Colors.black, width: 1)
                    : Border.all(color: Colors.white),
                boxShadow: DialogueBoxState.isSelected[1]
                    ? const [
                  BoxShadow(
                      color: Color(0xff000000), blurRadius: 10, offset: Offset(0, 10))
                ]
                    : const [
                  BoxShadow(
                      color: Color(0x40000000), blurRadius: 10, offset: Offset(0, 10))
                ],
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
