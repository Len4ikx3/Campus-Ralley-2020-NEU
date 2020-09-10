import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LastPage extends StatefulWidget {
  int currentScore;
  LastPage({@required this.currentScore});
  @override
  State<StatefulWidget> createState() {
    return LastPageState(currentScore: currentScore);
  }
}

class LastPageState extends State<LastPage> {
  int currentScore;
  LastPageState({@required this.currentScore});

  final bool banner = false;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
        child: MaterialApp(
            debugShowCheckedModeBanner: banner,
            home: Scaffold(
              body: Container(
                  child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                        margin: const EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            Container(
                                height: 140,
                                padding: EdgeInsets.only(top: 80),
                                child: Text(
                                  'Geschafft!',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 30,
                                  ),
                                )),
                            Container(
                                padding: EdgeInsets.all(20),
                                child: Text(
                                  'Erreichte Punkte:',
                                  style: TextStyle(
                                    color: Color(0xFFBff8000),
                                    fontSize: 17,
                                  ),
                                )),
                            Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Color(0xFFBff8000),
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.deepOrangeAccent[100],
                                          spreadRadius: 3,
                                          blurRadius: 10,
                                          offset: Offset(0, 3))
                                    ]),
                                padding: EdgeInsets.all(10),
                                child: Center(
                                    child: Text(
                                  currentScore.toString(),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 50,
                                  ),
                                ))),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 100),
                              padding: EdgeInsets.only(top: 50),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Icon>[
                                  Icon(
                                    Icons.restaurant_menu,
                                    color: Colors.grey[400],
                                  ),
                                  Icon(
                                    Icons.fastfood,
                                    color: Colors.grey[400],
                                  ),
                                  Icon(
                                    Icons.local_cafe,
                                    color: Colors.grey[400],
                                  ),
                                  Icon(
                                    Icons.restaurant,
                                    color: Colors.grey[400],
                                  )
                                ],
                              ),
                            ),
                            Container(
                                padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
                                child: Text(
                                  'Ab geht \'s in die Mensa zum Mittagessen.\nUm 14 Uhr findet die Gewinnvergabe an der FHWS statt. \n\nWir wünschen dir für die Zukunft viel Spaß und Erfolg bei Studium!',
                                  style: TextStyle(
                                    color: Color(0xFFBff8000),
                                    fontSize: 18,
                                  ),
                                  textAlign: TextAlign.center,
                                )),
                            Container(
                              padding: EdgeInsets.only(top: 30),
                              child: RaisedButton(
                                  color: Color(0xFFBff8000),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                  onPressed: _launchURL,
                                  child: Icon(
                                    Icons.play_circle_filled,
                                    color: Colors.white,
                                  )),
                            ),
                            Container(
                                padding: EdgeInsets.symmetric(horizontal: 40),
                                child: Text(
                                  'Hier noch eine Zusammenfassung der Stationen in Video-Form ;)',
                                  style: TextStyle(
                                    color: Colors.grey[400],
                                    fontSize: 17,
                                  ),
                                  textAlign: TextAlign.center,
                                ))
                          ],
                        )),
                  ],
                ),
              )),
            )));
  }

  _launchURL() async {
    const url =
        'https://fiw.fhws.de/fileadmin/redaktion/bildmaterial/FHWS_bilder/SHL-Tour.mp4';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
