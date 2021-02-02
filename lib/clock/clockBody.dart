import 'package:flutter/material.dart';

import 'clockFace.dart';

class ClockBody extends StatefulWidget {
  @override
  _ClockBodyState createState() => _ClockBodyState();
}

class _ClockBodyState extends State<ClockBody> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.0, //Make sure clock width and height are the same
      child: Center(
        //Make sure that clock is centered on screen
        child: Stack(
          //Clock body, then hands will go over
          children: [
            Container(
              //Clock body
              width: 300, //Make sure that clock body fills parent
              decoration: BoxDecoration(
                color: Colors.grey[800],
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(4.0, 4.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0,
                    color: Colors.grey[900],
                  ),
                  BoxShadow(
                    offset: Offset(-4.0, -4.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0,
                    color: Colors.grey[700],
                  ),
                ],
              ),

              child: ClockFace(),
            ),
          ],
        ),
      ),
    );
  }
}
