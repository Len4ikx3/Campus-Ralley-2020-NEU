import 'dart:async';

import 'package:flutter/material.dart';
import 'stationmenu.dart';

void main() => runApp(MaterialApp(
      home: Tappingpage(),
    ));

class Tappingpage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TappingpageState();
  }
}

class TappingpageState extends State<Tappingpage> {
  Widget tslist() {
    return Container(
        child: ListView(
      children: [
        TS(
          color: Colors.green,
          color1: Colors.green,
          color2: Colors.indigo,
        ),
        TS(
          color: Colors.yellow,
          color1: Colors.yellow,
          color2: Colors.pink,
        )
      ],
    ));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: tslist(),
    );
  }
}

class TS extends StatefulWidget {
  //GestureTapCallback onTap;
  Color color;
  Color color1;
  Color color2;

  TS({/*this.onTap,*/ this.color, this.color1, this.color2});
  @override
  TSState createState() => TSState();
}

class TSState extends State<TS> {
  //GestureTapCallback onTap;
  Color color;
  Color color1;
  Color color2;

  TSState({/*this.onTap,*/ this.color, this.color1, this.color2});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
          padding: EdgeInsets.all(50),
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(20)),
          child: Text('data'),
        ),
        onTap: () {
          setState(() {
            if (color == color1) {
              color = color2;
            } else {
              color = color1;
            }
          });
        });
  }
}
