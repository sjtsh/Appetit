import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:appetit/Log%20In/AndroidAuthProvider.dart';

class SignButton extends StatelessWidget {
  final Function _loggedIn;

  SignButton(this._loggedIn);

  // void _signInFb() async{
  //   try {
  //     final creds = await AuthProvider().signInWithFacebook();
  //     print(creds);
  //   } catch(e){
  //     print("login failed $e");
  //   }
  // }

  void _signInGoog() async {
    try {
      final creds = await AuthProvider().signInWithGoogle();
      print(creds);
      _loggedIn(true);
    } catch (e) {
      print("login failed $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MaterialButton(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onPressed: () {
            _signInGoog();
          },
          child: Container(
            height: 60,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Continue with",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                    height: 30,
                    width: 30,
                    child: Image(
                      image: AssetImage("icons/GoogleLogo.png"),
                    ))
              ],
            ),
          ),
        ),
        MaterialButton(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onPressed: () {},
          child: Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.keyboard_arrow_right_rounded,
              color: Colors.white,
              size: 60,
            ),
          ),
        )
      ],
    );
  }
}

// SignInButton(
//   Buttons.FacebookNew,
//   onPressed: () {
//     _signInFb();
//   },
// )