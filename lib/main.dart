import 'package:football_live_score/config/provider/centralbank_provider.dart';
import 'package:football_live_score/config/provider/check_connection.dart';
import 'package:football_live_score/config/provider/football_provider.dart';
import 'package:football_live_score/src/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ExchangeRate());
}

class ExchangeRate extends StatelessWidget {
  const ExchangeRate({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: CheckConnectionProvider()),
        // ChangeNotifierProvider.value(value: CentralBankProvider()),
        ChangeNotifierProvider.value(value: FootballProvider()),
      ],
      child: MaterialApp(
          theme: ThemeData(
              primaryColor: Colors.green,
              textTheme: TextTheme(
                overline: TextStyle(
                    color: Colors.green,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
                headline1: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
                headline2: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.lineThrough),
                headline3: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
                headline4: TextStyle(
                    color: Colors.black,
                    fontSize: 13.5,
                    fontWeight: FontWeight.w300),
                headline5: TextStyle(
                    color: Colors.black,
                    fontSize: 13.5,
                    fontWeight: FontWeight.w300),
                bodyText1: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
                bodyText2: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              )),
          home: MainSplashScreen()),
    );
  }
}
