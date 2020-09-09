import 'package:flutter/material.dart';

import 'stationtile.dart';

class StationCarousel extends StatefulWidget {
  int currentScore;
  List<bool> tappedList;

  StationCarousel({
    @required this.currentScore,
    @required this.tappedList,
  });
  @override
  StationCarouselState createState() => StationCarouselState(
        currentScore: currentScore,
        tappedList: tappedList,
      );
}

class StationCarouselState extends State<StationCarousel> {
  int currentScore;
  List<bool> tappedList;
  String picture;

  List<String> pictureList = [
    "lib/images/Foyer.jpg",
    "lib/images/fachschaft.png",
    "lib/images/FHWS.jpg",
    "lib/images/FHWS.jpg",
    "lib/images/FHWS.jpg",
    "lib/images/labor.jpg",
    "lib/images/FHWS.jpg",
    "lib/images/innonight.jpg",
    "lib/images/stillzimmer.jpg",
    "lib/images/FHWS.jpg",
    "lib/images/wasser.png",
    "lib/images/welearn.png",
    "lib/images/FHWS.jpg",
    "lib/images/FHWS.jpg",
    "lib/images/FHWS.jpg",
    "lib/images/parken.jpg",
    "lib/images/tischtennis.jpg",
    "lib/images/Innenhof.jpg",
    "lib/images/Cafe.jpeg",
    "lib/images/H1.jpg",
    "lib/images/sport.jpg",
    "lib/images/bib.jpg"
  ];

  String getPicture(int stationnr) {
    if (tappedList[stationnr - 1] == false) {
      return pictureList[stationnr - 1];
    } else {
      return "lib/images/tappedTrue.png";
    }
  }

  StationCarouselState({
    @required this.currentScore,
    @required this.tappedList,
  });

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            child: ListView(
          children: <StationTile>[
            StationTile(
              onTap: () {},
              imagepath: getPicture(1),
              stationnr: 1,
              stationtitle: "Foyer Institutsgebäude",
              currentScore: currentScore,
              tapped: tappedList[0],
              tappedList: tappedList,
            ),
            StationTile(
                onTap: () {},
                imagepath: getPicture(2),
                stationnr: 2,
                stationtitle: "Fachschaft",
                currentScore: currentScore,
                tapped: tappedList[1],
                tappedList: tappedList),
            StationTile(
                onTap: () {},
                imagepath: getPicture(3),
                stationnr: 3,
                stationtitle: "Hochschulservice Studium HSST",
                currentScore: currentScore,
                tapped: tappedList[2],
                tappedList: tappedList),
            StationTile(
                onTap: () {},
                imagepath: getPicture(4),
                stationnr: 4,
                stationtitle: "Studierraum",
                currentScore: currentScore,
                tapped: tappedList[3],
                tappedList: tappedList),
            StationTile(
                onTap: () {},
                imagepath: getPicture(5),
                stationnr: 5,
                stationtitle: "Technische Mitarbeiter",
                currentScore: currentScore,
                tapped: tappedList[4],
                tappedList: tappedList),
            StationTile(
                onTap: () {},
                imagepath: getPicture(6),
                stationnr: 6,
                stationtitle: "Labor",
                currentScore: currentScore,
                tapped: tappedList[5],
                tappedList: tappedList),
            StationTile(
                onTap: () {},
                imagepath: getPicture(7),
                stationnr: 7,
                stationtitle: "Drucker und Kopierer",
                currentScore: currentScore,
                tapped: tappedList[6],
                tappedList: tappedList),
            StationTile(
                onTap: () {},
                imagepath: getPicture(8),
                stationnr: 8,
                stationtitle: "Innonight",
                currentScore: currentScore,
                tapped: tappedList[7],
                tappedList: tappedList),
            StationTile(
                onTap: () {},
                imagepath: getPicture(9),
                stationnr: 9,
                stationtitle: "Stillzimmer",
                currentScore: currentScore,
                tapped: tappedList[8],
                tappedList: tappedList),
            StationTile(
                onTap: () {},
                imagepath: getPicture(10),
                stationnr: 10,
                stationtitle: "Dekan",
                currentScore: currentScore,
                tapped: tappedList[9],
                tappedList: tappedList),
            StationTile(
                onTap: () {},
                imagepath: getPicture(11),
                stationnr: 11,
                stationtitle: "Wasserspender",
                currentScore: currentScore,
                tapped: tappedList[10],
                tappedList: tappedList),
            StationTile(
                onTap: () {},
                imagepath: getPicture(12),
                stationnr: 12,
                stationtitle: "Welearn",
                currentScore: currentScore,
                tapped: tappedList[11],
                tappedList: tappedList),
            StationTile(
                onTap: () {},
                imagepath: getPicture(13),
                stationnr: 13,
                stationtitle: "Dekanat",
                currentScore: currentScore,
                tapped: tappedList[12],
                tappedList: tappedList),
            StationTile(
                onTap: () {},
                imagepath: getPicture(14),
                stationnr: 14,
                stationtitle: "Glasbrett",
                currentScore: currentScore,
                tapped: tappedList[13],
                tappedList: tappedList),
            StationTile(
                onTap: () {},
                imagepath: getPicture(15),
                stationnr: 15,
                stationtitle: "IWInet",
                currentScore: currentScore,
                tapped: tappedList[14],
                tappedList: tappedList),
            StationTile(
                onTap: () {},
                imagepath: getPicture(16),
                stationnr: 16,
                stationtitle: "Tiefgarage",
                currentScore: currentScore,
                tapped: tappedList[15],
                tappedList: tappedList),
            StationTile(
                onTap: () {},
                imagepath: getPicture(17),
                stationnr: 17,
                stationtitle: "Tischtennis",
                currentScore: currentScore,
                tapped: tappedList[16],
                tappedList: tappedList),
            StationTile(
                onTap: () {},
                imagepath: getPicture(18),
                stationnr: 18,
                stationtitle: "Innenhof",
                currentScore: currentScore,
                tapped: tappedList[17],
                tappedList: tappedList),
            StationTile(
                onTap: () {},
                imagepath: getPicture(19),
                stationnr: 19,
                stationtitle: "Cafeteria",
                currentScore: currentScore,
                tapped: tappedList[18],
                tappedList: tappedList),
            StationTile(
                onTap: () {},
                imagepath: getPicture(20),
                stationnr: 20,
                stationtitle: "Hörsaal",
                currentScore: currentScore,
                tapped: tappedList[19],
                tappedList: tappedList),
            StationTile(
                onTap: () {},
                imagepath: getPicture(21),
                stationnr: 21,
                stationtitle: "Hochschulsport",
                currentScore: currentScore,
                tapped: tappedList[20],
                tappedList: tappedList),
            StationTile(
                onTap: () {},
                imagepath: getPicture(22),
                stationnr: 22,
                stationtitle: "Unibibliothek",
                currentScore: currentScore,
                tapped: tappedList[21],
                tappedList: tappedList),
          ],
        )));
  }
}
