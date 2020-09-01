import 'package:flutter/material.dart';
//import 'stationmenu.dart';
import 'pulsatingbutton.dart';
import 'introductionpage.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MaterialApp(
    home: Startingpage(),
  ));
}

class Startingpage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StartingpageState();
  }
}

class StartingpageState extends State<Startingpage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
              height: MediaQuery.of(context).size.height,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(50.0),
                      child: Text(
                        '- FHWS -',
                        style:
                            TextStyle(color: Color(0xFFBff8000), fontSize: 28),
                      ),
                    ),
                    Container(
                        child: Center(
                      child: Image.asset(
                        "lib/images/CampusRalleyLogo.png",
                      ),
                    )),
                    Container(
                      padding: EdgeInsets.all(40.0),
                      child: PulsatingCircleIconButton(
                        onTap: () {
                          goToIntroduction();
                        },
                        icon: Icon(Icons.play_arrow,
                            color: Color(0xFFBff8000), size: 50),
                      ),
                    ),
                  ],
                ),
              )),
        ));
  }

  /*void goToStationMenu() {
    setState(() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Stationmenu()));
    });
  }*/

  //Methode, um zur IntroductionPage zu gelangen
  void goToIntroduction() {
    setState(() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Introductionpage()));
    });
  }
}
