import 'dart:async';
import 'package:football_live_score/src/screens/home.dart';
import 'package:football_live_score/src/widgets/splashpart1.dart';
import 'package:football_live_score/src/widgets/splashpart2.dart';
import 'package:flutter/material.dart';

class MainSplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<MainSplashScreen> {
  @override
  void initState() {
    super.initState();
    splash();
  }

  splash() async {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Home()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(flex: 1, child: SplashPart1()),
              Expanded(flex: 1, child: SplashPart2())
            ],
          )
        ],
      ),
    );
  }
}
