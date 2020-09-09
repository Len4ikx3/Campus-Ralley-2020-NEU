import 'package:flutter/material.dart';

import 'stationtile.dart';

class StationCarousel extends StatefulWidget {
  int currentScore;
  List<bool> tappedList;
  StationCarousel({@required this.currentScore, @required this.tappedList});
  @override
  StationCarouselState createState() =>
      StationCarouselState(currentScore: currentScore, tappedList: tappedList);
}

class StationCarouselState extends State<StationCarousel> {
  int currentScore;
  List<bool> tappedList;
  StationCarouselState(
      {@required this.currentScore, @required this.tappedList});

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            child: ListView(
          children: <StationTile>[
            StationTile(
                onTap: () {},
                imagepath: "lib/images/Foyer.jpg",
                stationnr: 1,
                stationtitle: "Foyer Institutsgebäude",
                currentScore: currentScore,
                tapped: tappedList[0],
                tappedList: tappedList),
            StationTile(
                onTap: () {},
                imagepath: "lib/images/fachschaft.png",
                stationnr: 2,
                stationtitle: "Fachschaft",
                currentScore: currentScore,
                tapped: tappedList[1],
                tappedList: tappedList),
            StationTile(
                onTap: () {},
                //gibts kein bild
                imagepath: "lib/images/FHWS.jpg",
                stationnr: 3,
                stationtitle: "Hochschulservice Studium HSST",
                currentScore: currentScore,
                tapped: tappedList[2],
                tappedList: tappedList),
            StationTile(
                onTap: () {},
                //gibts kein bild
                imagepath: "lib/images/FHWS.jpg",
                stationnr: 4,
                stationtitle: "Studierraum",
                currentScore: currentScore,
                tapped: tappedList[3],
                tappedList: tappedList),
            StationTile(
                onTap: () {},
                //gibts kein bild
                imagepath: "lib/images/FHWS.jpg",
                stationnr: 5,
                stationtitle: "Technische Mitarbeiter",
                currentScore: currentScore,
                tapped: tappedList[4],
                tappedList: tappedList),
            StationTile(
                onTap: () {},
                imagepath: "lib/images/labor.jpg",
                stationnr: 6,
                stationtitle: "Labor",
                currentScore: currentScore,
                tapped: tappedList[5],
                tappedList: tappedList),
            StationTile(
                onTap: () {},
                //gibts kein bild
                imagepath: "lib/images/FHWS.jpg",
                stationnr: 7,
                stationtitle: "Drucker und Kopierer",
                currentScore: currentScore,
                tapped: tappedList[6],
                tappedList: tappedList),
            StationTile(
                onTap: () {},
                imagepath: "lib/images/innonight.jpg",
                stationnr: 8,
                stationtitle: "Innonight",
                currentScore: currentScore,
                tapped: tappedList[7],
                tappedList: tappedList),
            StationTile(
                onTap: () {},
                imagepath: "lib/images/stillzimmer.jpg",
                stationnr: 9,
                stationtitle: "Stillzimmer",
                currentScore: currentScore,
                tapped: tappedList[8],
                tappedList: tappedList),
            StationTile(
                onTap: () {},
                //gibts kein bild
                imagepath: "lib/images/FHWS.jpg",
                stationnr: 10,
                stationtitle: "Dekan",
                currentScore: currentScore,
                tapped: tappedList[9],
                tappedList: tappedList),
            StationTile(
                onTap: () {},
                imagepath: "lib/images/wasser.png",
                stationnr: 11,
                stationtitle: "Wasserspender",
                currentScore: currentScore,
                tapped: tappedList[10],
                tappedList: tappedList),
            StationTile(
                onTap: () {},
                imagepath: "lib/images/welearn.png",
                stationnr: 12,
                stationtitle: "Welearn",
                currentScore: currentScore,
                tapped: tappedList[11],
                tappedList: tappedList),
            StationTile(
                onTap: () {},
                //gibts kein bild
                imagepath: "lib/images/FHWS.jpg",
                stationnr: 13,
                stationtitle: "Dekanat",
                currentScore: currentScore,
                tapped: tappedList[12],
                tappedList: tappedList),
            StationTile(
                onTap: () {},
                //gibts kein bild
                imagepath: "lib/images/FHWS.jpg",
                stationnr: 14,
                stationtitle: "Glasbrett",
                currentScore: currentScore,
                tapped: tappedList[13],
                tappedList: tappedList),
            StationTile(
                onTap: () {},
                //gibts kein bild
                imagepath: "lib/images/FHWS.jpg",
                stationnr: 15,
                stationtitle: "IWInet",
                currentScore: currentScore,
                tapped: tappedList[14],
                tappedList: tappedList),
            StationTile(
                onTap: () {},
                imagepath: "lib/images/parken.jpg",
                stationnr: 16,
                stationtitle: "Tiefgarage",
                currentScore: currentScore,
                tapped: tappedList[15],
                tappedList: tappedList),
            StationTile(
                onTap: () {},
                imagepath: "lib/images/tischtennis.jpg",
                stationnr: 17,
                stationtitle: "Tischtennis",
                currentScore: currentScore,
                tapped: tappedList[16],
                tappedList: tappedList),
            StationTile(
                onTap: () {},
                imagepath: "lib/images/Innenhof.jpg",
                stationnr: 18,
                stationtitle: "Innenhof",
                currentScore: currentScore,
                tapped: tappedList[17],
                tappedList: tappedList),
            StationTile(
                onTap: () {},
                imagepath: "lib/images/Cafe.jpeg",
                stationnr: 19,
                stationtitle: "Cafeteria",
                currentScore: currentScore,
                tapped: tappedList[18],
                tappedList: tappedList),
            StationTile(
                onTap: () {},
                imagepath: "lib/images/H1.jpg",
                stationnr: 20,
                stationtitle: "Hörsaal",
                currentScore: currentScore,
                tapped: tappedList[19],
                tappedList: tappedList),
            StationTile(
                onTap: () {},
                //Bild muss ausgetauscht werden!
                imagepath: "lib/images/sport.jpg",
                stationnr: 21,
                stationtitle: "Hochschulsport",
                currentScore: currentScore,
                tapped: tappedList[20],
                tappedList: tappedList),
            StationTile(
                onTap: () {},
                imagepath: "lib/images/bib.jpg",
                stationnr: 22,
                stationtitle: "Unibibliothek",
                currentScore: currentScore,
                tapped: tappedList[21],
                tappedList: tappedList),
          ],
        )));
  }
}
