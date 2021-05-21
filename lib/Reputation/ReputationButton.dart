import 'package:appetit/DATABASE/Content.dart';
import 'package:flutter/material.dart';

class ReputationButton extends StatelessWidget {
  final bool rep;
  final Function _setIndex;

  ReputationButton(this.rep, this._setIndex);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1),
        color: Color(0xff272727),
        borderRadius: BorderRadius.circular(20),
        boxShadow: boxShadowPrimary,
      ),
      child: MaterialButton(
        splashColor: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
          child: Text(
            rep ? "CHECKOUT!" : "DELIVERED?",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
        onPressed: () {
          if (rep) {
            print("checked out");
          } else {
            print("delivered");
            delivered = true;
            _setIndex(0);
          }
        },
      ),
    );
  }
}
