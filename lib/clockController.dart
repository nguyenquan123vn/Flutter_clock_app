import 'package:flutter/material.dart';

import 'screen/clock.dart';
import 'screen/stopwatch.dart';

class ClockController extends StatefulWidget {
  final String title;
  ClockController({Key key, this.title}) : super(key: key);

  @override
  _ClockState createState() => _ClockState();
}

class _ClockState extends State<ClockController> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    ClockScreen(),
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
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Drawer(
          child: Container(
        color: Colors.grey[900],
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('Navigator',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.15,
                      color: Colors.white)),
            ),
            Divider(
              height: 1,
              thickness: 1,
            ),
            ListTile(
              leading: Icon(
                Icons.watch_later_outlined,
                color: Colors.white,
              ),
              title: Text('Clock', style: TextStyle(color: Colors.white)),
              selected: _selectedIndex == 0,
              onTap: () => _onTapped(0),
              selectedTileColor: Colors.red[900],
            ),
            ListTile(
              leading: Icon(
                Icons.timer,
                color: Colors.white,
              ),
              title: Text('Stopwatch', style: TextStyle(color: Colors.white)),
              selected: _selectedIndex == 1,
              onTap: () => _onTapped(1),
              selectedTileColor: Colors.red[900],
            ),
          ],
        ),
      )),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}
