import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Header/Header.dart';
import 'HomeScreen/HomeScreen.dart';
import 'NavBar/NavBar.dart';
import 'SearchScreen/SearchScreen.dart';
import 'TopUpScreen/TopUpScreen.dart';

void main() {
  runApp(Appetit());
}

class Appetit extends StatefulWidget {


  @override
  _AppetitState createState() => _AppetitState();
}

class _AppetitState extends State<Appetit> {
  int i = 1;

  _setIndex(int i){
    setState(() {
      this.i = i;
    });
  }

  Widget _changeActivity(int i){
    if(i==0){
      return TopUpScreen();
    }
    else if(i==1){
      return HomeScreen();
    }
    else if(i==2){
      return SearchScreen();
    }
    else{
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
            body: Container(
              decoration: BoxDecoration(
                color: Color(0xff272727),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        _changeActivity(i),
                        Header(),
                      ],
                    ),
                  ),
                  NavBar(_setIndex),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
