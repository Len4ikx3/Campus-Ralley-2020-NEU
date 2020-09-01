import 'package:flutter/material.dart';
//import 'ralley.dart';

void main() => runApp(MaterialApp(
      home: LastPage(),
    ));

class LastPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LastPageState();
  }
}

class LastPageState extends State<LastPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          body: Container(
            child: Column(
              children: <Widget>[
                Container(
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
                    )),
                Container(
                    margin: const EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        Container(
                            padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                            margin: const EdgeInsets.only(top: 50),
                            color: Color(0xFFBff8000),
                            child: Text(
                              'Du hast es geschafft!',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            )),
                        Container(
                            padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
                            child: Text(
                              'Mögliche Punkte: 100 \nErreichten Punkte:',
                              style: TextStyle(
                                color: Color(0xFFBff8000),
                                fontSize: 18,
                              ),
                            )),
                        Container(
                            padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
                            child: Text(
                              'hallo',
                              //'${finalScore}',
                              //textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFFBff8000),
                                fontSize: 34,
                              ),
                            )),
                        Container(
                            padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
                            child: Text(
                              'Du kannst jetzt in der Mensa zu Mittag essen. \n\nUm 14 Uhr findet die Gewinnvergabe an der FHWS statt. \n\nWir wünschen dir viel Spaß bei deinem Studium!',
                              style: TextStyle(
                                color: Color(0xFFBff8000),
                                fontSize: 18,
                              ),
                            )),
                      ],
                    )),
              ],
            ),
          ),
        ));
  }
}
