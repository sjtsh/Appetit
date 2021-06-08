import 'package:appetit/DATABASE/GetSearch.dart';
import 'package:appetit/File%20Handling/ReadWrite.dart';
import 'package:flutter/material.dart';

import 'DATABASE/Content.dart';
import 'DialogueBox/DialogueBox.dart';
import 'File Handling/Dark.dart';
import 'Header/Header.dart';
import 'HomeScreen/HomeScreen.dart';
import 'NavBar/NavBar.dart';
import 'Reputation/Reputation.dart';
import 'Track/Track.dart';

class Appetit extends StatefulWidget {
  final Function _setLogged;

  Appetit(this._setLogged);

  @override
  _AppetitState createState() => _AppetitState();
}

class _AppetitState extends State<Appetit> {
  int i = 1;

  _setIndex(int i) {
    setState(() {
      this.i = i;
    });
  }

  Widget _changeActivity(int i) {
    if (i == 0) {
      return delivered ? Reputation(_setIndex) : Track(_setIndex);
    } else if (i == 1) {
      return HomeScreen(_setIndex, widget._setLogged);
    } else if (i == 2) {
      return GetSearch(_setIndex, widget._setLogged);
    } else {
      return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: MaterialApp(
        title: 'Appetit',
        theme: ThemeData(
          fontFamily: "ABeeZee",
        ),
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            backgroundColor: DialogueBoxState.isSelected[1]
                ? Color(0xff272727)
                : Color(0xffECFAFF),
            body: Column(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      _changeActivity(i),
                      Header(_setIndex, widget._setLogged),
                    ],
                  ),
                ),
                NavBar(_setIndex),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
