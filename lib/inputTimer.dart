import 'dart:async';

import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:google_fonts/google_fonts.dart';

import 'stationmenu.dart';
import 'package:flutter/material.dart';

class InputTimer extends StatefulWidget {
  int currentScore;
  int id;
  String description;
  int timer;
  List<bool> tappedList;

  InputTimer({
    @required this.currentScore,
    @required this.id,
    @required this.description,
    @required this.timer,
    @required this.tappedList,
  });

  @override
  State<StatefulWidget> createState() {
    return _InputTimerState(
      currentScore: currentScore,
      id: id,
      description: description,
      timer: timer,
      tappedList: tappedList,
    );
  }
}

class _InputTimerState extends State<InputTimer> {
  int currentScore;
  int id;
  String description;
  int timer;
  int currentTimeValue = 0;
  int yourScore = 0;
  String yourScoreText;
  String buttonText;
  List<bool> tappedList;

  List changedtappedList(List<bool> tappedList) {
    tappedList[(id - 1)] = true;
    return tappedList;
  }

  String getYourScoreText() {
    if (id == 4 || id == 21) {
      yourScoreText = 'Deine Punkte: $yourScore';
    } else {
      yourScoreText = '';
    }
    return yourScoreText;
  }

  String getButtonText() {
    if (id == 21) {
      buttonText = 'Gib mir einen Punkt!';
    } else {
      buttonText = 'Gib mir 10 Punkte!';
    }
    return buttonText;
  }

  int scoreToBeAdded = 0;

  Color selected = Color(0xFFBff8000);
  Color unselected = Colors.grey;

  _InputTimerState({
    @required this.currentScore,
    @required this.id,
    @required this.description,
    @required this.timer,
    @required this.tappedList,
  });

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
                  height: 220,
                  child: CircularCountDownTimer(
                    width: 250,
                    height: 250,
                    duration: timer,
                    fillColor: Color(0xFFBff8000),
                    color: Colors.white,
                    strokeWidth: 10.0,
                    isReverse: true,
                    isTimerTextShown: true,
                    textStyle: TextStyle(
                        color: Colors.grey, fontSize: 27, letterSpacing: 2.0),
                    onComplete: () {
                      setState(() {
                        if (id == 4 || id == 21) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Stationmenu(
                                        newCurrentScore:
                                            currentScore + yourScore,
                                        newtappedList:
                                            changedtappedList(tappedList),
                                      )));
                        } else {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Stationmenu(
                                        newCurrentScore: currentScore,
                                        newtappedList:
                                            changedtappedList(tappedList),
                                      )));
                        }
                      });
                    },
                  )),
              Container(
                child: Text(
                  getYourScoreText(),
                  style: TextStyle(
                      color: Colors.deepPurple[300],
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0),
                ),
              ),
              Container(
                width: 200,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(50)),
                child: Column(
                  children: <Widget>[
                    IconButton(
                        color: Color(0xFFBff8000),
                        icon: Icon(
                          Icons.local_parking,
                          color: Color(0xFFBff8000),
                        ),
                        iconSize: 50,
                        splashColor: Color(0xFFBff8000),
                        onPressed: () {
                          setState(() {
                            if (id == 4) {
                              yourScore = yourScore + 10;
                            } else if (id == 21) {
                              yourScore = yourScore + 1;
                            } else {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Stationmenu(
                                            newCurrentScore: currentScore + 10,
                                            newtappedList:
                                                changedtappedList(tappedList),
                                          )));
                            }
                          });
                        }),
                    Text(getButtonText(),
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
