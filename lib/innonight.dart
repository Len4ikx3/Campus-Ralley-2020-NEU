import 'package:google_fonts/google_fonts.dart';

import 'stationmenu.dart';
import 'package:flutter/material.dart';

class Innonight extends StatefulWidget {
  int currentScore;
  int id;
  String description;
  List<bool> tappedList;

  Innonight(
      {@required this.currentScore,
      @required this.id,
      @required this.description,
      @required this.tappedList});

  @override
  State<StatefulWidget> createState() {
    return _InnonightState(
        currentScore: currentScore,
        id: id,
        description: description,
        tappedList: tappedList);
  }
}

class _InnonightState extends State<Innonight> {
  int currentScore;
  int id;
  String description;
  List<bool> tappedList;

  _InnonightState({
    @required this.currentScore,
    @required this.id,
    @required this.description,
    @required this.tappedList,
  });

  List changedtappedList(List<bool> tappedList) {
    tappedList[(id - 1)] = true;
    return tappedList;
  }

  final bool banner = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: banner,
        home: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                child: SingleChildScrollView(
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
                      child: Image.asset(
                    'lib/images/fhwsLogo.png',
                    fit: BoxFit.cover,
                  ))),
              Container(
                  padding: EdgeInsets.only(top: 50, bottom: 50),
                  width: double.infinity,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          flex: 2,
                          child: Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              color: Color(0xFFBff8000),
                              height: 200,
                              child: Center(
                                  child: Text(description,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        letterSpacing: 2.0,
                                      ))))),
                      Expanded(
                          child: Container(
                              child: Center(
                                  child: Text('$id',
                                      style: TextStyle(
                                        fontSize: 100,
                                        color: Colors.grey[300],
                                      ))))),
                    ],
                  )),
              Container(
                height: 245,
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
                                          newtappedList:
                                              changedtappedList(tappedList),
                                        )));
                          });
                        }),
                    Text('Gib mir 10 Punkte!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xFFBff8000),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2.0))
                  ],
                ),
              )
            ])))));
  }
}
