import 'package:appetit/NavBar/NavBar.dart';
import 'package:appetit/Track/Timer.dart';
import 'package:flutter/material.dart';

import 'package:appetit/DATABASE/Content.dart';

class Restaurant extends StatelessWidget {

  final List products;
  final Function _setIndex;
  final bool condition;
  final int index;

  Restaurant(this.products, this.index, this._setIndex, this.condition);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Container(
        height: 120,
        decoration: BoxDecoration(
          color: Color(0xff272727),
          borderRadius: BorderRadius.all(Radius.circular(20)),
          border: Border.all(color: Colors.black, width: 1),
          boxShadow: boxShadowPrimary,
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Image.network(
                products[index].data()['Image'],
                width: 100,
                fit: BoxFit.fitHeight,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    restaurants[index],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: "ABeeZee",
                      decoration: TextDecoration.none,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      "\$" + products[index].data()['Price'].toString(),
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        fontSize: 15,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      times[index],
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        fontSize: 15,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: Container()),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Container(
                decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1),
                      border: Border.all(
                        color: Colors.white,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                child: MaterialButton(
                  splashColor: Colors.black,
                  onPressed: () {
                    delivered = false;
                    newCost = products[index].data()['Price'];
                    newRP = (products[index].data()['Price']*0.2).round()*10;
                    delivering = products[index].data()['Name'];
                    NavBarState.onItemTapped(0);
                    balance -= products[index].data()['Price'];
                    TimerState.stopTimer();
                    if(condition){
                      Navigator.pop(context);
                    }
                    _setIndex(0);
                  },
                  child: Text(
                    "Want",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "ABeeZee",
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
