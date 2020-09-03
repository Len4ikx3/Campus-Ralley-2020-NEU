import 'stationmenu.dart';
import 'package:flutter/material.dart';

class Innonight extends StatefulWidget {
  int currentScore;
  int id;
  String description;

  Innonight({
    @required this.currentScore,
    @required this.id,
    @required this.description,
  });

  @override
  State<StatefulWidget> createState() {
    return _InnonightState(
      currentScore: currentScore,
      id: id,
      description: description,
    );
  }
}

class _InnonightState extends State<Innonight> {
  int currentScore;
  int id;
  String description;

  _InnonightState({
    @required this.currentScore,
    @required this.id,
    @required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
            child: Column(children: <Widget>[
          Container(
              margin: EdgeInsets.only(left: 50, right: 50),
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(100),
                    bottomRight: Radius.circular(100)),
                color: Color(0xFFBff8000),
              ),
              child: Center(
                child: Text('- FHWS -',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.end),
              )),
          Container(
              padding: EdgeInsets.only(top: 50, bottom: 50),
              width: double.infinity,
              child: Row(
                children: <Widget>[
                  Container(
                      color: Color(0xFFBff8000),
                      height: 200,
                      width: 250,
                      child: Center(
                          child: Text(description,
                              style: TextStyle(color: Colors.white)))),
                  Container(
                    padding: EdgeInsets.all(50),
                    child: Text(
                      '$id',
                      style: TextStyle(color: Colors.grey, fontSize: 50),
                    ),
                  ),
                ],
              )),
          Container(
            height: 300,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                image: DecorationImage(
                  //hier soll ein Bild von einem Flyer rein
                  image: AssetImage("lib/images/FHWS.jpg"),
                ),
                shape: BoxShape.circle),
          ),
          Container(
            child: Column(
              children: <Widget>[
                IconButton(
                    icon: Icon(
                      Icons.save,
                      color: Color(0xFFBff8000),
                    ),
                    iconSize: 50,
                    splashColor: Color(0xFFBff8000),
                    onPressed: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Stationmenu(
                                      newCurrentScore: currentScore + 10,
                                    )));
                      });
                    }),
                Text('Gib mir 10 Punkte!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFBff8000),
                      fontSize: 17,
                    ))
              ],
            ),
          )
        ])));
  }
}
