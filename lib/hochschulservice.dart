import 'stationmenu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Hochschulservice extends StatefulWidget {
  int currentScore;
  int id;
  String question;
  List<int> points;
  List<String> answerTexts;
  int pressedCounter;

  Hochschulservice(
      {@required this.currentScore,
      @required this.id,
      @required this.question,
      @required this.points,
      @required this.answerTexts,
      @required this.pressedCounter});

  @override
  State<StatefulWidget> createState() {
    return HochschulserviceState(
        currentScore: currentScore,
        id: id,
        question: question,
        points: points,
        answerTexts: answerTexts,
        pressedCounter: pressedCounter);
  }
}

class HochschulserviceState extends State<Hochschulservice> {
  List<Color> buttonColor = [
    Color(0xFFBff8000),
    Color(0xFFBff8000),
    Color(0xFFBff8000),
    Color(0xFFBff8000),
    Color(0xFFBff8000)
  ];
  List<int> points;
  List<bool> answerValues;
  List<String> answerTexts;

  Color buttonUnselectedColor = Color(0xFFBff8000);
  Color buttonSelectedColor = Colors.deepPurple[300];

  int scoreToBeAdded = 0;
  int finalScore;

  int currentScore;
  int id;
  String question;
  int pressedCounter;
  String buttonText;
  IconData icon;

  String getButtonText() {
    if (pressedCounter == 0 || pressedCounter == 1) {
      buttonText = 'Weiter zur nächsten Frage';
    } else {
      buttonText = 'Speichern und zurück zur Stationenauswahl';
    }
    return buttonText;
  }

  IconData getButtonIcon() {
    if (pressedCounter == 0 || pressedCounter == 1) {
      icon = Icons.arrow_forward;
    } else {
      icon = Icons.save;
    }
    return icon;
  }

  HochschulserviceState(
      {@required this.currentScore,
      @required this.id,
      @required this.question,
      @required this.points,
      @required this.answerTexts,
      @required this.pressedCounter});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                                  child: Text(question,
                                      style: TextStyle(color: Colors.white)))),
                          Container(
                            padding: EdgeInsets.all(50),
                            child: Text(
                              '$id',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 50),
                            ),
                          ),
                        ],
                      )),
                  Container(
                      height: 300,
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
                                  scoreToBeAdded = scoreToBeAdded + points[0];
                                });
                              },
                              child: Text(answerTexts[0],
                                  style: TextStyle(color: Colors.white),
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
                                  scoreToBeAdded = scoreToBeAdded + points[1];
                                });
                              },
                              child: Text(answerTexts[1],
                                  style: TextStyle(color: Colors.white),
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
                                  scoreToBeAdded = scoreToBeAdded + points[2];
                                });
                              },
                              child: Text(answerTexts[2],
                                  style: TextStyle(color: Colors.white),
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
                                  scoreToBeAdded = scoreToBeAdded + points[3];
                                });
                              },
                              child: Text(
                                answerTexts[3],
                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
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
                              getButtonIcon(),
                              color: Color(0xFFBff8000),
                            ),
                            iconSize: 50,
                            splashColor: Color(0xFFBff8000),
                            onPressed: () {
                              setState(() {
                                if (pressedCounter == 0) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Hochschulservice(
                                              currentScore: newFinalScore(
                                                  currentScore, scoreToBeAdded),
                                              id: id,
                                              question:
                                                  'Hier gibt es 3 Fragen zu 3 Themen. Frage 2: Wer bekommt einen Teil der Kosten für das Semesterticket?',
                                              points: [-10, -10, -10, 10],
                                              answerTexts: [
                                                'Ich',
                                                'Tutoren',
                                                'HSST',
                                                'Studentenwerk'
                                              ],
                                              pressedCounter: 1)));
                                } else if (pressedCounter == 1) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Hochschulservice(
                                              currentScore: newFinalScore(
                                                  currentScore, scoreToBeAdded),
                                              id: id,
                                              question:
                                                  'Hier gibt es 3 Fragen zu 3 Themen. Frage 3: Welche Businien fahren von der FH aus ab?',
                                              points: [10, -10, -10, -10],
                                              answerTexts: [
                                                'Buslinie 114',
                                                'Buslinie 14',
                                                'Buslinie 16',
                                                'Buslinie 216'
                                              ],
                                              pressedCounter: 2)));
                                } else {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Stationmenu(
                                              newCurrentScore: newFinalScore(
                                                  currentScore,
                                                  scoreToBeAdded))));
                                }
                              });
                            }),
                        Text(getButtonText(),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFBff8000),
                              fontSize: 17,
                            ))
                      ],
                    ),
                  )
                ],
              ),
            )));
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
