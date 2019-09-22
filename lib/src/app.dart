import 'package:flutter/material.dart';

import 'ui/home_screen.dart';
import 'ui/login_screen.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Home();
  }
}