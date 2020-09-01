import 'package:flutter/material.dart';
import 'lastpage.dart';
//import 'ralley.dart';

void main() => runApp(MaterialApp(
      home: WordSolutionPage(),
    ));

class WordSolutionPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return WordSolutionPageState();
  }
}

class WordSolutionPageState extends State<WordSolutionPage> {
  String solution;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Color(0xFFBff8000),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  //padding: const EdgeInsets.all(50),
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
                          padding: const EdgeInsets.all(50),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'GLÜCKWUNSCH',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              Text(
                                'Alle Stationen wurden gemeistert. Nun gibt\'s die Chance, sich Extrapunkte zu verdienen...hoffentlich sind euch die Buchstaben im Gedächtnis geblieben ;) Für das richtige Lösungswort gibt es nochmals x Punkte aufs Konto dazu.',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                                textAlign: TextAlign.center,
                              ),
                              Container(
                                  padding: const EdgeInsets.all(20),
                                  child: Text(
                                    'Gib hier das Lösungswort ein, um die Extrapunkte zu ergattern:',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                    textAlign: TextAlign.center,
                                  )),
                              Container(
                                margin: const EdgeInsets.only(top: 30),
                                width: 250,
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.deepOrange, width: 2),
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white,
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                        width: 50,
                                        child: Icon(
                                          Icons.edit,
                                          color: Colors.grey,
                                        )),
                                    Expanded(
                                        child: TextField(
                                      onChanged: (text) {
                                        solution = text;
                                      },
                                      decoration: InputDecoration(
                                        contentPadding:
                                            EdgeInsets.only(left: 20),
                                        hintText: 'Lösungswort',
                                        border: InputBorder.none,
                                      ),
                                    ))
                                  ],
                                ),
                              )
                            ],
                          )),
                      Container(
                        child: Column(
                          children: <Widget>[
                            MaterialButton(
                              height: 50,
                              onPressed: goToRalley,
                              child: Icon(Icons.play_circle_filled,
                                  size: 100, color: Colors.white),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )));
  }

  void goToRalley() {
    setState(() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LastPage()));
    });
  }
}
