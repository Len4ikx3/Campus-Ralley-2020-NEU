/*import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatefulWidget {
  bool correct;
  Color buttonColor = Color(0xFFBff8000);
  String answerText;
  int points;
  int scoreToBeAdded;

  Color buttonUnselectedColor = Color(0xFFBff8000);
  Color buttonSelectedColor = Colors.deepPurple[300];

  Answer({
    @required this.scoreToBeAdded,
    @required this.answerText,
    @required this.points,
    @required this.correct,
  });

  @override
  _AnswerState createState() => _AnswerState(
      scoreToBeAdded: scoreToBeAdded,
      answerText: answerText,
      points: points,
      correct: correct,
      buttonColor: buttonColor);
}

class _AnswerState extends State<Answer> {
  bool correct;
  Color buttonColor;
  String answerText;
  int points;
  int scoreToBeAdded;

  _AnswerState(
      {@required this.scoreToBeAdded,
      @required this.answerText,
      @required this.points,
      @required this.correct,
      @required this.buttonColor});

  Color buttonUnselectedColor = Color(0xFFBff8000);
  Color buttonSelectedColor = Colors.deepPurple[300];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: FlatButton(
        color: buttonColor,
        onPressed: () {
          changeScore(correct, scoreToBeAdded);
        },
        child: Text(
          answerText,
          style: TextStyle(color: Colors.white),
        ),
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 150),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }

  void changeScore(bool correct, int scoreToBeAdded) {
    setState(() {
      if (correct) {
        if (buttonColor == buttonUnselectedColor) {
          buttonColor = buttonSelectedColor;
          scoreToBeAdded = scoreToBeAdded + points;
        } else {
          buttonColor = buttonUnselectedColor;
          scoreToBeAdded = scoreToBeAdded - points;
        }
      } else {
        if (buttonColor == buttonUnselectedColor) {
          buttonColor = buttonSelectedColor;
          scoreToBeAdded = scoreToBeAdded + points;
        } else {
          buttonColor = buttonUnselectedColor;
          scoreToBeAdded = scoreToBeAdded - points;
        }
      }
    });
  }
}*/
