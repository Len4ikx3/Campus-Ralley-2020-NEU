import 'package:flutter/material.dart';
//import 'stationChoice.dart';
import 'stationmenu.dart';

void main() => runApp(MaterialApp(
      home: Introductionpage(),
    ));

class Introductionpage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return IntroductionpageState();
  }
}

class IntroductionpageState extends State<Introductionpage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          body: Container(
            child: Column(
              children: <Widget>[
                /*Container(
                    color: Color(0xFFBff8000),
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        '- FHWS -',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    )),*/
                Container(
                    margin: const EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[
                        Container(
                            margin: const EdgeInsets.only(top: 50),
                            color: Color(0xFFBff8000),
                            child: Text(
                              'HERZLICH WILLKOMMEN AN DER HOCHSCHULE FÜR ANGEWANDTE WISSENSCHAFTEN WÜRZBURG SCHWEINFURT',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            )),
                        Container(
                            margin: const EdgeInsets.only(top: 20),
                            child: Text(
                              'Es freut uns, dass du deinen Weg zu uns gefunden hast. Um dir den Start ins Studium etwas zu erleichtern, wollen wir dich mit Hilfe der Campus Ralley vertraut machen mit:',
                              style: TextStyle(
                                color: Color(0xFFBff8000),
                                fontSize: 18,
                              ),
                            )),
                        Container(
                            margin: const EdgeInsets.only(top: 20),
                            child: Text(
                              '- den Gebäuden auf dem Campus',
                              style: TextStyle(
                                color: Color(0xFFBff8000),
                                fontSize: 18,
                              ),
                            )),
                        Container(
                            margin: const EdgeInsets.only(top: 20),
                            child: Text(
                              '- deinen relevantesten Anlaufstellen',
                              style: TextStyle(
                                color: Color(0xFFBff8000),
                                fontSize: 18,
                              ),
                            )),
                        Container(
                            margin: const EdgeInsets.only(top: 20),
                            child: Text(
                              'Die Ralley besteht aus X Stationen, die jeweils eine Aufgabe bereithalten. Mit jeder Station besteht eine Chance, Punkte für das Team zu sammeln. Das Team, das am Ende die meisten Punkte absahnt, erhält eine schöne Belohnung ;)',
                              style: TextStyle(
                                color: Color(0xFFBff8000),
                                fontSize: 18,
                              ),
                            )),
                        Container(
                            child: Text(
                          'Innerhalb der Ralley gibt es kein Zurück, also seid aufmerksam!',
                          style: TextStyle(
                            color: Color(0xFFBff8000),
                            fontSize: 18,
                          ),
                        ))
                      ],
                    )),
                Container(
                    //padding: EdgeInsets.only(),
                    // margin: const EdgeInsets.only(top: 150),
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    MaterialButton(
                      height: 50,
                      color: Color(0xFFBff8000),
                      onPressed: goToStationChoice,
                      child: Text(
                        'Verstanden, starte die Ralley',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    )
                  ],
                )),
                Container(),
                /*Container(
                padding: EdgeInsets.all(50.0),
                // margin: const EdgeInsets.only(top: 150),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    MaterialButton(
                      height: 50,
                      color: Color(0xFFBff8000),
                      onPressed: //goToTest,
                      child: Text(
                        'TEST',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    )
                  ],
                )),*/
              ],
            ),
          ),
        ));
  }

  void goToStationChoice() {
    setState(() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Stationmenu()));
    });
  }
}
