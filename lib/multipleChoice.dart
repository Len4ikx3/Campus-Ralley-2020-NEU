import 'stationmenu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MultipleChoice extends StatefulWidget {
  int currentScore;
  int id;
  String question;

  MultipleChoice({
    this.currentScore,
    @required this.id,
    @required this.question,
  });

  @override
  State<StatefulWidget> createState() {
    return MultipleChoiceState(
      currentScore: currentScore,
      id: id,
      question: question,
    );
  }
}

class MultipleChoiceState extends State<MultipleChoice> {
  List<Color> buttonColor = [
    Color(0xFFBff8000),
    Color(0xFFBff8000),
    Color(0xFFBff8000)
  ];
  List<int> buttonPoints = [10, -10, 10];
  List<bool> answers = [true, false, true];
  List<String> answerTexts = ['1', '2', '3'];

  Color buttonUnselectedColor = Color(0xFFBff8000);
  Color buttonSelectedColor = Colors.deepPurple[300];

  int scoreToBeAdded = 0;
  int finalScore;

  int currentScore;
  int id;
  String question;

  MultipleChoiceState({
    @required this.currentScore,
    @required this.id,
    @required this.question,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
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
                      '0$id',
                      style: TextStyle(color: Colors.grey, fontSize: 50),
                    ),
                  ),
                ],
              )),
          Container(
              height: 300,
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(10),
                    child: FlatButton(
                      color: buttonColor[0],
                      onPressed: () {
                        changeScore(0, answers[0]);
                      },
                      child: Text(
                        answerTexts[0],
                        style: TextStyle(color: Colors.white),
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 150),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: FlatButton(
                      color: buttonColor[1],
                      onPressed: () {
                        changeScore(1, answers[1]);
                      },
                      child: Text(
                        answerTexts[1],
                        style: TextStyle(color: Colors.white),
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 150),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: FlatButton(
                      color: buttonColor[2],
                      onPressed: () {
                        changeScore(2, answers[2]);
                      },
                      child: Text(
                        answerTexts[2],
                        style: TextStyle(color: Colors.white),
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 150),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                ],
              )),
          Container(
              child:
                  Text(newFinalScore(currentScore, scoreToBeAdded).toString())),
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
                                        currentScore, scoreToBeAdded))));
                      });
                    }),
                Text('Speichern und zurück zur Stationenauswahl',
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
    ));
  }

  void changeScore(int buttonnr, bool correct) {
    setState(() {
      if (correct) {
        if (buttonColor[buttonnr] == buttonUnselectedColor) {
          buttonColor[buttonnr] = buttonSelectedColor;
          scoreToBeAdded = scoreToBeAdded + buttonPoints[buttonnr];
        } else {
          buttonColor[buttonnr] = buttonUnselectedColor;
          scoreToBeAdded = scoreToBeAdded - buttonPoints[buttonnr];
        }
      } else {
        if (buttonColor[buttonnr] == buttonUnselectedColor) {
          buttonColor[buttonnr] = buttonSelectedColor;
          scoreToBeAdded = scoreToBeAdded + buttonPoints[buttonnr];
        } else {
          buttonColor[buttonnr] = buttonUnselectedColor;
          scoreToBeAdded = scoreToBeAdded - buttonPoints[buttonnr];
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
