import 'package:google_fonts/google_fonts.dart';

import 'stationmenu.dart';
import 'package:flutter/material.dart';
import 'package:barcode_scan/barcode_scan.dart';

class QrCode extends StatefulWidget {
  int currentScore;
  int id;
  String description;
  List<bool> tappedList;

  QrCode(
      {@required this.currentScore,
      @required this.id,
      @required this.description,
      @required this.tappedList});

  @override
  State<StatefulWidget> createState() {
    return _QrCodeState(
        currentScore: currentScore,
        id: id,
        description: description,
        tappedList: tappedList);
  }
}

class _QrCodeState extends State<QrCode> {
  String qrCodeResult = "Noch nicht gescannt";
  int currentScore;
  int id;
  String description;
  List<bool> tappedList;

  _QrCodeState(
      {@required this.currentScore,
      @required this.id,
      @required this.description,
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
          body: Container(
            child: Column(
              children: <Widget>[
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
                    padding: EdgeInsets.only(top: 50, bottom: 00),
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
                  height: 255,
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 30),
                        child: Text(
                          "Ergebnis:",
                          style: GoogleFonts.pathwayGothicOne(
                              fontSize: 22.0,
                              color: Color(0xFFBff8000),
                              letterSpacing: 2.0),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Text(
                        qrCodeResult,
                        style: GoogleFonts.pathwayGothicOne(
                            fontSize: 27.0,
                            color: Color(0xFFBff8000),
                            fontWeight: FontWeight.bold,
                            wordSpacing: 2.0),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      FlatButton(
                        color: Colors.white,
                        padding: EdgeInsets.all(15.0),
                        onPressed: () async {
                          String codeSanner =
                              await BarcodeScanner.scan(); //barcode scnner
                          setState(() {
                            qrCodeResult = codeSanner;
                          });

                          try {
                            BarcodeScanner
                                .scan(); //this method is used to scan the QR code
                          } catch (e) {
                            BarcodeScanner
                                .CameraAccessDenied; //we can print that user has denied for the permisions
                            BarcodeScanner
                                .UserCanceled; // we can print on the page that user has cancelled
                          }
                        },
                        child: Text(
                          "Scanner öffnen",
                          style: GoogleFonts.pathwayGothicOne(
                              color: Color(0xFFBff8000),
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              letterSpacing: 2.0),
                        ),
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Colors.deepOrange, width: 3.0),
                            borderRadius: BorderRadius.circular(20.0)),
                      ),
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
                                            newCurrentScore: currentScore,
                                            newtappedList:
                                                changedtappedList(tappedList),
                                          )));
                            });
                          }),
                      Text('Merk\' ich mir! Zurück zur Stationenauswahl',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.pathwayGothicOne(
                              color: Color(0xFFBff8000),
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2.0))
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }

  void goToStationMenu() {
    setState(() {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Stationmenu(
                    newtappedList: changedtappedList(tappedList),
                  )));
    });
  }
}
