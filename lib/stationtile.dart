import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class StationTile extends StatefulWidget {
  String imagepath;
  int stationnr;
  String stationtitle;
  GestureTapCallback onTap;

  StationTile({this.onTap, this.imagepath, this.stationnr, this.stationtitle});

  @override
  State<StatefulWidget> createState() {
    return StationTileState();
  }
}

class StationTileState extends State<StationTile> {
  String imagepath;
  int stationnr;
  String stationtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        child: Stack(
          children: [
            ClipRRect(borderRadius: BorderRadius.circular(10)),
            Image.asset(
              imagepath,
              width: MediaQuery.of(context).size.width - 20,
              fit: BoxFit.cover,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black26,
              ),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('$stationnr',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w400)),
                  SizedBox(
                    height: 8,
                  ),
                  Text(stationtitle,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w500))
                ],
              ),
            )
          ],
        ));
  }
}
