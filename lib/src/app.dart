import 'package:flutter/material.dart';

import 'ui/Home/home_screen.dart';
import 'ui/Login/login_screen.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return LoginScreen();
  }
}