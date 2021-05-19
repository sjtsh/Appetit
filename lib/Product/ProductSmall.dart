import 'package:appetit/ProductDetail/ProductDetail.dart';
import 'package:flutter/material.dart';

class ProductSmall extends StatelessWidget {

  final List<BoxShadow> boxShadow = const [
    BoxShadow(color: Color(0xff000000), blurRadius: 10, offset: Offset(0, 10))
  ];

  final AssetImage img;

  ProductSmall(this.img);

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
          boxShadow: boxShadow,
        ),
        child: Center(
          child: TextButton(
            child: Image(
              fit: BoxFit.cover,
              image: img,
            ),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProductDetail(img)),
              );
            },
          ),
        ),
      ),
    );
  }
}
