/*import 'package:first_app/startingpage.dart';
import 'package:first_app/tappingtest.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  String answerText;
  int answerNr;
  GestureTapCallback onTap;
  int score;

  Answer({this.onTap, this.answerNr, this.answerText, this.score});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          if (answerNr == 1) {
            score = score + 10;
          } else {
            score = score - 10;
          }
        },
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Container(
            height: 40,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFFBff8000),
            ),
            child: Center(
              child: Text(answerText,
                  style: TextStyle(color: Colors.white, fontSize: 16)),
            ),
          ),
        ));
  }
}/*

/*class Answer extends StatefulWidget {
  final String answerText;
  int score;

  Answer({this.answerText, this.score});

  @override
  State<StatefulWidget> createState() {
    return AnswerState();
  }
}

class AnswerState extends State<Answer> {
  final String answerText;
  int score;

  Color colorToShow = Color(0xFFBff8000);
  Color buttonUnselectedColor = Color(0xFFBff8000);
  Color buttonSelectedColor = Colors.deepPurple;

  AnswerState({
    this.answerText,
    this.score,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: MaterialButton(
        color: colorToShow,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        minWidth: 300,
        height: 50,
        child: Text(
          '$answerText',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        onPressed: changeButtonState,
      ),
    );
  }

  void changeButtonState() {
    setState(() {
      if (colorToShow == buttonUnselectedColor) {
        colorToShow = buttonSelectedColor;
        //addPointsTo(totalScore);
      } else {
        colorToShow = buttonUnselectedColor;
        //removePointsFrom(totalScore);
      }
    });
  }
}*/*/*/
