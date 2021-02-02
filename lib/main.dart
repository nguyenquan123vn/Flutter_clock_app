import 'package:flutter/material.dart';

import 'clockController.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Clock',
      theme: ThemeData(
        primaryColor: Colors.black,
        canvasColor: Colors.black,
        bottomAppBarColor: Colors.black,
        buttonColor: Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(primary: Colors.red[700])),
      ),
      home: ClockController(),
    );
  }
}
