
import 'package:appetit/DialogueBox/DialogueBox.dart';
import 'package:appetit/ProductDetail/ProductDetail.dart';
import 'package:flutter/material.dart';

class ProductSmall extends StatelessWidget {


  final String img;
  final Function _setIndex;
  final Function _setLogged;

  ProductSmall(this.img, this._setIndex, this._setLogged);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      child: Container(
        height: 120,
        width: 120,
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
        child: Center(
          child: MaterialButton(
            splashColor: Colors.black,
            child: Image.network(img, fit: BoxFit.cover,),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProductDetail(img, _setIndex, _setLogged)),
              );
            },
          ),
        ),
      ),
    );
  }
}
