import 'package:booking/icon_card.dart';
import 'package:booking/image_cards.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.menu,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Hello, ",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w700,
                            color: Colors.pink,
                          ),
                        ),
                        TextSpan(text: "What are you\nlooking for?")
                      ],
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IconCard(
                    iconData: Icons.home,
                    text: 'Accomodation',
                  ),
                  IconCard(
                    iconData: Icons.directions_bike,
                    text: 'Experiences',
                  ),
                  IconCard(
                    iconData: Icons.directions,
                    text: 'Adventures',
                  ),
                  IconCard(
                    iconData: Icons.flight,
                    text: 'Flies',
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                      top: 10,
                    ),
                    child: Text(
                      'Best Experiences',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  IconButton(
                    padding: EdgeInsets.only(
                      top: 15,
                      right: 15,
                    ),
                    icon: Icon(
                      Icons.more_horiz,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              ImageCards(),
            ],
          ),
        ),
      ),
    );
  }
}
