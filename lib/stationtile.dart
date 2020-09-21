import 'package:first_app/dekan.dart';
import 'package:first_app/hsstundunibib.dart';
import 'package:first_app/innonight.dart';
import 'package:first_app/multipleChoice4.dart';
import 'package:google_fonts/google_fonts.dart';

import 'input.dart';
import 'inputTimer.dart';
import 'multipleChoice3.dart';
import 'qrCode.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class StationTile extends StatefulWidget {
  String imagepath;
  int stationnr;
  String stationtitle;
  GestureTapCallback onTap;
  int currentScore;
  bool tapped;
  List<bool> tappedList;

  StationTile({
    @required this.onTap,
    this.imagepath,
    @required this.stationnr,
    @required this.stationtitle,
    @required this.currentScore,
    @required this.tapped,
    @required this.tappedList,
  });

  @override
  _StationTileState createState() => _StationTileState(
        onTap: onTap,
        imagepath: imagepath,
        stationnr: stationnr,
        stationtitle: stationtitle,
        currentScore: currentScore,
        tapped: tapped,
        tappedList: tappedList,
      );
}

class _StationTileState extends State<StationTile> {
  String imagepath;
  int stationnr;
  String stationtitle;
  GestureTapCallback onTap;
  int currentScore;
  bool tapped;
  List<bool> tappedList;

  _StationTileState({
    @required this.onTap,
    @required this.imagepath,
    @required this.stationnr,
    @required this.stationtitle,
    @required this.currentScore,
    @required this.tapped,
    @required this.tappedList,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          if (stationnr == 1) {
            if (tapped == false) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => InputTimer(
                            currentScore: currentScore,
                            id: stationnr,
                            description:
                                'Auf die Decke, fertig, los! Alle müssen auf die Decke und sie einmal umdrehen. Aber Achtung! Es darf keiner von der Decke runter ;-) Schafft ihr es in x Sekunden könnt ihr jeweils 10 P. ergattern, sonst geht ihr leer aus',
                            timer: 25,
                            tappedList: tappedList,
                          )));
            } else {}
          }
          if (stationnr == 2) {
            if (tapped == false) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MultipleChoice3(
                            currentScore: currentScore,
                            id: stationnr,
                            question:
                                'Gut zugehört? Was sind die Aufgaben der Fachschaft?',
                            points: [10, -10, 10],
                            answerValues: [true, false, true],
                            answerTexts: [
                              'Organisation der Ersti-Fete',
                              'Entgegennehmen der Studentenausweise',
                              'Öffnen der Seminarräume'
                            ],
                            tappedList: tappedList,
                          )));
            } else {}
          }
          if (stationnr == 3) {
            if (tapped == false) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HSSTundUnibib(
                            currentScore: currentScore,
                            id: stationnr,
                            question:
                                'Hier gibt es 3 Fragen zu 3 Themen. \nFrage 1: Studentenausweis verloren? Wohin gehst du?',
                            points: [-10, 10, -10, -10],
                            answerTexts: [
                              'Studentenwerk',
                              'HSST',
                              'Fachschaft',
                              'Nach Hause'
                            ],
                            pressedCounter: 0,
                            tappedList: tappedList,
                          )));
            } else {}
          }
          if (stationnr == 4) {
            if (tapped == false) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => InputTimer(
                            currentScore: currentScore,
                            id: stationnr,
                            description:
                                'Nicht umsonst studieren Gestalter mit uns an diesem Standort! Zeigt euer Talent beim Montagsmaler. Einer von euch zeichnet einen Begriff. Kann jemand diesen erraten, darf der Zeichner sich stolz 10 P gutschreiben. Wer den Begriff erraten konnte, ist als nächstes mit Zeichnen dran',
                            timer: 25,
                            tappedList: tappedList,
                          )));
            } else {}
          }
          if (stationnr == 5) {
            if (tapped == false) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => QrCode(
                            currentScore: currentScore,
                            id: stationnr,
                            description:
                                'Findet einen QR-Code und scannt ihn ein. Merkt euch die ganzen Buchstaben, die ihr scannt... ;)',
                            tappedList: tappedList,
                          )));
            } else {}
          }
          if (stationnr == 6) {
            if (tapped == false) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MultipleChoice3(
                            currentScore: currentScore,
                            id: stationnr,
                            question: 'Ab ins Labor! Was habt ihr gefunden?',
                            points: [-10, 10, -10],
                            answerValues: [false, true, false],
                            answerTexts: [
                              'Versuchsratte',
                              'Alter Fernseher',
                              'Hängematte'
                            ],
                            tappedList: tappedList,
                          )));
            } else {}
          }
          if (stationnr == 7) {
            if (tapped == false) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => QrCode(
                            currentScore: currentScore,
                            id: stationnr,
                            description:
                                'Zugehört und verstanden? Dann zeigt euer Können. Sucht einen USB-Stick und druckt den Inhalt aus. Welcher Buchstabe ist es?',
                            tappedList: tappedList,
                          )));
            } else {}
          }
          if (stationnr == 8) {
            if (tapped == false) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Innonight(
                            currentScore: currentScore,
                            id: stationnr,
                            description:
                                'Zugehört? Sehr gut, dann geht\'s mal ohne Aufgabe weiter. Überleg dir mal, mitzumachen ;-)',
                            tappedList: tappedList,
                          )));
            } else {}
          }
          if (stationnr == 9) {
            if (tapped == false) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => QrCode(
                            currentScore: currentScore,
                            id: stationnr,
                            description: 'Wer findet die 2 QR-Codes?',
                            tappedList: tappedList,
                          )));
            } else {}
          }
          if (stationnr == 10) {
            if (tapped == false) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Dekan(
                            currentScore: currentScore,
                            id: stationnr,
                            question: 'Wie lautet die richtige Reihenfolge?',
                            points: [-10, -10, -10, 10, -10],
                            answerTexts: [
                              'Öffnen - Anliegen mitteilen',
                              'Klopfen - Anliegen mitteilen',
                              'Warten, bis man angesprochen wird',
                              'Klopfen - Öffnen - Begrüßen mit Anrede (Prof./Dr.) - Anliegen mitteilen',
                              'Klopfen - Öffnen - Anliegen mitteilen'
                            ],
                            tappedList: tappedList,
                          )));
            } else {}
          }
          if (stationnr == 11) {
            if (tapped == false) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Input(
                            currentScore: currentScore,
                            id: stationnr,
                            description:
                                'Lasst die Spiele beginnen! Jeder aus der Gruppe hat einen Versuch. Ihr müsst versuchen so viele Flaschen wie möglich umzuwerfen. Jede Flasche bringt einen Punkt',
                            hintText: 'zB 25',
                            tappedList: tappedList,
                          )));
            } else {}
          }
          if (stationnr == 12) {
            if (tapped == false) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => QrCode(
                            currentScore: currentScore,
                            id: stationnr,
                            description: 'Auf zum Scannen!',
                            tappedList: tappedList,
                          )));
            } else {}
          }
          if (stationnr == 13) {
            if (tapped == false) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MultipleChoice4(
                            currentScore: currentScore,
                            id: stationnr,
                            question:
                                'Das Dekanat übernimmt welche Aufgaben...?',
                            points: [10, -10, -10, 10],
                            answerValues: [true, false, false, true],
                            answerTexts: [
                              'Organisation & Betreuung der Tutoren',
                              'Annahme gefundener Studentenausweise',
                              'Entgegennahme von Anzahlungen für neue Studentenausweise',
                              'Weiterleitung von Briefen/Post an Professoren und Mitarbeiter'
                            ],
                            tappedList: tappedList,
                          )));
            } else {}
          }
          if (stationnr == 14) {
            if (tapped == false) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => QrCode(
                            currentScore: currentScore,
                            id: stationnr,
                            description:
                                'Euch fehlen noch ein paar Buchstaben für ein Wort, welcher ist es wohl?',
                            tappedList: tappedList,
                          )));
            } else {}
          }
          if (stationnr == 15) {
            if (tapped == false) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => QrCode(
                            currentScore: currentScore,
                            id: stationnr,
                            description: 'Was ist der nächste Buchstabe?',
                            tappedList: tappedList,
                          )));
            } else {}
          }
          if (stationnr == 16) {
            if (tapped == false) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HSSTundUnibib(
                            currentScore: currentScore,
                            id: stationnr,
                            question:
                                'Hier ein paar Fragen für die Autofahrer. \nFrage 1: Durch wie viele Türen gelangt man ins Gebäude der FHWS?',
                            points: [-10, -10, -10, 10],
                            answerTexts: ['5', '2', '4', '3'],
                            pressedCounter: 0,
                            tappedList: tappedList,
                          )));
            } else {}
          }
          if (stationnr == 17) {
            if (tapped == false) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Input(
                            currentScore: currentScore,
                            id: stationnr,
                            description:
                                'Schon Punkte gesammelt? Mindestens 10 von euch müssen spielen. Ihr lauft um die Tischtennisplatte und schlagt dabei den Ball mit der Hand auf. Geht der daneben, ist die Person raus. \n1 erfolgreicher Aufschlag \n= 1 P',
                            hintText: 'zB 36',
                            tappedList: tappedList,
                          )));
            } else {}
          }
          if (stationnr == 18) {
            if (tapped == false) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Input(
                          currentScore: currentScore,
                          id: stationnr,
                          description:
                              'Weitwurf ist angesagt! Aber mit Teebeuteln ;-) Jeder bekommt einen vollgesaugten Teebeutel und muss ihn mit dem Mund so weit wie möglich werfen. Jeder Meter bringt Punkte',
                          hintText: '1,05m = 105 P',
                          tappedList: tappedList)));
            } else {}
          }
          if (stationnr == 19) {
            if (tapped == false) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Input(
                            currentScore: currentScore,
                            id: stationnr,
                            description:
                                'Zeit für etwas Mathe. Was kosten die 3 Produkte X, Y, Z aus den Automaten?',
                            hintText: '2,00€ = 200 P',
                            tappedList: tappedList,
                          )));
            } else {}
          }
          if (stationnr == 20) {
            if (tapped == false) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Input(
                            currentScore: currentScore,
                            id: stationnr,
                            description:
                                'Schätzfrage: Wie viele Sitzplätze hat der Hörsaal H.1.1? Je weiter die Schätzung entfernt, desto weniger Punkte gibt es.',
                            hintText: 'zB. 12',
                            tappedList: tappedList,
                          )));
            } else {}
          }
          if (stationnr == 21) {
            if (tapped == false) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => InputTimer(
                            currentScore: currentScore,
                            id: stationnr,
                            description:
                                'Zeit für Sport! Jeder durchläuft mindestens 1 Mal diesen Parkour. Hat jemand den Parkour durchlaufen, darf er sich einen Punkt holen! Die Zeit läuft...',
                            timer: 10,
                            tappedList: tappedList,
                          )));
            } else {}
          }
          if (stationnr == 22) {
            if (tapped == false) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HSSTundUnibib(
                            currentScore: currentScore,
                            id: stationnr,
                            question:
                                'Hier gibt es 2 Fragen zu 2 Themen. \nFrage 1: Hier werdet ihr viel Zeit im Studium verbringen. Da könnt ihr ja mal zählen... Wie viel digitalen und gedruckten Bestand besitzt die Unibibliothek INSGESAMT?',
                            points: [-10, 10, -10, -10],
                            answerTexts: [
                              '664.374',
                              '3.762.012',
                              '997.652',
                              '1.843.441'
                            ],
                            pressedCounter: 0,
                            tappedList: tappedList,
                          )));
            } else {}
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
                  color: Colors.black38,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            width: 200,
                            height: 120,
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                border: Border(
                                    top: BorderSide(
                                        width: 1.0, color: Colors.white),
                                    bottom: BorderSide(
                                        width: 1.0, color: Colors.white))),
                            child: Column(
                              children: [
                                Text(
                                  '${widget.stationnr}',
                                  style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  widget.stationtitle,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 16,
                                      letterSpacing: 2.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ))
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
