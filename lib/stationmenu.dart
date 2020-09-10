import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:first_app/introductionpage.dart';
import 'package:first_app/wordSolutionPage.dart';
import 'package:flutter/material.dart';
import 'stationcarousel.dart';

// ignore: must_be_immutable
class Stationmenu extends StatefulWidget {
  int newCurrentScore;
  List<bool> newtappedList;
  Stationmenu({
    this.newCurrentScore,
    this.newtappedList,
  });
  @override
  State<StatefulWidget> createState() {
    return StationmenuState(newCurrentScore, newtappedList);
  }
}

class StationmenuState extends State<Stationmenu> {
  int currentScore;
  int newCurrentScore;
  List<bool> tappedList;
  List<bool> newtappedList;
  List<String> pictureList;

  StationmenuState(
    newCurrentScore,
    newtappedList,
  ) {
    if (newCurrentScore == null) {
      currentScore = 0;
    } else {
      currentScore = newCurrentScore;
    }
    if (newtappedList == null) {
      tappedList = [
        false,
        false,
        false,
        false,
        false,
        false,
        false,
        false,
        false,
        false,
        false,
        false,
        false,
        false,
        false,
        false,
        false,
        false,
        false,
        false,
        false,
        false
      ];
    } else {
      tappedList = newtappedList;
    }
  }

  final bool banner = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: banner,
        home: Scaffold(
          backgroundColor: Colors.white,
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
                        style:
                            TextStyle(color: Color(0xFFBff8000), fontSize: 18)),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                    height: 530,
                    child: StationCarousel(
                      currentScore: currentScore,
                      tappedList: tappedList,
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
                                tappedList: tappedList,
                              )));
                });
              } else if (index == 2) {
                setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => WordSolutionPage(
                                currentScore: currentScore,
                                tappedList: tappedList,
                              )));
                });
              }
            },
          ),
        ));
  }
}
