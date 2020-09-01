import 'stationmenu.dart';
import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  int currentScore;
  int id;
  String description;
  String hintText;

  Input(
      {@required this.currentScore,
      @required this.id,
      @required this.description,
      @required this.hintText});

  @override
  State<StatefulWidget> createState() {
    return _InputState(
        currentScore: currentScore,
        id: id,
        description: description,
        hintText: hintText);
  }
}

class _InputState extends State<Input> {
  int currentScore;
  int id;
  String description;
  String hintText;

  Color selected = Color(0xFFBff8000);
  Color unselected = Colors.grey;

  int scoreToBeAdded = 0;

  _InputState(
      {@required this.currentScore,
      @required this.id,
      @required this.description,
      @required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                child: Text('- FHWS -',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.end),
              )),
          Container(
              padding: EdgeInsets.only(top: 50, bottom: 50),
              width: double.infinity,
              child: Row(
                children: <Widget>[
                  Container(
                      color: Color(0xFFBff8000),
                      height: 200,
                      width: 250,
                      child: Center(
                          child: Text(description,
                              style: TextStyle(color: Colors.white)))),
                  Container(
                    padding: EdgeInsets.all(50),
                    child: Text(
                      '0$id',
                      style: TextStyle(color: Colors.grey, fontSize: 50),
                    ),
                  ),
                ],
              )),
          Container(
            height: 300,
            child: Column(
              children: <Widget>[
                Container(
                    margin: const EdgeInsets.only(top: 30),
                    width: 200,
                    padding: const EdgeInsets.all(20),
                    child: TextField(
                      onChanged: (text) {
                        setState(() {
                          if (text == '') {
                            scoreToBeAdded = 0;
                          } else {
                            scoreToBeAdded = int.parse(text);
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
                              borderSide: BorderSide(color: Color(0xFFBff8000)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          prefixIcon: Icon(
                            Icons.edit,
                            color: unselected,
                          ),
                          hintText: hintText,
                          hintStyle: TextStyle(color: unselected)),
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
                                    )));
                      });
                    }),
                Text('Speichern und zurück zur Stationenauswahl',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFBff8000),
                      fontSize: 17,
                    ))
              ],
            ),
          )
        ])));
  }
}
