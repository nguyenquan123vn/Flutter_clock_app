import 'dart:async';

import 'package:flutter/material.dart';

import '../clock/clockBody.dart';

enum Choice { WorldTime, CurrentTime }

class ClockScreen extends StatefulWidget {
  @override
  _ClockScreenState createState() => _ClockScreenState();
}

class _ClockScreenState extends State<ClockScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Clock"),
        ),
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            child: ClockBody(),
          ),
        ));
  }
}
