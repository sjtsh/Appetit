import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:appetit/File%20Handling/Favorites.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'Appetit.dart';
import 'DATABASE/Content.dart';
import 'DialogueBox/DialogueBox.dart';
import 'File Handling/Dark.dart';
import 'File Handling/Log.dart';
import 'File Handling/ReadWrite.dart';
import 'Log In/AndroidAuthProvider.dart';
import 'NotAppetit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await AuthProvider().initialize();
  ReadWrite readWrite = ReadWrite();
  Dark dark = Dark();
  Favorites favorites = Favorites();

  favorites.readContents().then((List value) {
    favourites = value;
    print("*********************************************" + value.toString() +
        "*********************************************");
  });
  readWrite.readContents().then((List value) {
    balance = double.parse(value[0]);
    rp = int.parse(value[1]);
    totalRP = int.parse(value[2]);
  });
  dark.readContents().then((bool value) {
    DialogueBoxState.isSelected[1] = value;
    DialogueBoxState.isSelected[0] = !value;
  });
  Log log = Log();
  log.readContents().then((value) {
    loggedIn = value;
    runApp(App());
  });
}

class App extends StatefulWidget {
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {

  void _setLogged(bool _loggedIn) {
    setState(() {
      Log log = Log();
      log.writeContents(_loggedIn);
      loggedIn = _loggedIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return loggedIn ? Appetit(_setLogged) : NotAppetit(_setLogged);
  }
}
