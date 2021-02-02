import 'package:flutter/material.dart';

import 'screen/alarm.dart';
import 'screen/clock.dart';
import 'screen/stopwatch.dart';

class ClockController extends StatefulWidget {
  @override
  _ClockState createState() => _ClockState();
}

class _ClockState extends State<ClockController> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    ClockScreen(),
    AlarmScreen(),
    StopwatchScreen()
  ];

  void _onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.watch_later_outlined),
            label: 'Clock',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.alarm),
            label: 'Alarm',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timer),
            label: 'Stopwatch',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red[900],
        unselectedItemColor: Colors.white,
        onTap: _onTapped,
      ),
    );
  }
}
