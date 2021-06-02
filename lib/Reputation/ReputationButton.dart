
import 'package:appetit/DATABASE/Content.dart';
import 'package:appetit/DialogueBox/DialogueBox.dart';
import 'package:appetit/Track/Timer.dart';
import 'package:flutter/material.dart';

class ReputationButton extends StatelessWidget {
  final bool rep;
  final Function _setIndex;

  ReputationButton(this.rep, this._setIndex);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: DialogueBoxState.isSelected[1]
            ? Border.all(color: Colors.black, width: 1)
            : Border.all(color: Colors.white),
        color: DialogueBoxState.isSelected[1] ? Color(0xff272727) : Color(0xffffffff),
        borderRadius: BorderRadius.circular(20),
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
      child: MaterialButton(
        splashColor: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
          child: Text(
            rep ? "CHECKOUT!" : "DELIVERED?",
            style: TextStyle(
              color: DialogueBoxState.isSelected[1] ? Colors.white : Colors.black,
              fontSize: 20,
            ),
          ),
        ),
        onPressed: () {
          if (rep) {
            print("checked out");
            balance += double.parse((rp/100).toStringAsFixed(2));
            rp = 0;
            _setIndex(0);
          } else {
            print("delivered");
            TimerState.stopTimer();
            delivered = true;
            _setIndex(0);
          }
        },
      ),
    );
  }
}
