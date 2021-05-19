import 'package:appetit/DATABASE/Content.dart';
import 'package:appetit/ProductDetail/ProductDetail.dart';
import 'package:flutter/material.dart';

class ProductLarge extends StatelessWidget {
  final List<BoxShadow> boxShadow = const [
    BoxShadow(color: Color(0xff000000), blurRadius: 10, offset: Offset(0, 10))
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, bottom: 25),
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProductDetail(pizzaImg[2])),
          );
        },
        child: Container(
          height: 120,
          decoration: BoxDecoration(
            color: Color(0xff272727),
            borderRadius: BorderRadius.all(Radius.circular(20)),
            border: Border.all(color: Colors.black, width: 1),
            boxShadow: boxShadow,
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Hero(
                  tag: "product",
                  child: Image(
                    width: 100,
                    image: pizzaImg[2],
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Who wants pizza?",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      "\$12",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      "9min",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.5),
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
