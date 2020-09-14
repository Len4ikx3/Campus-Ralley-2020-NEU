import 'stationmenu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Input extends StatefulWidget {
  int currentScore;
  int id;
  String description;
  String hintText;
  List<bool> tappedList;

  Input(
      {@required this.currentScore,
      @required this.id,
      @required this.description,
      @required this.hintText,
      @required this.tappedList});

  @override
  State<StatefulWidget> createState() {
    return _InputState(
        currentScore: currentScore,
        id: id,
        description: description,
        hintText: hintText,
        tappedList: tappedList);
  }
}

class _InputState extends State<Input> {
  int currentScore;
  int id;
  String description;
  String hintText;
  List<bool> tappedList;

  Color selected = Color(0xFFBff8000);
  Color unselected = Colors.grey;

  int scoreToBeAdded = 0;

  _InputState(
      {@required this.currentScore,
      @required this.id,
      @required this.description,
      @required this.hintText,
      @required this.tappedList});

  List changedtappedList(List<bool> tappedList) {
    tappedList[(id - 1)] = true;
    return tappedList;
  }

  final bool banner = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: banner,
        home: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                child: Column(children: <Widget>[
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
                      child: Image.asset(
                    'lib/images/fhwsLogo.png',
                    fit: BoxFit.cover,
                  ))),
              Container(
                  padding: EdgeInsets.only(top: 50, bottom: 50),
                  width: double.infinity,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          flex: 2,
                          child: Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              color: Color(0xFFBff8000),
                              height: 200,
                              child: Center(
                                  child: Text(description,
                                      style: GoogleFonts.pathwayGothicOne(
                                        color: Colors.white,
                                        fontSize: 17,
                                        letterSpacing: 2.0,
                                      ))))),
                      Expanded(
                          child: Container(
                              child: Center(
                                  child: Text('$id',
                                      style: GoogleFonts.pathwayGothicOne(
                                        fontSize: 160,
                                        color: Colors.grey[300],
                                      ))))),
                    ],
                  )),
              Container(
                height: 300,
                child: Column(
                  children: <Widget>[
                    Container(
                        margin: const EdgeInsets.only(top: 30),
                        width: 270,
                        padding: const EdgeInsets.all(20),
                        child: TextField(
                            onChanged: (text) {
                              setState(() {
                                if (id == 20) {
                                  if (210 <= int.parse(text) &&
                                      int.parse(text) <= 226) {
                                    scoreToBeAdded = scoreToBeAdded + 50;
                                  } else if ((200 <= int.parse(text) &&
                                          int.parse(text) < 210) ||
                                      (226 < int.parse(text) &&
                                          int.parse(text) <= 236)) {
                                    scoreToBeAdded = scoreToBeAdded + 40;
                                  } else if ((190 <= int.parse(text) &&
                                          int.parse(text) < 200) ||
                                      (236 < int.parse(text) &&
                                          int.parse(text) <= 246)) {
                                    scoreToBeAdded = scoreToBeAdded + 30;
                                  } else if ((170 <= int.parse(text) &&
                                          int.parse(text) < 190) ||
                                      (246 < int.parse(text) &&
                                          int.parse(text) <= 266)) {
                                    scoreToBeAdded = scoreToBeAdded + 20;
                                  } else if ((140 <= int.parse(text) &&
                                          int.parse(text) < 170) ||
                                      (266 < int.parse(text) &&
                                          int.parse(text) <= 296)) {
                                    scoreToBeAdded = scoreToBeAdded + 10;
                                  } else {
                                    scoreToBeAdded = 0;
                                  }
                                } else {
                                  if (text == '') {
                                    scoreToBeAdded = 0;
                                  } else {
                                    scoreToBeAdded = int.parse(text);
                                  }
                                }
                              });
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
                                hintText: hintText,
                                hintStyle: GoogleFonts.pathwayGothicOne(
                                    color:
                                        unselected)) //TextStyle(color: unselected)),
                            )),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    IconButton(
                        icon: Icon(
                          Icons.save,
                          color: Color(0xFFBff8000),
                        ),
                        iconSize: 50,
                        splashColor: Color(0xFFBff8000),
                        onPressed: () {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Stationmenu(
                                          newCurrentScore:
                                              currentScore + scoreToBeAdded,
                                          newtappedList:
                                              changedtappedList(tappedList),
                                        )));
                          });
                        }),
                    Text('Speichern und zurück zur Stationenauswahl',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.pathwayGothicOne(
                            color: Color(0xFFBff8000),
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2.0))
                  ],
                ),
              )
            ]))));
  }
}
