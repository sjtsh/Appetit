import 'package:appetit/DialogueBox/DialogueBox.dart';
import 'package:appetit/ProductDetail/ProductDetail.dart';
import 'package:flutter/material.dart';

class ProductLarge extends StatelessWidget {

  final String caption;
  final int price;
  final String img;
  final Function _setIndex;
  final Function _setLogged;

  ProductLarge(this.caption, this.price, this.img, this._setIndex, this._setLogged);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, bottom: 25),
      child: MaterialButton(
        splashColor: Colors.black,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProductDetail(img, _setIndex, _setLogged)),
          );
        },
        child: Container(
          height: 120,
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
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Hero(
                  tag: "product",
                  child: Image.network(img, width: 70,)
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    caption,
                    style: TextStyle(
                      color: DialogueBoxState.isSelected[1] ? Colors.white : Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      "\$" + price.toString(),
                      style: TextStyle(
                        color: DialogueBoxState.isSelected[1] ? Colors.white.withOpacity(0.5) : Colors.black.withOpacity(0.5),
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      "16min",
                      style: TextStyle(
                        color: DialogueBoxState.isSelected[1] ? Colors.white.withOpacity(0.5) : Colors.black.withOpacity(0.5),
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
