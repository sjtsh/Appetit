import 'package:appetit/NavBar/NavBar.dart';
import 'package:flutter/material.dart';

import 'package:appetit/DATABASE/Content.dart';

class Restaurant extends StatelessWidget {

  final Function _setIndex;
  final bool condition;
  final int index;
  Restaurant(this.index, this._setIndex, {this.condition = false});

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
              child: Image(
                width: 100,
                fit: BoxFit.fitHeight,
                image: images[index],
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
                      prices[index],
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
                    delivering = names[index];
                    NavBarState.onItemTapped(0);
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
