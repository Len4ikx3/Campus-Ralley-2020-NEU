import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:first_app/wordSolutionPage.dart';
import 'package:flutter/material.dart';
//import 'stationChoice.dart';
import 'stationmenu.dart';

class Introductionpage extends StatefulWidget {
  int currentScore;
  Introductionpage({@required this.currentScore});
  @override
  State<StatefulWidget> createState() {
    return IntroductionpageState(currentScore: currentScore);
  }
}

class IntroductionpageState extends State<Introductionpage> {
  int currentScore;
  IntroductionpageState({@required this.currentScore});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
        color: Color(0xFFBff8000),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 100, right: 100, top: 40),
              height: 90,
              child: Text(
                'Ralley Regelwerk',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
            Expanded(
                child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.red,
                            spreadRadius: 5,
                            blurRadius: 20,
                            offset: Offset(0, 3))
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60))),
                ),
                Container(
                    padding: EdgeInsets.only(
                        top: 30, bottom: 30, left: 50, right: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Navigation',
                          style: TextStyle(
                              color: Color(0xFFBff8000), fontSize: 20),
                        ),
                        Text(
                          '▪ erfolgt über die untere Navigationsleiste',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                        Text(
                          '▪ die Ralley wird durch Klick auf das rechte Symbol beendet',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Stationen',
                          style: TextStyle(
                              color: Color(0xFFBff8000), fontSize: 20),
                        ),
                        Text(
                          '▪ eine Station wird über die Stationsliste ausgewählt',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                        Text(
                          '▪ eine Station kann nur 1 mal aufgerufen werden',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Punkte',
                          style: TextStyle(
                              color: Color(0xFFBff8000), fontSize: 20),
                        ),
                        Text(
                          '▪ angezeigt werden nur die eigenen gesammelten Punkte',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                        Text(
                          '▪ bei Multiple Choice Fragen kann mindestens eine Antwort richtig sein',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                        Text(
                          '▪ für richtige Antworten gibt es 10 Punkte, für falsche Antworten werden 10 Punkte abgezogen',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                        Text(
                          '▪ es können aus einer Station auch Negativ-Punkte ergattert werden',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                        Text(
                          '▪ ABER: die eigene Punktzahl wird nie negativ',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                        Text(
                          '▪ die Gesamtpunktzahl der Gruppe muss am Ende der Ralley aus allen einzelnen Punkten der Gruppe berechnet werden',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                      ],
                    ))
              ],
            ))
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Color(0xFFBff8000),
        backgroundColor: Colors.white,
        buttonBackgroundColor: Color(0xFFBff8000),
        height: 50,
        animationDuration: Duration(milliseconds: 200),
        animationCurve: Curves.bounceInOut,
        index: 0,
        items: <Widget>[
          Icon(
            Icons.feedback,
            size: 20,
            color: Colors.white,
          ),
          Icon(
            Icons.menu,
            size: 20,
            color: Colors.white,
          ),
          Icon(Icons.exit_to_app, size: 20, color: Colors.white)
        ],
        onTap: (index) {
          if (index == 1) {
            setState(() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Stationmenu(
                            newCurrentScore: currentScore,
                          )));
            });
          } else if (index == 2) {
            setState(() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          WordSolutionPage(currentScore: currentScore)));
            });
          } else {}
        },
      ),
    ));
  }
}
