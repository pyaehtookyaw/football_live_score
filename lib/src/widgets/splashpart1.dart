import 'package:flutter/material.dart';

class SplashPart1 extends StatelessWidget {
  const SplashPart1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 50.0,
          child: Image.asset(
            'assets/images/currency.png',
            width: 100,
            height: 100,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10.0),
        ),
        Text(
          "Currency Rate Myanmar",
          style: Theme.of(context).textTheme.bodyText1,
        )
      ],
    );
  }
}
