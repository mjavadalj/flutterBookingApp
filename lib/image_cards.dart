import 'package:flutter/material.dart';
import './place.dart';
import './image_card.dart';

class ImageCards extends StatefulWidget {
  @override
  _ImageCardsState createState() => _ImageCardsState();
}

class _ImageCardsState extends State<ImageCards> {
  List<Place> places = [
    Place(place: 'China', image: 'images/china.jpg', days: 7),
    Place(place: 'Japan', image: 'images/japan.jpg', days: 15),
    Place(place: 'Iran', image: 'images/iran.jpg', days: 3),
    Place(place: 'London', image: 'images/london.jpg', days: 21),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: places.length,
        itemBuilder: (_, index) {
          return ImageCard(
            place: places[index],
            name: places[index].place,
            days: places[index].days,
            picture: places[index].image,
          );
        },
      ),
    );
  }
}
