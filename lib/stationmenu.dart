import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:first_app/introductionpage.dart';
import 'package:first_app/wordSolutionPage.dart';
import 'package:flutter/material.dart';
import 'stationcarousel.dart';
//import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Stationmenu(),
    ));

// ignore: must_be_immutable
class Stationmenu extends StatefulWidget {
  int newCurrentScore;
  Stationmenu({this.newCurrentScore});
  @override
  State<StatefulWidget> createState() {
    return StationmenuState(newCurrentScore);
  }
}

class StationmenuState extends State<Stationmenu> {
  int currentScore;
  int newCurrentScore;

  StationmenuState(newCurrentScore) {
    if (newCurrentScore == null) {
      currentScore = 0;
    } else {
      currentScore = newCurrentScore;
    }
  }

  //currentScore = newCurrentScore;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
                  child: Text('- FHWS -',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.end),
                )),
            Container(
              height: 100,
              child: Center(
                child: Text('Punkte: $currentScore',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              child: Center(
                child: Text('Wähle eine Station und sammle Punkte!',
                    style: TextStyle(color: Color(0xFFBff8000), fontSize: 18)),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                height: 530,
                child: StationCarousel(
                  currentScore: currentScore,
                ))
          ],
        ),
      )),
      bottomNavigationBar: CurvedNavigationBar(
        color: Color(0xFFBff8000),
        backgroundColor: Colors.white,
        buttonBackgroundColor: Color(0xFFBff8000),
        height: 50,
        animationDuration: Duration(milliseconds: 200),
        animationCurve: Curves.bounceInOut,
        index: 1,
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
          if (index == 0) {
            setState(() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Introductionpage(
                            currentScore: currentScore,
                          )));
            });
          } else if (index == 2) {
            setState(() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WordSolutionPage(
                            currentScore: currentScore,
                          )));
            });
          }
        },
      ),
    ));
  }
}
