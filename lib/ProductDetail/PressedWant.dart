import 'dart:ui';

import 'package:appetit/DialogueBox/BalanceDialog.dart';
import 'package:appetit/DialogueBox/DialogueBox.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class PressedWant extends StatefulWidget {

  final DocumentSnapshot products;
  final Function _setIndex;
  final bool condition;
  PressedWant(this.products, this._setIndex, this.condition);

  @override
  State<PressedWant> createState() => _PressedWantState();
}

class _PressedWantState extends State<PressedWant>
    with SingleTickerProviderStateMixin {

  final bool status = true;

  var controller;
  var scaleAnimation;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    scaleAnimation =
        CurvedAnimation(parent: controller, curve: Curves.elasticInOut);

    controller.addListener(() {
      setState(() {});
    });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
          child: ScaleTransition(
            scale: scaleAnimation,
            child: Container(
              decoration: ShapeDecoration(
                  color: DialogueBoxState.isSelected[1] ? Color(0xff272727) : Color(0xffffffff),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
              child: SizedBox(
                height: 250,
                width: 250,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: BalanceDialog(widget.products, widget._setIndex, widget.condition),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
