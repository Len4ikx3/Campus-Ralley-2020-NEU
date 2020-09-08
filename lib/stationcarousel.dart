import 'package:flutter/material.dart';

import 'stationtile.dart';

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
          imagepath: "lib/images/fachschaft.png",
          stationnr: 2,
          stationtitle: "Fachschaft",
          currentScore: currentScore,
        ),
        StationTile(
          onTap: () {},
          //gibts kein bild
          imagepath: "lib/images/FHWS.jpg",
          stationnr: 3,
          stationtitle: "Hochschulservice Studium HSST",
          currentScore: currentScore,
        ),
        StationTile(
          onTap: () {},
          //gibts kein bild
          imagepath: "lib/images/FHWS.jpg",
          stationnr: 4,
          stationtitle: "Studierraum",
          currentScore: currentScore,
        ),
        StationTile(
          onTap: () {},
          //gibts kein bild
          imagepath: "lib/images/FHWS.jpg",
          stationnr: 5,
          stationtitle: "Technische Mitarbeiter",
          currentScore: currentScore,
        ),
        StationTile(
          onTap: () {},
          imagepath: "lib/images/labor.jpg",
          stationnr: 6,
          stationtitle: "Labor",
          currentScore: currentScore,
        ),
        StationTile(
          onTap: () {},
          //gibts kein bild
          imagepath: "lib/images/FHWS.jpg",
          stationnr: 7,
          stationtitle: "Drucker und Kopierer",
          currentScore: currentScore,
        ),
        StationTile(
          onTap: () {},
          imagepath: "lib/images/innonight.jpg",
          stationnr: 8,
          stationtitle: "Innonight",
          currentScore: currentScore,
        ),
        StationTile(
          onTap: () {},
          imagepath: "lib/images/stillzimmer.jpg",
          stationnr: 9,
          stationtitle: "Stillzimmer",
          currentScore: currentScore,
        ),
        StationTile(
          onTap: () {},
          //gibts kein bild
          imagepath: "lib/images/FHWS.jpg",
          stationnr: 10,
          stationtitle: "Dekan",
          currentScore: currentScore,
        ),
        StationTile(
          onTap: () {},
          imagepath: "lib/images/wasser.png",
          stationnr: 11,
          stationtitle: "Wasserspender",
          currentScore: currentScore,
        ),
        StationTile(
          onTap: () {},
          imagepath: "lib/images/welearn.png",
          stationnr: 12,
          stationtitle: "Welearn",
          currentScore: currentScore,
        ),
        StationTile(
          onTap: () {},
          //gibts kein bild
          imagepath: "lib/images/FHWS.jpg",
          stationnr: 13,
          stationtitle: "Dekanat",
          currentScore: currentScore,
        ),
        StationTile(
          onTap: () {},
          //gibts kein bild
          imagepath: "lib/images/FHWS.jpg",
          stationnr: 14,
          stationtitle: "Glasbrett",
          currentScore: currentScore,
        ),
        StationTile(
          onTap: () {},
          //gibts kein bild
          imagepath: "lib/images/FHWS.jpg",
          stationnr: 15,
          stationtitle: "IWInet",
          currentScore: currentScore,
        ),
        StationTile(
          onTap: () {},
          imagepath: "lib/images/parken.jpg",
          stationnr: 16,
          stationtitle: "Tiefgarage",
          currentScore: currentScore,
        ),
        StationTile(
          onTap: () {},
          imagepath: "lib/images/tischtennis.jpg",
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
          //Bild muss ausgetauscht werden!
          imagepath: "lib/images/sport.jpg",
          stationnr: 21,
          stationtitle: "Hochschulsport",
          currentScore: currentScore,
        ),
        StationTile(
          onTap: () {},
          imagepath: "lib/images/bib.jpg",
          stationnr: 22,
          stationtitle: "Unibibliothek",
          currentScore: currentScore,
        ),
      ],
    ));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: stationList(),
    );
  }
}
