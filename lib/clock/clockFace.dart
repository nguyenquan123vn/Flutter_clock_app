import 'package:flutter/material.dart';

import 'clockNumber.dart';
import 'clockHands.dart';

class ClockFace extends StatefulWidget {
  @override
  _ClockFaceState createState() => _ClockFaceState();
}

class _ClockFaceState extends State<ClockFace> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      //So clock face doesn't completely reach edges of clock body
      padding: EdgeInsets.all(8.0),
      child: AspectRatio(
        //Make sure clock face width and height are the same
        aspectRatio: 1.0,
        child: Center(
          //Make sure clock face is centered within parent
          child: Container(
            width: double.infinity, //Clock face width is as much as parent
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[800],
            ),
            child: Stack(
              children: <Widget>[
                //Dial, numbers, and hands will go here
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  child: CustomPaint(
                    painter: ClockDialPainter(
                      clockText: ClockText.roman,
                      color: Colors.red[900],
                    ),
                  ),
                ),
                ClockHands(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
