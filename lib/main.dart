import 'package:flutter/material.dart';

import 'src/app.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    primaryColor: Color(0xFFFFBD00),
  ),
  home: App()
  ));

