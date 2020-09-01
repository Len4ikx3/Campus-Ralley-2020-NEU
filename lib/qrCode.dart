import 'stationmenu.dart';
import 'package:flutter/material.dart';
import 'package:barcode_scan/barcode_scan.dart';

class QrCode extends StatefulWidget {
  int currentScore;
  int id;
  String description;

  QrCode(
      {@required this.currentScore,
      @required this.id,
      @required this.description});

  @override
  State<StatefulWidget> createState() {
    return _QrCodeState(
        currentScore: currentScore, id: id, description: description);
  }
}

class _QrCodeState extends State<QrCode> {
  String qrCodeResult = "Noch nicht gescannt";
  int currentScore;
  int id;
  String description;

  _QrCodeState(
      {@required this.currentScore,
      @required this.id,
      @required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        '$id',
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
                    padding: EdgeInsets.only(top: 30),
                    child: Text(
                      "Ergebnis:",
                      style:
                          TextStyle(fontSize: 20.0, color: Color(0xFFBff8000)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Text(
                    qrCodeResult,
                    style: TextStyle(
                        fontSize: 25.0,
                        color: Color(0xFFBff8000),
                        fontWeight: FontWeight.bold),
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
                      style: TextStyle(
                          color: Color(0xFFBff8000),
                          fontWeight: FontWeight.bold),
                    ),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.deepOrange, width: 3.0),
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
                                      )));
                        });
                      }),
                  Text('Merk\' ich mir! Zurück zur Stationenauswahl',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFBff8000),
                        fontSize: 17,
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void goToStationMenu() {
    setState(() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Stationmenu()));
    });
  }
  //its quite simple as that you can use try and catch staatements too for platform exception
}
