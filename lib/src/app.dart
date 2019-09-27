import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'ui/Home/home_screen.dart';
import 'ui/Login/login_screen.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark
    ));
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Color(0xFFFF3D58),
          textTheme: Theme.of(context).textTheme.apply(
            bodyColor: Colors.grey[800],
            displayColor: Colors.grey[800]
          )
        ),
        home: LoginScreen());
  }
}
