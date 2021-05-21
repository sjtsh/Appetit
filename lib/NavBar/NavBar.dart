import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  final Function _setIndex;

  NavBar(this._setIndex);

  @override
  NavBarState createState() => NavBarState();
}

class NavBarState extends State<NavBar> {
  static int currentIndex = 1;

  static void onItemTapped(int i){
    currentIndex = i;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomNavigationBar(
        strokeColor: Colors.black,
        iconSize: 30,
        currentIndex: currentIndex,
        selectedColor: Colors.black,
        backgroundColor: Colors.white.withOpacity(0.1),
        borderRadius: Radius.circular(20),
        onTap: (int i) {
          print("clicked");
          print(i);
          widget._setIndex(i);
          onItemTapped(i);
        },
        items: [
          CustomNavigationBarItem(
            icon: Icon(Icons.attach_money_rounded),
          ),
          CustomNavigationBarItem(
            icon: Icon(Icons.home_filled),
          ),
          CustomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
          ),
        ],
      ),
    );
  }
}
