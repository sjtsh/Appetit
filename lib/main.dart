import 'package:flutter/material.dart';

import 'Appetit.dart';
import 'ConstructionScreen/TestScreen.dart';
import 'DATABASE/Content.dart';
import 'Log In/AndroidAuthProvider.dart';
import 'NotAppetit.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await AuthProvider().initialize();

   runApp(App());

}

class App extends StatefulWidget {


  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {

  void _setLogged(bool _loggedIn){
    setState(() {
      loggedIn = _loggedIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return loggedIn ? Appetit(_setLogged) : NotAppetit(_setLogged);
  }
}


