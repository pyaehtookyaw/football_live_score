//import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class FootballLeague extends StatefulWidget {
  final String name;
  FootballLeague({Key key, this.name}) : super(key: key);

  @override
  _FootballLeagueState createState() => _FootballLeagueState();
}

class _FootballLeagueState extends State<FootballLeague> {
  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      margin: EdgeInsets.only(top: 5, bottom: 15),
      style: NeumorphicStyle(
          shape: NeumorphicShape.flat,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(5)),
          depth: -5,
          // intensity: 0.70,
          // surfaceIntensity: 0.5,
          lightSource: LightSource.topLeft,
          color: Colors.grey[300]),
      child: Card(
        color: Colors.grey[50],
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NeumorphicText(
                    widget.name,
                    style: NeumorphicStyle(
                      depth: 4, //customize depth here
                      color: Colors.black, //customize color here
                    ),
                    textStyle: NeumorphicTextStyle(
                      fontSize: 16, //customize size here
                      // AND others usual text style properties (fontFamily, fontWeight, ...)
                    ),
                  ),
                  // Text(
                  //   widget.name,
                  //   style: Theme.of(context).textTheme.headline3,
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
