import 'package:first_app/answer.dart';
import 'package:first_app/multipleChoice4.dart';

import 'input.dart';
import 'inputTimer.dart';
import 'multipleChoice3.dart';
import 'qrCode.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'wordSolutionPage.dart';
import 'package:flutter/services.dart';

class StationCarousel extends StatefulWidget {
  int currentScore;
  StationCarousel({this.currentScore});
  @override
  StationCarouselState createState() =>
      StationCarouselState(currentScore: currentScore);
}

class StationCarouselState extends State<StationCarousel> {
  int currentScore;
  StationCarouselState({this.currentScore});

  Widget stationList() {
    return Container(
        child: ListView(
      scrollDirection: Axis.vertical,
      children: [
        StationTile(
          onTap: () {},
          imagepath: "lib/images/Foyer.jpg",
          stationnr: 1,
          stationtitle: "Foyer Institutsgebäude",
          currentScore: currentScore,
        ),
        StationTile(
          onTap: () {},
          imagepath: "lib/images/fachschaft.png",
          stationnr: 2,
          stationtitle: "Fachschaft",
          currentScore: currentScore,
        ),
        StationTile(
          onTap: () {},
          //gibts kein bild
          imagepath: "lib/images/FHWS.jpg",
          stationnr: 3,
          stationtitle: "Hochschulservice Studium HSST",
          currentScore: currentScore,
        ),
        StationTile(
          onTap: () {},
          //gibts kein bild
          imagepath: "lib/images/FHWS.jpg",
          stationnr: 4,
          stationtitle: "Studierraum",
          currentScore: currentScore,
        ),
        StationTile(
          onTap: () {},
          //gibts kein bild
          imagepath: "lib/images/FHWS.jpg",
          stationnr: 5,
          stationtitle: "Technische Mitarbeiter",
          currentScore: currentScore,
        ),
        StationTile(
          onTap: () {},
          imagepath: "lib/images/labor.jpg",
          stationnr: 6,
          stationtitle: "Labor",
          currentScore: currentScore,
        ),
        StationTile(
          onTap: () {},
          //gibts kein bild
          imagepath: "lib/images/FHWS.jpg",
          stationnr: 7,
          stationtitle: "Drucker und Kopierer",
          currentScore: currentScore,
        ),
        StationTile(
          onTap: () {},
          imagepath: "lib/images/innonight.jpg",
          stationnr: 8,
          stationtitle: "Innonight",
          currentScore: currentScore,
        ),
        StationTile(
          onTap: () {},
          imagepath: "lib/images/stillzimmer.jpg",
          stationnr: 9,
          stationtitle: "Stillzimmer",
          currentScore: currentScore,
        ),
        StationTile(
          onTap: () {},
          //gibts kein bild
          imagepath: "lib/images/FHWS.jpg",
          stationnr: 10,
          stationtitle: "Dekan",
          currentScore: currentScore,
        ),
        StationTile(
          onTap: () {},
          imagepath: "lib/images/wasser.png",
          stationnr: 11,
          stationtitle: "Wasserspender",
          currentScore: currentScore,
        ),
        StationTile(
          onTap: () {},
          imagepath: "lib/images/welearn.png",
          stationnr: 12,
          stationtitle: "Welearn",
          currentScore: currentScore,
        ),
        StationTile(
          onTap: () {},
          //gibts kein bild
          imagepath: "lib/images/FHWS.jpg",
          stationnr: 13,
          stationtitle: "Dekanat",
          currentScore: currentScore,
        ),
        StationTile(
          onTap: () {},
          //gibts kein bild
          imagepath: "lib/images/FHWS.jpg",
          stationnr: 14,
          stationtitle: "Glasbrett",
          currentScore: currentScore,
        ),
        StationTile(
          onTap: () {},
          //gibts kein bild
          imagepath: "lib/images/FHWS.jpg",
          stationnr: 15,
          stationtitle: "IWInet",
          currentScore: currentScore,
        ),
        StationTile(
          onTap: () {},
          imagepath: "lib/images/parken.jpg",
          stationnr: 16,
          stationtitle: "Tiefgarage",
          currentScore: currentScore,
        ),
        StationTile(
          onTap: () {},
          imagepath: "lib/images/tischtennis.jpg",
          stationnr: 17,
          stationtitle: "Tischtennis",
          currentScore: currentScore,
        ),
        StationTile(
          onTap: () {},
          imagepath: "lib/images/Innenhof.jpg",
          stationnr: 18,
          stationtitle: "Innenhof",
          currentScore: currentScore,
        ),
        StationTile(
          onTap: () {},
          imagepath: "lib/images/Cafe.jpeg",
          stationnr: 19,
          stationtitle: "Cafeteria",
          currentScore: currentScore,
        ),
        StationTile(
          onTap: () {},
          imagepath: "lib/images/H1.jpg",
          stationnr: 20,
          stationtitle: "Hörsaal",
          currentScore: currentScore,
        ),
        StationTile(
          onTap: () {},
          //Bild muss ausgetauscht werden!
          imagepath: "lib/images/sport.jpg",
          stationnr: 21,
          stationtitle: "Hochschulsport",
          currentScore: currentScore,
        ),
        StationTile(
          onTap: () {},
          imagepath: "lib/images/bib.jpg",
          stationnr: 22,
          stationtitle: "Unibibliothek",
          currentScore: currentScore,
        ),
        StationTile(
          onTap: () {},
          imagepath: "lib/images/mensa.jpg",
          stationnr: 23,
          stationtitle: "Mensa",
          currentScore: currentScore,
        ),
      ],
    ));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: stationList(),
    );
  }
}

// ignore: must_be_immutable
class StationTile extends StatelessWidget {
  String imagepath;
  int stationnr;
  String stationtitle;
  GestureTapCallback onTap;
  int currentScore;

  StationTile(
      {this.onTap,
      this.imagepath,
      this.stationnr,
      this.stationtitle,
      this.currentScore});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          if (stationnr == 1) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => InputTimer(
                        currentScore: currentScore,
                        id: stationnr,
                        description:
                            'Auf die Dekce, fertig, los! Alle müssen auf die Decke und sie einmal umdrehen. Aber Achtung! Es darf keiner von der Decke runter ;-) Schafft ihr es in x Sekunden könnt ihr jeweils 10 P. ergattern, sonst geht ihr leer aus',
                        timer: 25)));
          }
          if (stationnr == 2) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MultipleChoice3(
                            id: 2,
                            question:
                                'Gut zugehört? Was sind die Aufgaben der Fachschaft?',
                            points: [
                              10,
                              -10,
                              10
                            ],
                            answerValues: [
                              true,
                              false,
                              true
                            ],
                            answerTexts: [
                              'Organisation der Ersti-Fete',
                              'Entgegennehmen der Studentenausweise',
                              'Öffnen der Seminarräume'
                            ])));
          }
          if (stationnr == 3) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Input(
                          currentScore: currentScore,
                          id: stationnr,
                          description: 'Das ist eine Beschreibung',
                          hintText: 'zB 12',
                        )));
          }
          if (stationnr == 5) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => QrCode(
                        currentScore: currentScore,
                        id: stationnr,
                        description:
                            'Findet einen QR-Code und scannt ihn ein. Merkt euch die ganzen Buchstaben, die ihr scannt... ;)')));
          }
          if (stationnr == 6) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MultipleChoice3(
                            id: stationnr,
                            question: 'Ab ins Labor! Was habt ihr gefunden?',
                            points: [
                              -10,
                              10,
                              -10
                            ],
                            answerValues: [
                              false,
                              true,
                              false
                            ],
                            answerTexts: [
                              'Versuchsratte',
                              'Alter Fernseher',
                              'Hängematte'
                            ])));
          }
          if (stationnr == 7) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => QrCode(
                        currentScore: currentScore,
                        id: stationnr,
                        description:
                            'Zugehört und verstanden? Dann zeigt euer können. Sucht einen USB-Stick und druckt den Inhalt aus. Welcher Buchstabe ist es?')));
          }
          if (stationnr == 9) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => QrCode(
                        currentScore: currentScore,
                        id: stationnr,
                        description: 'Wer findet den QR-Code?')));
          }
          if (stationnr == 11) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Input(
                          currentScore: currentScore,
                          id: stationnr,
                          description:
                              'Lasst die Spiele beginnen! Jeder aus der Gruppe hat einen Versuch. Ihr müsst versuchen so viele Flaschen wie möglich umzuwerfen. Jede Flasche bringt einen Punkt',
                          hintText: 'zB 25',
                        )));
          }
          if (stationnr == 12) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => QrCode(
                        currentScore: currentScore,
                        id: stationnr,
                        description: 'Auf zum Scannen!')));
          }
          if (stationnr == 13) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MultipleChoice4(
                            id: stationnr,
                            question:
                                'Das Dekanat übernimmt welche Aufgaben...?',
                            points: [
                              10,
                              -10,
                              -10,
                              10
                            ],
                            answerValues: [
                              true,
                              false,
                              false,
                              true
                            ],
                            answerTexts: [
                              'Organisation & Betreuung der Tutoren',
                              'Annahme gefundener Studentenausweise',
                              'Entgegennahme von Anzahlungen für neue Studentenausweise',
                              'Weiterleitung von Briefen/Post an Professoren und Mitarbeiter'
                            ])));
          }
          if (stationnr == 14) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => QrCode(
                        currentScore: currentScore,
                        id: stationnr,
                        description:
                            'Euch fehlen noch ein paar Buchstaben für ein Wort, welcher ist es wohl?')));
          }
          if (stationnr == 15) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => QrCode(
                        currentScore: currentScore,
                        id: stationnr,
                        description: 'Was ist der nächste Buchstabe?')));
          }
          if (stationnr == 17) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Input(
                          currentScore: currentScore,
                          id: stationnr,
                          description:
                              'Schon Punkte gesammelt? Mindestens 10 von euch müssen spielen. Ihr lauft um die Tischtennisplatte und schlagt dabei den Ball mit der Hand auf. Geht der daneben, ist die Person raus. Ein erfolgreicher Aufschlag = 1 Punkt',
                          hintText: 'zB 36',
                        )));
          }
          if (stationnr == 18) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Input(
                          currentScore: currentScore,
                          id: stationnr,
                          description:
                              'Weitwurf ist angesagt! Aber mit Teebeuteln ;-) Jeder bekommt einen vollgesaugten Teebeutel und muss ihn mit dem Mund so weit wie möglich werfen. Jeder Meter bringt euch einen Punkt',
                          hintText: '1,05m = 105 Punkte',
                        )));
          }
          if (stationnr == 23) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => WordSolutionPage(
                        /*currentScore: currentScore,
                          id: stationnr,
                          description: 'Das ist eine Beschreibung',
                          hintText: 'zB 12',*/
                        )));
          }
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          height: 200,
          margin: EdgeInsets.only(bottom: 20),
          //width: 300,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Stack(
              children: [
                Image.asset(
                  imagepath,
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                ),
                Container(
                  color: Colors.black26,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '$stationnr',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          stationtitle,
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
