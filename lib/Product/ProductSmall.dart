import 'package:appetit/DATABASE/Content.dart';
import 'package:appetit/ProductDetail/ProductDetail.dart';
import 'package:flutter/material.dart';

class ProductSmall extends StatelessWidget {


  final AssetImage img;
  final Function _setIndex;
  final Function _setLogged;

  ProductSmall(this.img, this._setIndex, this._setLogged);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        height: 120,
        width: 120,
        decoration: BoxDecoration(
          color: Color(0xff272727),
          borderRadius: BorderRadius.all(Radius.circular(20)),
          border: Border.all(color: Colors.black, width: 1),
          boxShadow: boxShadowPrimary,
        ),
        child: Center(
          child: MaterialButton(
            splashColor: Colors.black,
            child: Image(
              fit: BoxFit.cover,
              image: img,
            ),
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
