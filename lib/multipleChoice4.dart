import 'package:google_fonts/google_fonts.dart';

import 'stationmenu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MultipleChoice4 extends StatefulWidget {
  int currentScore;
  int id;
  String question;
  List<int> points;
  List<bool> answerValues;
  List<String> answerTexts;
  List<bool> tappedList;

  MultipleChoice4(
      {@required this.currentScore,
      @required this.id,
      @required this.question,
      @required this.points,
      @required this.answerValues,
      @required this.answerTexts,
      @required this.tappedList});

  @override
  State<StatefulWidget> createState() {
    return MultipleChoice4State(
        currentScore: currentScore,
        id: id,
        question: question,
        points: points,
        answerValues: answerValues,
        answerTexts: answerTexts,
        tappedList: tappedList);
  }
}

class MultipleChoice4State extends State<MultipleChoice4> {
  List<Color> buttonColor = [
    Color(0xFFBff8000),
    Color(0xFFBff8000),
    Color(0xFFBff8000),
    Color(0xFFBff8000),
  ];
  List<int> points;
  List<bool> answerValues;
  List<String> answerTexts;
  List<bool> tappedList;

  Color buttonUnselectedColor = Color(0xFFBff8000);
  Color buttonSelectedColor = Colors.deepPurple[300];

  int scoreToBeAdded = 0;
  int finalScore;

  int currentScore;
  int id;
  String question;

  MultipleChoice4State(
      {@required this.currentScore,
      @required this.id,
      @required this.question,
      @required this.points,
      @required this.answerValues,
      @required this.answerTexts,
      @required this.tappedList});

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
            body: Container(
                child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
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
                                  child: Text(question,
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
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 380,
                        height: 45,
                        margin: EdgeInsets.only(bottom: 15),
                        child: FlatButton(
                          color: buttonColor[0],
                          onPressed: () {
                            changeScore(0, answerValues[0]);
                          },
                          child: Text(answerTexts[0],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  wordSpacing: 2.0),
                              textAlign: TextAlign.center),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                      Container(
                        width: 380,
                        height: 45,
                        margin: EdgeInsets.only(bottom: 15),
                        child: FlatButton(
                          color: buttonColor[1],
                          onPressed: () {
                            changeScore(1, answerValues[1]);
                          },
                          child: Text(answerTexts[1],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  wordSpacing: 2.0),
                              textAlign: TextAlign.center),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                      Container(
                        width: 380,
                        height: 45,
                        margin: EdgeInsets.only(bottom: 15),
                        child: FlatButton(
                          color: buttonColor[2],
                          onPressed: () {
                            changeScore(2, answerValues[2]);
                          },
                          child: Text(answerTexts[2],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  wordSpacing: 2.0),
                              textAlign: TextAlign.center),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                      Container(
                        width: 380,
                        height: 45,
                        margin: EdgeInsets.only(bottom: 15),
                        child: FlatButton(
                          color: buttonColor[3],
                          onPressed: () {
                            changeScore(3, answerValues[3]);
                          },
                          child: Text(answerTexts[3],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  wordSpacing: 2.0),
                              textAlign: TextAlign.center),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ],
                  )),
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
                                          newCurrentScore: newFinalScore(
                                              currentScore, scoreToBeAdded),
                                          newtappedList:
                                              changedtappedList(tappedList),
                                        )));
                          });
                        }),
                    Text('Speichern und zurück zur Stationenauswahl',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xFFBff8000),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2.0))
                  ],
                ),
              )
            ],
          ),
        ))));
  }

  void changeScore(int buttonnr, bool correct) {
    setState(() {
      if (correct) {
        if (buttonColor[buttonnr] == buttonUnselectedColor) {
          buttonColor[buttonnr] = buttonSelectedColor;
          scoreToBeAdded = scoreToBeAdded + points[buttonnr];
        } else {
          buttonColor[buttonnr] = buttonUnselectedColor;
          scoreToBeAdded = scoreToBeAdded - points[buttonnr];
        }
      } else {
        if (buttonColor[buttonnr] == buttonUnselectedColor) {
          buttonColor[buttonnr] = buttonSelectedColor;
          scoreToBeAdded = scoreToBeAdded + points[buttonnr];
        } else {
          buttonColor[buttonnr] = buttonUnselectedColor;
          scoreToBeAdded = scoreToBeAdded - points[buttonnr];
        }
      }
    });
  }

  int newFinalScore(int currentScore, int scoreToBeAdded) {
    finalScore = currentScore + scoreToBeAdded;
    if (finalScore < 0) {
      return 0;
    } else {
      return finalScore;
    }
  }
}
