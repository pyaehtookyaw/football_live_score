import 'package:football_live_score/config/app_config.dart';
import 'package:football_live_score/config/provider/check_connection.dart';
import 'package:football_live_score/config/provider/football_provider.dart';
import 'package:football_live_score/src/globalwidgets/loading.dart';
import 'package:football_live_score/src/globalwidgets/toastmessage.dart';
import 'package:football_live_score/src/model/match_data.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool noconnection = false;
  bool isLoading = false;
  List<Leagues> leagueList = new List<Leagues>();
  String date;
  bool expand = false;
  int tapped;
  String imageUrl = "https://images.fotmob.com/image_resources/logo/teamlogo/";
  String imageUrlStart =
      "https://images.fotmob.com/image_resources/logo/teamlogo/";
  String imageUrlEnd = "_xsmall.png";

  DateTime _selectedValue = DateTime.now();

  @override
  void initState() {
    super.initState();
    checkconnection();
  }

  checkconnection() async {
    Provider.of<CheckConnectionProvider>(context, listen: false)
        .checkConnection()
        .then((value) {
      if (value > 0) {
        setState(() {
          noconnection = false;
        });
        footballData();
        //centralBankName();
      } else {
        setState(() {
          noconnection = true;
        });
        ToastMessage.toast(false, Message.failconnection);
      }
    });
  }

  footballData() async {
    setState(() {
      isLoading = true;
      leagueList.clear();
    });
    Provider.of<FootballProvider>(context, listen: false).footballData().then(
        (value) {
      setState(() {
        isLoading = false;
      });
      print(value);
      date = value['date'];
      print(date);
      for (int i = 0; i < value['leagues'].length; i++) {
        Map<String, dynamic> map = value['leagues'][i];
        leagueList.add(Leagues.fromJson(map));
      }
      // print("fbData>>>$leagueList");
      print(leagueList.length);
      //return leagueList;
    }, onError: (error) {
      setState(() {
        isLoading = false;
      });
      ToastMessage.toast(false, error.toString());
    }).catchError((error) {
      setState(() {
        isLoading = false;
      });
      // ToastMessage.toast(false, error.toString());
    });
  }

  footballDataWithDate(String date) async {
    setState(() {
      isLoading = true;
      leagueList.clear();
    });
    Provider.of<FootballProvider>(context, listen: false)
        .footballDataWithDate(date)
        .then((value) {
      setState(() {
        isLoading = false;
      });
      print(value);
      date = value['date'];
      print(date);
      for (int i = 0; i < value['leagues'].length; i++) {
        Map<String, dynamic> map = value['leagues'][i];
        leagueList.add(Leagues.fromJson(map));
      }
      // print("fbData>>>$leagueList");
      print(leagueList.length);
    }, onError: (error) {
      setState(() {
        isLoading = false;
      });
      ToastMessage.toast(false, error.toString());
    }).catchError((error) {
      setState(() {
        isLoading = false;
      });
      // ToastMessage.toast(false, error.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    var connectionfail = new Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: GestureDetector(
        onTap: () {
          checkconnection();
        },
        child: Center(
          child: Image.asset('assets/images/connection.jpg',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height),
        ),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Football live score",
          style: TextStyle(fontSize: 19),
        ),
        actions: [
          IconButton(
              onPressed: () {
                checkconnection();
              },
              icon: Icon(Icons.refresh_outlined))
        ],
      ),
      body: noconnection
          ? connectionfail
          : isLoading
              ? Loading()
              : Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          DatePicker(
                            DateTime.now().subtract(const Duration(days: 3)),
                            initialSelectedDate: _selectedValue,
                            selectionColor: Colors.grey,
                            selectedTextColor: Colors.white,
                            onDateChange: (date) {
                              print(date);
                              // New date selected
                              setState(() {
                                _selectedValue = date;
                              });
                              var formatDate =
                                  DateFormat("yyyyMMdd").format(_selectedValue);
                              footballDataWithDate(formatDate);
                            },
                          ),
                        ],
                      ),
                      Expanded(
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: leagueList.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Card(
                                child: Padding(
                                  //padding: EdgeInsets.all(10.0),
                                  padding:
                                      EdgeInsets.only(top: 12.0, bottom: 12.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(left: 10.0),
                                        child: Row(children: [
                                          Image.network(
                                              imageUrl +
                                                  leagueList[index]
                                                      .ccode
                                                      .toLowerCase() +
                                                  ".png",
                                              height: 20,
                                              width: 20),
                                          SizedBox(width: 7),
                                          Flexible(
                                            child: Text(
                                              leagueList[index].ccode +
                                                  ' - ' +
                                                  leagueList[index].name,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1,
                                            ),
                                          ),
                                        ]),
                                      ),
                                      SizedBox(height: 5),
                                      ListView.builder(
                                          itemCount:
                                              leagueList[index].matches.length,
                                          physics: ClampingScrollPhysics(),
                                          shrinkWrap: true,
                                          itemBuilder:
                                              (BuildContext context, int j) {
                                            return ListTile(
                                              leading: Container(
                                                width: 30,
                                                height: 30,
                                                child: Center(
                                                  child: leagueList[index]
                                                              .matches[j]
                                                              .status
                                                              .started ==
                                                          true
                                                      ? Text(
                                                          leagueList[index]
                                                                      .matches[
                                                                          j]
                                                                      .status
                                                                      .finished ==
                                                                  true
                                                              ? leagueList[
                                                                      index]
                                                                  .matches[j]
                                                                  .status
                                                                  .reason
                                                                  .short
                                                              : leagueList[
                                                                      index]
                                                                  .matches[j]
                                                                  .status
                                                                  .liveTime
                                                                  .short,
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .headline1,
                                                        )
                                                      : Text(
                                                          leagueList[index]
                                                                      .matches[
                                                                          j]
                                                                      .status
                                                                      .cancelled ==
                                                                  true
                                                              ? leagueList[
                                                                      index]
                                                                  .matches[j]
                                                                  .status
                                                                  .reason
                                                                  .short
                                                              : '',
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .headline1,
                                                        ),
                                                ),
                                                margin: EdgeInsets.all(0.0),
                                                decoration: BoxDecoration(
                                                    color: leagueList[index]
                                                                .matches[j]
                                                                .status
                                                                .ongoing ==
                                                            true
                                                        ? Colors.green
                                                        : leagueList[index]
                                                                        .matches[
                                                                            j]
                                                                        .status
                                                                        .cancelled ==
                                                                    true ||
                                                                leagueList[index]
                                                                        .matches[
                                                                            j]
                                                                        .status
                                                                        .finished ==
                                                                    true
                                                            ? Colors.grey
                                                            : null,
                                                    shape: BoxShape.circle),
                                              ),
                                              title: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                    child: Text(
                                                      leagueList[index]
                                                                  .matches[j]
                                                                  .status
                                                                  .cancelled ==
                                                              false
                                                          ? leagueList[index]
                                                                      .matches[
                                                                          j]
                                                                      .status
                                                                      .finished ==
                                                                  true
                                                              ? leagueList[
                                                                      index]
                                                                  .matches[j]
                                                                  .home
                                                                  .name
                                                              : leagueList[index]
                                                                          .matches[
                                                                              j]
                                                                          .status
                                                                          .ongoing ==
                                                                      true
                                                                  ? leagueList[
                                                                          index]
                                                                      .matches[
                                                                          j]
                                                                      .home
                                                                      .name
                                                                  : leagueList[
                                                                          index]
                                                                      .matches[
                                                                          j]
                                                                      .home
                                                                      .name
                                                          : leagueList[index]
                                                              .matches[j]
                                                              .home
                                                              .name,
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyText2,
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Image.network(
                                                              imageUrlStart +
                                                                  leagueList[
                                                                          index]
                                                                      .matches[
                                                                          j]
                                                                      .home
                                                                      .id
                                                                      .toString() +
                                                                  imageUrlEnd,
                                                              height: 27,
                                                              width: 27),
                                                          SizedBox(width: 3),
                                                          Text(
                                                            leagueList[index]
                                                                        .matches[
                                                                            j]
                                                                        .status
                                                                        .cancelled ==
                                                                    false
                                                                ? leagueList[index]
                                                                            .matches[
                                                                                j]
                                                                            .status
                                                                            .finished ==
                                                                        true
                                                                    ? leagueList[
                                                                            index]
                                                                        .matches[
                                                                            j]
                                                                        .status
                                                                        .scoreStr
                                                                    : leagueList[index].matches[j].status.ongoing ==
                                                                            true
                                                                        ? leagueList[index]
                                                                            .matches[
                                                                                j]
                                                                            .status
                                                                            .scoreStr
                                                                        : leagueList[index]
                                                                            .matches[
                                                                                j]
                                                                            .status
                                                                            .startTimeStr
                                                                : leagueList[
                                                                        index]
                                                                    .matches[j]
                                                                    .status
                                                                    .startTimeStr,
                                                            style: leagueList[
                                                                            index]
                                                                        .matches[
                                                                            j]
                                                                        .status
                                                                        .cancelled ==
                                                                    false
                                                                ? Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .bodyText2
                                                                : Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .headline2,
                                                          ),
                                                          SizedBox(width: 3),
                                                          Image.network(
                                                              imageUrlStart +
                                                                  leagueList[
                                                                          index]
                                                                      .matches[
                                                                          j]
                                                                      .away
                                                                      .id
                                                                      .toString() +
                                                                  imageUrlEnd,
                                                              height: 27,
                                                              width: 27),
                                                        ]),
                                                  ),
                                                  Expanded(
                                                    child: Text(
                                                      leagueList[index]
                                                                  .matches[j]
                                                                  .status
                                                                  .cancelled ==
                                                              false
                                                          ? leagueList[index]
                                                                      .matches[
                                                                          j]
                                                                      .status
                                                                      .finished ==
                                                                  true
                                                              ? leagueList[
                                                                      index]
                                                                  .matches[j]
                                                                  .away
                                                                  .name
                                                              : leagueList[index]
                                                                          .matches[
                                                                              j]
                                                                          .status
                                                                          .ongoing ==
                                                                      true
                                                                  ? leagueList[
                                                                          index]
                                                                      .matches[
                                                                          j]
                                                                      .away
                                                                      .name
                                                                  : leagueList[
                                                                          index]
                                                                      .matches[
                                                                          j]
                                                                      .away
                                                                      .name
                                                          : leagueList[index]
                                                              .matches[j]
                                                              .away
                                                              .name,
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyText2,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            );
                                          }),
                                    ],
                                  ),
                                ),
                              );
                            }),
                      )
                    ],
                  ),
                ),
    );
  }
}
