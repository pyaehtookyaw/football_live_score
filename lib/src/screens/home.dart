import 'package:football_live_score/config/app_config.dart';
import 'package:football_live_score/config/provider/centralbank_provider.dart';
import 'package:football_live_score/config/provider/check_connection.dart';
import 'package:football_live_score/config/provider/football_provider.dart';
import 'package:football_live_score/src/globalwidgets/loading.dart';
import 'package:football_live_score/src/globalwidgets/toastmessage.dart';
import 'package:football_live_score/src/model/match_data.dart';
import 'package:football_live_score/src/widgets/currencyrate.dart';
import 'package:football_live_score/src/widgets/football_league.dart';
import 'package:football_live_score/src/widgets/title.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:football_live_score/config/app_config.dart';
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
                      // Container(
                      //   child: DatePicker(
                      //     _selectedValue,
                      //     onDateChange: (date) {
                      //       // New date selected
                      //       setState(() {
                      //         _selectedValue = date;
                      //       });
                      //     },
                      //   ),
                      // ),
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
                      // FutureBuilder(
                      //   future: footballData(),
                      //   builder: (context, snapshot) {
                      //     print(snapshot.data);
                      //     if (snapshot.hasData == false) {
                      //       return Center(child: CircularProgressIndicator());
                      //     } else {
                      //       return Column(
                      //         children: <Widget>[
                      //           Expanded(
                      //             child: ListView.builder(
                      //                 shrinkWrap: true,
                      //                 itemCount: snapshot.data.length,
                      //                 itemBuilder:
                      //                     (BuildContext context, int index) {
                      //                   return Card(
                      //                     child: Padding(
                      //                       //padding: EdgeInsets.all(10.0),
                      //                       padding: EdgeInsets.only(
                      //                           top: 12.0, bottom: 12.0),
                      //                       child: Column(
                      //                         crossAxisAlignment:
                      //                             CrossAxisAlignment.start,
                      //                         children: <Widget>[
                      //                           Padding(
                      //                             padding: EdgeInsets.only(
                      //                                 left: 10.0),
                      //                             child: Row(children: [
                      //                               Image.network(
                      //                                   imageUrl +
                      //                                       snapshot.data[index]
                      //                                           .ccode
                      //                                           .toLowerCase() +
                      //                                       ".png",
                      //                                   height: 20,
                      //                                   width: 20),
                      //                               SizedBox(width: 7),
                      //                               Text(
                      //                                 snapshot.data[index]
                      //                                         .ccode +
                      //                                     ' - ' +
                      //                                     snapshot
                      //                                         .data[index].name,
                      //                                 style: Theme.of(context)
                      //                                     .textTheme
                      //                                     .bodyText1,
                      //                               ),
                      //                             ]),
                      //                           ),
                      //                           SizedBox(height: 5),
                      //                           ListView.builder(
                      //                               itemCount: snapshot
                      //                                   .data[index]
                      //                                   .matches
                      //                                   .length,
                      //                               physics:
                      //                                   ClampingScrollPhysics(),
                      //                               shrinkWrap: true,
                      //                               itemBuilder:
                      //                                   (BuildContext context,
                      //                                       int j) {
                      //                                 // return Text(
                      //                                 //   leagueList[index]
                      //                                 //           .matches[j]
                      //                                 //           .home
                      //                                 //           .name +
                      //                                 //       ' vs ' +
                      //                                 //       leagueList[index]
                      //                                 //           .matches[j]
                      //                                 //           .away
                      //                                 //           .name,
                      //                                 //   style: Theme.of(context)
                      //                                 //       .textTheme
                      //                                 //       .headline1,
                      //                                 // );
                      //                                 return ListTile(
                      //                                   leading: snapshot
                      //                                               .data[index]
                      //                                               .matches[j]
                      //                                               .status
                      //                                               .reason !=
                      //                                           null
                      //                                       ? Container(
                      //                                           width: 30,
                      //                                           height: 30,
                      //                                           child: Center(
                      //                                             child: Text(
                      //                                               snapshot
                      //                                                   .data[
                      //                                                       index]
                      //                                                   .matches[
                      //                                                       j]
                      //                                                   .status
                      //                                                   .reason
                      //                                                   .short,
                      //                                               style: Theme.of(
                      //                                                       context)
                      //                                                   .textTheme
                      //                                                   .headline1,
                      //                                             ),
                      //                                           ),
                      //                                           margin:
                      //                                               EdgeInsets
                      //                                                   .all(
                      //                                                       0.0),
                      //                                           decoration: BoxDecoration(
                      //                                               color: Colors
                      //                                                   .grey,
                      //                                               shape: BoxShape
                      //                                                   .circle),
                      //                                         )
                      //                                       : Container(
                      //                                           width: 30,
                      //                                           height: 30,
                      //                                         ),
                      //                                   title: Row(
                      //                                     mainAxisAlignment:
                      //                                         MainAxisAlignment
                      //                                             .start,
                      //                                     children: [
                      //                                       Expanded(
                      //                                         child: Text(
                      //                                           snapshot
                      //                                                       .data[
                      //                                                           index]
                      //                                                       .matches[
                      //                                                           j]
                      //                                                       .status
                      //                                                       .cancelled ==
                      //                                                   false
                      //                                               ? snapshot.data[index].matches[j].status.finished ==
                      //                                                       true
                      //                                                   ? snapshot
                      //                                                       .data[
                      //                                                           index]
                      //                                                       .matches[
                      //                                                           j]
                      //                                                       .home
                      //                                                       .name
                      //                                                   : snapshot.data[index].matches[j].status.ongoing ==
                      //                                                           true
                      //                                                       ? snapshot
                      //                                                           .data[
                      //                                                               index]
                      //                                                           .matches[
                      //                                                               j]
                      //                                                           .home
                      //                                                           .name
                      //                                                       : snapshot
                      //                                                           .data[
                      //                                                               index]
                      //                                                           .matches[
                      //                                                               j]
                      //                                                           .home
                      //                                                           .name
                      //                                               : snapshot
                      //                                                   .data[
                      //                                                       index]
                      //                                                   .matches[
                      //                                                       j]
                      //                                                   .home
                      //                                                   .name,
                      //                                           style: Theme.of(
                      //                                                   context)
                      //                                               .textTheme
                      //                                               .bodyText2,
                      //                                         ),
                      //                                       ),
                      //                                       Expanded(
                      //                                         child: Row(
                      //                                             mainAxisAlignment:
                      //                                                 MainAxisAlignment
                      //                                                     .start,
                      //                                             children: [
                      //                                               Image.network(
                      //                                                   imageUrlStart +
                      //                                                       snapshot.data[index].matches[j].home.id
                      //                                                           .toString() +
                      //                                                       imageUrlEnd,
                      //                                                   height:
                      //                                                       27,
                      //                                                   width:
                      //                                                       27),
                      //                                               SizedBox(
                      //                                                   width:
                      //                                                       3),
                      //                                               Text(
                      //                                                 snapshot.data[index].matches[j].status.cancelled ==
                      //                                                         false
                      //                                                     ? snapshot.data[index].matches[j].status.finished == true
                      //                                                         ? snapshot.data[index].matches[j].status.scoreStr
                      //                                                         : snapshot.data[index].matches[j].status.ongoing == true
                      //                                                             ? snapshot.data[index].matches[j].status.scoreStr
                      //                                                             : snapshot.data[index].matches[j].status.startTimeStr
                      //                                                     : snapshot.data[index].matches[j].status.startTimeStr,
                      //                                                 style: snapshot.data[index].matches[j].status.cancelled ==
                      //                                                         false
                      //                                                     ? Theme.of(context)
                      //                                                         .textTheme
                      //                                                         .bodyText2
                      //                                                     : Theme.of(context)
                      //                                                         .textTheme
                      //                                                         .headline2,
                      //                                               ),
                      //                                               SizedBox(
                      //                                                   width:
                      //                                                       3),
                      //                                               Image.network(
                      //                                                   imageUrlStart +
                      //                                                       snapshot.data[index].matches[j].away.id
                      //                                                           .toString() +
                      //                                                       imageUrlEnd,
                      //                                                   height:
                      //                                                       27,
                      //                                                   width:
                      //                                                       27),
                      //                                             ]),
                      //                                       ),
                      //                                       Expanded(
                      //                                         child: Text(
                      //                                           snapshot
                      //                                                       .data[
                      //                                                           index]
                      //                                                       .matches[
                      //                                                           j]
                      //                                                       .status
                      //                                                       .cancelled ==
                      //                                                   false
                      //                                               ? snapshot.data[index].matches[j].status.finished ==
                      //                                                       true
                      //                                                   ? snapshot
                      //                                                       .data[
                      //                                                           index]
                      //                                                       .matches[
                      //                                                           j]
                      //                                                       .away
                      //                                                       .name
                      //                                                   : snapshot.data[index].matches[j].status.ongoing ==
                      //                                                           true
                      //                                                       ? snapshot
                      //                                                           .data[
                      //                                                               index]
                      //                                                           .matches[
                      //                                                               j]
                      //                                                           .away
                      //                                                           .name
                      //                                                       : snapshot
                      //                                                           .data[
                      //                                                               index]
                      //                                                           .matches[
                      //                                                               j]
                      //                                                           .away
                      //                                                           .name
                      //                                               : snapshot
                      //                                                   .data[
                      //                                                       index]
                      //                                                   .matches[
                      //                                                       j]
                      //                                                   .away
                      //                                                   .name,
                      //                                           style: Theme.of(
                      //                                                   context)
                      //                                               .textTheme
                      //                                               .bodyText2,
                      //                                         ),
                      //                                       ),
                      //                                     ],
                      //                                   ),
                      //                                 );
                      //                               }),
                      //                         ],
                      //                       ),
                      //                     ),
                      //                   );
                      //                 }),
                      //           )
                      //         ],
                      //       );
                      //     }
                      //   },
                      // ),
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
                                              leading: leagueList[index]
                                                          .matches[j]
                                                          .status
                                                          .reason !=
                                                      null
                                                  ? Container(
                                                      width: 30,
                                                      height: 30,
                                                      child: Center(
                                                        child: Text(
                                                          leagueList[index]
                                                              .matches[j]
                                                              .status
                                                              .reason
                                                              .short,
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .headline1,
                                                        ),
                                                      ),
                                                      margin:
                                                          EdgeInsets.all(0.0),
                                                      decoration: BoxDecoration(
                                                          color: Colors.grey,
                                                          shape:
                                                              BoxShape.circle),
                                                    )
                                                  : SizedBox(width: 5),
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
