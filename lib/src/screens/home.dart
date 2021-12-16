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
import 'package:provider/provider.dart';
import 'package:football_live_score/config/app_config.dart';

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
                                          Text(
                                            leagueList[index].ccode +
                                                ' - ' +
                                                leagueList[index].name,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1,
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
                                            // return Text(
                                            //   leagueList[index]
                                            //           .matches[j]
                                            //           .home
                                            //           .name +
                                            //       ' vs ' +
                                            //       leagueList[index]
                                            //           .matches[j]
                                            //           .away
                                            //           .name,
                                            //   style: Theme.of(context)
                                            //       .textTheme
                                            //       .headline1,
                                            // );
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
                                                  : Container(
                                                      width: 30,
                                                      height: 30,
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
                                              // title: Text(
                                              //   leagueList[index]
                                              //               .matches[j]
                                              //               .status
                                              //               .cancelled ==
                                              //           false
                                              //       ? leagueList[index]
                                              //                   .matches[j]
                                              //                   .status
                                              //                   .finished ==
                                              //               true
                                              //           ? leagueList[index]
                                              //                   .matches[j]
                                              //                   .home
                                              //                   .name +
                                              //               ' ' +
                                              //               leagueList[index]
                                              //                   .matches[j]
                                              //                   .status
                                              //                   .scoreStr +
                                              //               ' ' +
                                              //               leagueList[index]
                                              //                   .matches[j]
                                              //                   .away
                                              //                   .name
                                              //           : leagueList[index]
                                              //                       .matches[j]
                                              //                       .status
                                              //                       .ongoing ==
                                              //                   true
                                              //               ? leagueList[index]
                                              //                       .matches[j]
                                              //                       .home
                                              //                       .name +
                                              //                   ' ' +
                                              //                   leagueList[
                                              //                           index]
                                              //                       .matches[j]
                                              //                       .status
                                              //                       .scoreStr +
                                              //                   ' ' +
                                              //                   leagueList[
                                              //                           index]
                                              //                       .matches[j]
                                              //                       .away
                                              //                       .name
                                              //               : leagueList[index]
                                              //                       .matches[j]
                                              //                       .home
                                              //                       .name +
                                              //                   ' ' +
                                              //                   leagueList[
                                              //                           index]
                                              //                       .matches[j]
                                              //                       .status
                                              //                       .startTimeStr +
                                              //                   ' ' +
                                              //                   leagueList[
                                              //                           index]
                                              //                       .matches[j]
                                              //                       .away
                                              //                       .name
                                              //       : leagueList[index]
                                              //               .matches[j]
                                              //               .home
                                              //               .name +
                                              //           ' ' +
                                              //           leagueList[index]
                                              //               .matches[j]
                                              //               .status
                                              //               .startTimeStr +
                                              //           ' ' +
                                              //           leagueList[index]
                                              //               .matches[j]
                                              //               .away
                                              //               .name,
                                              //   style: Theme.of(context)
                                              //       .textTheme
                                              //       .bodyText2,
                                              // ),
                                            );
                                            // trailing: Text(
                                            //   "GFG",
                                            //   style: TextStyle(
                                            //       color: Colors.green,
                                            //       fontSize: 15),
                                            // ),
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
      // Column(
      //     children: [
      //       Padding(
      //           padding: const EdgeInsets.only(left: 10, right: 10),
      //           child: TitleText(
      //             date: date,
      //           )),
      //       // Expanded(
      //       //   child: ListView.builder(
      //       //       itemCount: leagueList.length,
      //       //       itemBuilder: (BuildContext context, index) {
      //       //         return FootballLeague(name: leagueList[index].name);
      //       //         // CurrencyRate(
      //       //         //     currency: matchList[index].name.toString(),
      //       //         //     rate: matchList[index].name.toString(),
      //       //         //     name: matchList[index].name.toString());
      //       //       }),
      //       // ),

      //       Expanded(
      //         child: ListView.builder(
      //           itemCount: leagueList.length,
      //           itemBuilder: (BuildContext context, int index) {
      //             return GestureDetector(
      //               onTap: () {
      //                 //debugPrint('List item $index tapped $expand');
      //                 setState(() {
      //                   /// XOR operand returns when either or both conditions are true
      //                   /// `tapped == null` on initial app start, [tapped] is null
      //                   /// `index == tapped` initiate action only on tapped item
      //                   /// `!expand` should check previous expand action
      //                   expand = ((tapped == null) ||
      //                           ((index == tapped) || !expand))
      //                       ? !expand
      //                       : expand;

      //                   /// This tracks which index was tapped
      //                   tapped = index;
      //                   //debugPrint('current expand state: $expand');
      //                   // _getSubCategory(
      //                   //     categoryList[index].scategoryId);
      //                 });
      //               },

      //               /// We set ExpandableListView to be a Widget
      //               /// for Home StatefulWidget to be able to manage
      //               /// ExpandableListView expand/retract actions
      //               child: expandableListView(
      //                   index,
      //                   leagueList[index].parentLeagueId,
      //                   leagueList[index].name,
      //                   index == tapped ? expand : false,
      //                   leagueList[index].matches),
      //               // child: ExpandableListView(
      //               //   title: "Title $index",
      //               //   isExpanded: expand,
      //               // ),
      //             );
      //           },
      //           //itemCount: 5,
      //         ),
      //       ),
      //     ],
      //   ),
    );
  }
}

//   Widget expandableListView(int index, int pId, String pName, bool isExpanded,
//       List<Matches> matchList) {
//     //debugPrint('List item build $index $isExpanded');
//     return Container(
//       //margin: EdgeInsets.symmetric(vertical: 1.0),
//       child: Column(
//         children: <Widget>[
//           Container(
//             // color: Colors.white,
//             padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
//             child: Card(
//               elevation: 8,
//               child: Padding(
//                 padding: const EdgeInsets.only(top: 10, bottom: 5, left: 15),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: <Widget>[
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           pName,
//                           style: Theme.of(context).textTheme.headline3,
//                         ),
//                         // Text(
//                         //   namemm,
//                         //   style: Theme.of(context).textTheme.headline3,
//                         // ),
//                       ],
//                     ),
//                     IconButton(
//                         icon: Container(
//                           height: 50.0,
//                           width: 50.0,
//                           decoration: BoxDecoration(
//                             color: Colors.green,
//                             shape: BoxShape.circle,
//                           ),
//                           child: Center(
//                             child: Icon(
//                               isExpanded
//                                   ? Icons.keyboard_arrow_up
//                                   : Icons.keyboard_arrow_down,
//                               color: Colors.white,
//                               size: 30.0,
//                             ),
//                           ),
//                         ),
//                         onPressed: () {
//                           // setState(() {
//                           //   expandFlag = !expandFlag;
//                           // });
//                           print("parentID>>>$matchList");
//                           print(matchList);
//                         }),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           // _isLoadingSub
//           //     ? Center(child: CircularProgressIndicator())
//           //     :
//           ExpandableContainer(
//               expanded: isExpanded,
//               child: ListView.builder(
//                 itemCount: matchList.length,
//                 itemBuilder: (BuildContext context, int index) {
//                   return Container(
//                     decoration: BoxDecoration(
//                         border: Border.all(width: 1.0, color: Colors.green),
//                         color: Colors.green),
//                     child: Padding(
//                       padding: EdgeInsets.only(left: 5, right: 5),
//                       child: Card(
//                         elevation: 5,
//                         color: Color(0xFFFFEFEE),
//                         child: Padding(
//                           padding: const EdgeInsets.only(top: 10, bottom: 5),
//                           child: ListTile(
//                             title: Text(
//                               matchList[index].home.name +
//                                   ' vs ' +
//                                   matchList[index].away.name,
//                               style: Theme.of(context).textTheme.headline3,
//                             ),
//                             // leading: Icon(
//                             //   Icons.local_pizza,
//                             //   color: Colors.white,
//                             // ),
//                             // subtitle: Text(
//                             //   subCategory[index].submm,
//                             //   style: TextStyle(
//                             //       fontFamily: "FiraSans",
//                             //       fontWeight: FontWeight.w300,
//                             //       fontSize: 16,
//                             //       color: Colors.pink),
//                             // ),
//                             onTap: () {
//                               print("dfdd");
//                               // Navigator.push(
//                               //   context,
//                               //   MaterialPageRoute(
//                               //       builder: (context) => ServiceList(
//                               //             categoryId: cid,
//                               //             subCategoryId:
//                               //                 subCategory[index].subid,
//                               //           )),
//                               // );
//                             },
//                           ),
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//               ))
//         ],
//       ),
//     );
//   }
// }

// class ExpandableContainer extends StatelessWidget {
//   final bool expanded;
//   final double collapsedHeight;
//   final double expandedHeight;
//   final Widget child;

//   ExpandableContainer({
//     @required this.child,
//     this.collapsedHeight = 0.0,
//     this.expandedHeight = 300.0,
//     this.expanded = true,
//   });

//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     return AnimatedContainer(
//       duration: Duration(milliseconds: 500),
//       curve: Curves.easeInOut,
//       width: screenWidth,
//       height: expanded ? expandedHeight : collapsedHeight,
//       child: Container(
//         child: child,
//         // decoration:
//         //     BoxDecoration(border: Border.all(width: 0.0, color: Colors.white)),
//       ),
//     );
//   }
// }
