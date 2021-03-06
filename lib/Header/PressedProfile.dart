import 'package:appetit/DialogueBox/DialogueBox.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class PressedProfile extends StatefulWidget {

  final Function _setIndex;
  final Function _setLogged;

  PressedProfile(this._setIndex, this._setLogged);

  @override
  _PressedProfileState createState() => _PressedProfileState();
}

class _PressedProfileState extends State<PressedProfile>
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
                height: 400,
                width: 250,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: DialogueBox(widget._setIndex, widget._setLogged),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
