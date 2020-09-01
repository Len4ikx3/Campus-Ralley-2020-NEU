import 'package:first_app/answer.dart';

import 'input.dart';
import 'multipleChoice.dart';
import 'qrCode.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'wordSolutionPage.dart';

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
          imagepath: "lib/images/4yFkCcI.jpg",
          stationnr: 2,
          stationtitle: "Fachschaft",
          currentScore: currentScore,
        ),
        StationTile(
          onTap: () {},
          imagepath: "lib/images/4yFkCcI.jpg",
          stationnr: 3,
          stationtitle: "Hochschulservice Studium HSST",
          currentScore: currentScore,
        ),
        StationTile(
          onTap: () {},
          imagepath: "lib/images/4yFkCcI.jpg",
          stationnr: 4,
          stationtitle: "Studierraum",
          currentScore: currentScore,
        ),
        StationTile(
          onTap: () {},
          imagepath: "lib/images/4yFkCcI.jpg",
          stationnr: 5,
          stationtitle: "Technische Mitarbeiter",
          currentScore: currentScore,
        ),
        StationTile(
          onTap: () {},
          imagepath: "lib/images/4yFkCcI.jpg",
          stationnr: 6,
          stationtitle: "Labor",
          currentScore: currentScore,
        ),
        StationTile(
          onTap: () {},
          imagepath: "lib/images/4yFkCcI.jpg",
          stationnr: 7,
          stationtitle: "Drucker und Kopierer",
          currentScore: currentScore,
        ),
        StationTile(
          onTap: () {},
          imagepath: "lib/images/4yFkCcI.jpg",
          stationnr: 8,
          stationtitle: "Innonight",
          currentScore: currentScore,
        ),
        StationTile(
          onTap: () {},
          imagepath: "lib/images/4yFkCcI.jpg",
          stationnr: 9,
          stationtitle: "Stillzimmer",
          currentScore: currentScore,
        ),
        StationTile(
          onTap: () {},
          imagepath: "lib/images/4yFkCcI.jpg",
          stationnr: 10,
          stationtitle: "Dekan",
          currentScore: currentScore,
        ),
        StationTile(
          onTap: () {},
          imagepath: "lib/images/4yFkCcI.jpg",
          stationnr: 11,
          stationtitle: "Wasserspender",
          currentScore: currentScore,
        ),
        StationTile(
          onTap: () {},
          imagepath: "lib/images/4yFkCcI.jpg",
          stationnr: 12,
          stationtitle: "Welearn",
          currentScore: currentScore,
        ),
        StationTile(
          onTap: () {},
          imagepath: "lib/images/4yFkCcI.jpg",
          stationnr: 13,
          stationtitle: "Dekanat",
          currentScore: currentScore,
        ),
        StationTile(
          onTap: () {},
          imagepath: "lib/images/4yFkCcI.jpg",
          stationnr: 14,
          stationtitle: "Glasbrett",
          currentScore: currentScore,
        ),
        StationTile(
          onTap: () {},
          imagepath: "lib/images/4yFkCcI.jpg",
          stationnr: 15,
          stationtitle: "IWInet",
          currentScore: currentScore,
        ),
        StationTile(
          onTap: () {},
          imagepath: "lib/images/4yFkCcI.jpg",
          stationnr: 16,
          stationtitle: "Tiefgarage",
          currentScore: currentScore,
        ),
        StationTile(
          onTap: () {},
          imagepath: "lib/images/4yFkCcI.jpg",
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
          imagepath: "lib/images/4yFkCcI.jpg",
          stationnr: 21,
          stationtitle: "Hochschulsport",
          currentScore: currentScore,
        ),
        StationTile(
          onTap: () {},
          imagepath: "lib/images/4yFkCcI.jpg",
          stationnr: 22,
          stationtitle: "Unibibliothek",
          currentScore: currentScore,
        ),
        StationTile(
          onTap: () {},
          imagepath: "lib/images/4yFkCcI.jpg",
          stationnr: 23,
          stationtitle: "letzte Station",
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
                    builder: (context) => MultipleChoice(
                        currentScore: currentScore,
                        id: stationnr,
                        question: 'Das ist eine MC-Frage')));
          }
          if (stationnr == 2) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => QrCode(
                          currentScore: currentScore,
                          id: stationnr,
                          description: 'QrCode scannen',
                        )));
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
