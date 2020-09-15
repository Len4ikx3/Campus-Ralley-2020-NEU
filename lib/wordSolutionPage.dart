import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:first_app/stationmenu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'introductionpage.dart';
import 'lastpage.dart';

class WordSolutionPage extends StatefulWidget {
  int currentScore;
  List<bool> tappedList;
  WordSolutionPage({@required this.currentScore, @required this.tappedList});
  @override
  State<StatefulWidget> createState() {
    return WordSolutionPageState(
        currentScore: currentScore, tappedList: tappedList);
  }
}

class WordSolutionPageState extends State<WordSolutionPage> {
  int currentScore;
  List<bool> tappedList;
  WordSolutionPageState(
      {@required this.currentScore, @required this.tappedList});
  String solution;
  Color selected = Color(0xFFBff8000);
  Color unselected = Colors.grey;

  final bool banner = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: banner,
        home: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xFFBff8000), Colors.white],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter),
                ),
              ),
              Column(
                children: [
                  Container(
                      height: 150,
                      padding: EdgeInsets.only(top: 40, left: 100, right: 100),
                      child: Text(
                        'Ralley beenden? Sicher?',
                        style: GoogleFonts.pathwayGothicOne(
                            color: Colors.white,
                            fontSize: 35,
                            letterSpacing: 2.0),
                        textAlign: TextAlign.center,
                      )),
                  Container(
                      padding: EdgeInsets.all(40),
                      margin: EdgeInsets.only(left: 30, right: 30),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(60),
                              bottomRight: Radius.circular(60))),
                      child: Column(
                        children: [
                          Text(
                            'Wenn ja, hier noch die letzte Chance, Punkte zu holen! Alle Buchstaben gemerkt? Dann hier Lösungswort in Großbuchstaben eingeben und für die richtige Antwort 100 P abholen:',
                            style: GoogleFonts.pathwayGothicOne(
                                color: Colors.grey,
                                fontSize: 21,
                                wordSpacing: 2.0),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          TextField(
                            onChanged: (text) {
                              solution = text;
                            },
                            onTap: () {
                              setState(() {
                                unselected = selected;
                              });
                            },
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30))),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFFBff8000)),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30))),
                                prefixIcon: Icon(
                                  Icons.edit,
                                  color: unselected,
                                ),
                                hintText: 'LÖSUNGSWORT',
                                hintStyle: GoogleFonts.pathwayGothicOne(
                                    color: unselected,
                                    fontSize: 21,
                                    wordSpacing: 2.0,
                                    letterSpacing: 3.0)),
                          ),
                          SizedBox(height: 50),
                          Text(
                            'Sei gewarnt: speicherst du deine Antwort, gibt es kein Zurück.',
                            style: GoogleFonts.pathwayGothicOne(
                                color: Colors.grey,
                                fontSize: 21,
                                wordSpacing: 2.0),
                          )
                        ],
                      )),
                  Expanded(
                      child: Container(
                          child: Center(
                              child: FlatButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(50))),
                                  color: Color(0xFFBff8000),
                                  splashColor: Colors.deepPurple[400],
                                  onPressed: () {
                                    setState(() {
                                      if (solution == 'APPETIT') {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => LastPage(
                                                    currentScore:
                                                        currentScore + 100)));
                                      } else {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => LastPage(
                                                    currentScore:
                                                        currentScore)));
                                      }
                                    });
                                  },
                                  child: Text(
                                    'Speichern und Ralley beenden',
                                    style: GoogleFonts.pathwayGothicOne(
                                        color: Colors.white,
                                        fontSize: 21,
                                        letterSpacing: 2.0),
                                  )))))
                ],
              ),
            ],
          ),
          bottomNavigationBar: CurvedNavigationBar(
            color: Color(0xFFBff8000),
            backgroundColor: Colors.white,
            buttonBackgroundColor: Color(0xFFBff8000),
            height: 50,
            animationDuration: Duration(milliseconds: 200),
            animationCurve: Curves.bounceInOut,
            index: 2,
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
                                newtappedList: tappedList,
                              )));
                });
              } else if (index == 0) {
                setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Introductionpage(
                                currentScore: currentScore,
                                tappedList: tappedList,
                              )));
                });
              } else {}
            },
          ),
        ));
  }
}
