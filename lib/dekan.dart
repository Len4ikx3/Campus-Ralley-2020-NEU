import 'package:google_fonts/google_fonts.dart';

import 'stationmenu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Dekan extends StatefulWidget {
  int currentScore;
  int id;
  String question;
  List<int> points;
  List<String> answerTexts;
  List<bool> tappedList;

  Dekan(
      {@required this.currentScore,
      @required this.id,
      @required this.question,
      @required this.points,
      @required this.answerTexts,
      @required this.tappedList});

  @override
  State<StatefulWidget> createState() {
    return DekanState(
        currentScore: currentScore,
        id: id,
        question: question,
        points: points,
        answerTexts: answerTexts,
        tappedList: tappedList);
  }
}

class DekanState extends State<Dekan> {
  List<Color> buttonColor = [
    Color(0xFFBff8000),
    Color(0xFFBff8000),
    Color(0xFFBff8000),
    Color(0xFFBff8000),
    Color(0xFFBff8000)
  ];
  List<int> points;
  List<String> answerTexts;

  Color buttonUnselectedColor = Color(0xFFBff8000);
  Color buttonSelectedColor = Colors.deepPurple[300];

  int scoreToBeAdded = 0;
  int finalScore;

  int currentScore;
  int id;
  String question;

  List<bool> tappedList;

  DekanState(
      {@required this.currentScore,
      @required this.id,
      @required this.question,
      @required this.points,
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
                height: MediaQuery.of(context).size.height,
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
                          padding: EdgeInsets.only(top: 20, bottom: 50),
                          width: double.infinity,
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                  flex: 2,
                                  child: Container(
                                      padding:
                                          EdgeInsets.only(left: 20, right: 20),
                                      color: Color(0xFFBff8000),
                                      height: 200,
                                      child: Center(
                                          child: Text(question,
                                              style:
                                                  GoogleFonts.pathwayGothicOne(
                                                color: Colors.white,
                                                fontSize: 17,
                                                letterSpacing: 3.0,
                                              ))))),
                              Expanded(
                                  child: Container(
                                      child: Center(
                                          child: Text('$id',
                                              style:
                                                  GoogleFonts.pathwayGothicOne(
                                                fontSize: 160,
                                                color: Colors.grey[300],
                                              ))))),
                            ],
                          )),
                      Container(
                          height: 275,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                width: 380,
                                height: 45,
                                child: FlatButton(
                                  color: buttonColor[0],
                                  onPressed: () {
                                    setState(() {
                                      scoreToBeAdded = 0;
                                      buttonColor[0] = buttonSelectedColor;
                                      buttonColor[1] = buttonUnselectedColor;
                                      buttonColor[2] = buttonUnselectedColor;
                                      buttonColor[3] = buttonUnselectedColor;
                                      buttonColor[4] = buttonUnselectedColor;
                                      scoreToBeAdded =
                                          scoreToBeAdded + points[0];
                                    });
                                  },
                                  child: Text(answerTexts[0],
                                      style: GoogleFonts.pathwayGothicOne(
                                          color: Colors.white,
                                          fontSize: 18,
                                          wordSpacing: 2.0),
                                      textAlign: TextAlign.center),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                              ),
                              Container(
                                width: 380,
                                height: 45,
                                child: FlatButton(
                                  color: buttonColor[1],
                                  onPressed: () {
                                    setState(() {
                                      scoreToBeAdded = 0;
                                      buttonColor[0] = buttonUnselectedColor;
                                      buttonColor[1] = buttonSelectedColor;
                                      buttonColor[2] = buttonUnselectedColor;
                                      buttonColor[3] = buttonUnselectedColor;
                                      buttonColor[4] = buttonUnselectedColor;
                                      scoreToBeAdded =
                                          scoreToBeAdded + points[1];
                                    });
                                  },
                                  child: Text(answerTexts[1],
                                      style: GoogleFonts.pathwayGothicOne(
                                          color: Colors.white,
                                          fontSize: 18,
                                          wordSpacing: 2.0),
                                      textAlign: TextAlign.center),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                              ),
                              Container(
                                width: 380,
                                height: 45,
                                child: FlatButton(
                                  color: buttonColor[2],
                                  onPressed: () {
                                    setState(() {
                                      scoreToBeAdded = 0;
                                      buttonColor[0] = buttonUnselectedColor;
                                      buttonColor[1] = buttonUnselectedColor;
                                      buttonColor[2] = buttonSelectedColor;
                                      buttonColor[3] = buttonUnselectedColor;
                                      buttonColor[4] = buttonUnselectedColor;
                                      scoreToBeAdded =
                                          scoreToBeAdded + points[2];
                                    });
                                  },
                                  child: Text(answerTexts[2],
                                      style: GoogleFonts.pathwayGothicOne(
                                          color: Colors.white,
                                          fontSize: 18,
                                          wordSpacing: 2.0),
                                      textAlign: TextAlign.center),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                              ),
                              Container(
                                width: 380,
                                height: 45,
                                child: FlatButton(
                                  color: buttonColor[3],
                                  onPressed: () {
                                    setState(() {
                                      scoreToBeAdded = 0;
                                      buttonColor[0] = buttonUnselectedColor;
                                      buttonColor[1] = buttonUnselectedColor;
                                      buttonColor[2] = buttonUnselectedColor;
                                      buttonColor[3] = buttonSelectedColor;
                                      buttonColor[4] = buttonUnselectedColor;
                                      scoreToBeAdded =
                                          scoreToBeAdded + points[3];
                                    });
                                  },
                                  child: Text(
                                    answerTexts[3],
                                    style: GoogleFonts.pathwayGothicOne(
                                        color: Colors.white,
                                        fontSize: 18,
                                        wordSpacing: 2.0),
                                    textAlign: TextAlign.center,
                                  ),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                              ),
                              Container(
                                width: 380,
                                height: 45,
                                child: FlatButton(
                                  color: buttonColor[4],
                                  onPressed: () {
                                    setState(() {
                                      scoreToBeAdded = 0;
                                      buttonColor[0] = buttonUnselectedColor;
                                      buttonColor[1] = buttonUnselectedColor;
                                      buttonColor[2] = buttonUnselectedColor;
                                      buttonColor[3] = buttonUnselectedColor;
                                      buttonColor[4] = buttonSelectedColor;
                                      scoreToBeAdded =
                                          scoreToBeAdded + points[4];
                                    });
                                  },
                                  child: Text(answerTexts[4],
                                      style: GoogleFonts.pathwayGothicOne(
                                          color: Colors.white,
                                          fontSize: 18,
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
                                                  newCurrentScore:
                                                      newFinalScore(
                                                          currentScore,
                                                          scoreToBeAdded),
                                                  newtappedList:
                                                      changedtappedList(
                                                          tappedList),
                                                )));
                                  });
                                }),
                            Text('Speichern und zurück zur Stationenauswahl',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.pathwayGothicOne(
                                    color: Color(0xFFBff8000),
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 2.0))
                          ],
                        ),
                      )
                    ],
                  ),
                ))));
  }

  int newFinalScore(int currentScore, int scoreToBeAdded) {
    finalScore = currentScore + scoreToBeAdded;
    if (currentScore == 0 && finalScore < 0) {
      return 0;
    } else {
      return finalScore;
    }
  }
}
