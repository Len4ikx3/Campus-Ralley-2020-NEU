import 'package:first_app/dekan.dart';
import 'package:first_app/hsstundunibib.dart';
import 'package:first_app/innonight.dart';
import 'package:first_app/multipleChoice4.dart';

import 'input.dart';
import 'inputTimer.dart';
import 'multipleChoice3.dart';
import 'qrCode.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'wordSolutionPage.dart';
import 'package:flutter/services.dart';

class StationTile extends StatefulWidget {
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
  _StationTileState createState() => _StationTileState(
      onTap: onTap,
      imagepath: imagepath,
      stationnr: stationnr,
      stationtitle: stationtitle,
      currentScore: currentScore);
}

class _StationTileState extends State<StationTile> {
  String imagepath;
  int stationnr;
  String stationtitle;
  GestureTapCallback onTap;
  int currentScore;

  _StationTileState(
      {this.onTap,
      this.imagepath,
      this.stationnr,
      this.stationtitle,
      this.currentScore});
  bool tapped = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          if (stationnr == 1) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => InputTimer(
                        currentScore: widget.currentScore,
                        id: widget.stationnr,
                        description:
                            'Auf die Decke, fertig, los! Alle müssen auf die Decke und sie einmal umdrehen. Aber Achtung! Es darf keiner von der Decke runter ;-) Schafft ihr es in x Sekunden könnt ihr jeweils 10 P. ergattern, sonst geht ihr leer aus',
                        timer: 25)));
          }
          if (stationnr == 2) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MultipleChoice3(
                            currentScore: widget.currentScore,
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
                    builder: (context) => HSSTundUnibib(
                        currentScore: widget.currentScore,
                        id: widget.stationnr,
                        question:
                            'Hier gibt es 3 Fragen zu 3 Themen. Frage 1: Studentenausweis verloren? Wohin gehst du?',
                        points: [-10, 10, -10, -10],
                        answerTexts: [
                          'Studentenwerk',
                          'HSST',
                          'Fachschaft',
                          'Nach Hause'
                        ],
                        pressedCounter: 0)));
          }
          if (stationnr == 4) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => InputTimer(
                        currentScore: widget.currentScore,
                        id: widget.stationnr,
                        description:
                            'Nicht umsonst studieren Gestalter mit uns an diesem Standort! Zeigt euer Talent beim Montagsmaler. Einer von euch zeichnet einen Begriff. Kann jemand diesen erraten, darf der Zeichner sich stolz 10 P gutschreiben. Wer den Begriff erraten konnte, ist als nächstes mit Zeichnen dran',
                        timer: 25)));
          }
          if (stationnr == 5) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => QrCode(
                        currentScore: widget.currentScore,
                        id: widget.stationnr,
                        description:
                            'Findet einen QR-Code und scannt ihn ein. Merkt euch die ganzen Buchstaben, die ihr scannt... ;)')));
          }
          if (stationnr == 6) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MultipleChoice3(
                            currentScore: widget.currentScore,
                            id: widget.stationnr,
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
                        currentScore: widget.currentScore,
                        id: widget.stationnr,
                        description:
                            'Zugehört und verstanden? Dann zeigt euer können. Sucht einen USB-Stick und druckt den Inhalt aus. Welcher Buchstabe ist es?')));
          }
          if (stationnr == 8) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Innonight(
                        currentScore: widget.currentScore,
                        id: widget.stationnr,
                        description:
                            'Zugehört? Sehr gut, dann geht\'s mal ohne Aufgabe weiter. Überleg dir mal, mitzumachen ;-)')));
          }
          if (stationnr == 9) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => QrCode(
                        currentScore: widget.currentScore,
                        id: widget.stationnr,
                        description: 'Wer findet den QR-Code?')));
          }
          if (stationnr == 10) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Dekan(
                            currentScore: widget.currentScore,
                            id: widget.stationnr,
                            question: 'Wie lautet die richtige Reihenfolge?',
                            points: [
                              -10,
                              -10,
                              -10,
                              10,
                              -10
                            ],
                            answerTexts: [
                              'Öffnen - Anliegen mitteilen',
                              'Klopfen - Anliegen mitteilen',
                              'Warten, bis man angesprochen wird',
                              'Klopfen - Öffnen - Begrüßen mit Anrede (Prof./Dr.) - Anliegen mitteilen',
                              'Klopfen - Öffnen - Anliegen mitteilen'
                            ])));
          }
          if (stationnr == 11) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Input(
                          currentScore: widget.currentScore,
                          id: widget.stationnr,
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
                        currentScore: widget.currentScore,
                        id: widget.stationnr,
                        description: 'Auf zum Scannen!')));
          }
          if (stationnr == 13) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MultipleChoice4(
                            currentScore: widget.currentScore,
                            id: widget.stationnr,
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
                        currentScore: widget.currentScore,
                        id: widget.stationnr,
                        description:
                            'Euch fehlen noch ein paar Buchstaben für ein Wort, welcher ist es wohl?')));
          }
          if (stationnr == 15) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => QrCode(
                        currentScore: widget.currentScore,
                        id: widget.stationnr,
                        description: 'Was ist der nächste Buchstabe?')));
          }
          if (stationnr == 16) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HSSTundUnibib(
                        currentScore: widget.currentScore,
                        id: widget.stationnr,
                        question:
                            'Hier ein paar Fragen für die Autofahrer. Frage 1: Durch wie viele Türen gelangt man ins Gebäude der FHWS?',
                        points: [-10, -10, -10, 10],
                        answerTexts: ['5', '2', '4', '3'],
                        pressedCounter: 0)));
          }
          if (stationnr == 17) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Input(
                          currentScore: widget.currentScore,
                          id: widget.stationnr,
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
                          currentScore: widget.currentScore,
                          id: widget.stationnr,
                          description:
                              'Weitwurf ist angesagt! Aber mit Teebeuteln ;-) Jeder bekommt einen vollgesaugten Teebeutel und muss ihn mit dem Mund so weit wie möglich werfen. Jeder Meter bringt euch einen Punkt',
                          hintText: '1,05m = 105 P',
                        )));
          }
          if (stationnr == 19) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Input(
                          currentScore: widget.currentScore,
                          id: widget.stationnr,
                          description:
                              'Zeit für etwas Mathe. Was kosten die 3 Produkte X, Y, Z aus den Automaten?',
                          hintText: '2,40€ = 240 P',
                        )));
          }
          if (stationnr == 20) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Input(
                          currentScore: widget.currentScore,
                          id: widget.stationnr,
                          description:
                              'Schätzfrage: Wie viele Sitzplätze hat der Hörsaal H.1.1? Je weiter die Schätzung entfernt, desto weniger Punkte gibt es.',
                          hintText: 'zB. 12',
                        )));
          }
          if (stationnr == 21) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => InputTimer(
                        currentScore: widget.currentScore,
                        id: widget.stationnr,
                        description:
                            'Zeit für Sport! Jeder durchläuft hintereinander durch diesen Parcour. Hat jemand den Parkour durchlaufen, darf er sich einen Punkt holen! Die Zeit läuft...',
                        timer: 10)));
          }
          if (stationnr == 22) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HSSTundUnibib(
                        currentScore: widget.currentScore,
                        id: widget.stationnr,
                        question:
                            'Hier gibt es 2 Fragen zu 2 Themen. Frage 1: Hier werdet ihr viel Zeit im Studium verbringen. Da könnt ihr ja mal zählen.. Wie viel digitalen und gedruckten Bestand besitzt die Unibibliothek INSGESAMT?',
                        points: [-10, 10, -10, -10],
                        answerTexts: [
                          '664.374',
                          '3.762.012',
                          '997.652',
                          '1.843.441'
                        ],
                        pressedCounter: 0)));
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
                  widget.imagepath,
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
                          '${widget.stationnr}',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          widget.stationtitle,
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
