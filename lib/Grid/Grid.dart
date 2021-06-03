import 'package:appetit/Product/ProductSmall.dart';
import 'package:flutter/material.dart';

class Grid extends StatelessWidget {
  final List products;
  final Function _setIndex;
  final Function _setLogged;

  Grid(this.products, this._setIndex, this._setLogged);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: products.length,
      gridDelegate:
      SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return ProductSmall(
            products[index].data()['Image'],
            products[index].data()['Name'],
            _setIndex, _setLogged);
      },
    );
  }
}
