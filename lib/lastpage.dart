import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
                                height: 80,
                                padding: EdgeInsets.only(top: 5),
                                child: Text(
                                  'Geschafft!',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.kaushanScript(
                                    color: Colors.grey,
                                    fontSize: 50,
                                  ),
                                )),
                            Container(
                                padding: EdgeInsets.all(20),
                                child: Text(
                                  'Erreichte Punkte:',
                                  style: GoogleFonts.pathwayGothicOne(
                                      color: Color(0xFFBff8000),
                                      fontSize: 20,
                                      letterSpacing: 2.0),
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
                                  style: GoogleFonts.pathwayGothicOne(
                                    color: Colors.white,
                                    fontSize: 56,
                                  ),
                                ))),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 100),
                              padding: EdgeInsets.only(top: 30),
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
                                  'Ab geht \'s in die Mensa zum Mittagessen.\nUm 14 Uhr findet die Gewinnvergabe an der FHWS statt. \n\nWir wünschen dir für die Zukunft viel Spaß und Erfolg beim Studium!',
                                  style: GoogleFonts.pathwayGothicOne(
                                      color: Color(0xFFBff8000),
                                      fontSize: 20,
                                      wordSpacing: 2.0),
                                  textAlign: TextAlign.center,
                                )),
                            Container(
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
                                  style: GoogleFonts.pathwayGothicOne(
                                    color: Colors.grey[400],
                                    fontSize: 19,
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
