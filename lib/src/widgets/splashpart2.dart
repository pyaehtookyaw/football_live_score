import 'package:flutter/material.dart';

class SplashPart2 extends StatelessWidget {
  const SplashPart2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          child: Image.asset(
            'assets/images/loading.gif',
            color: Colors.green,
            width: 100,
            height: 100,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10.0),
        ),
        Text(
          "Currency Rate For Everyone",
          softWrap: true,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyText2,
        )
      ],
    );
  }
}
