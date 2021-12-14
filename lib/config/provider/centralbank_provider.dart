// import 'dart:async';
// import 'dart:convert';
// import 'dart:io';
// import 'package:football_live_score/config/app_config.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:http/http.dart' as http;

// class CentralBankProvider with ChangeNotifier {
//   Future centralBankData() async {
//     try {
//       final response = await http.get(
//         Uri.parse(API.centralbanklink),
//         headers: {
//           "Accept": "application/json",
//           'Content-type': 'application/json',
//         },
//       );
//       if (response.statusCode == 200) {
//         var data = json.decode(response.body);
//         return data;
//       } else {
//         throw 'Failed to load CentralBankData';
//       }
//     } on FormatException catch (e) {
//       print("FormatException" + e.toString());
//       throw "Service link's name is not correct !";
//     } on TimeoutException catch (e) {
//       print("TimeOutExecption" + e.toString());
//       throw "Can not connect right now !";
//     } on SocketException catch (e) {
//       print("SocketException" + e.toString());
//       throw "Can not connect right now.Please try again later !";
//     } catch (e) {
//       print("CentralBank Error");
//       throw e.toString();
//     }
//   }

//   Future centralBankNameData() async {
//     try {
//       final response = await http.get(
//         Uri.parse(API.centralbanknamelink),
//         headers: {
//           "Accept": "application/json",
//           'Content-type': 'application/json',
//         },
//       );
//       if (response.statusCode == 200) {
//         var data = json.decode(response.body);
//         return data;
//       } else {
//         throw 'Failed to load CentralBankNameData';
//       }
//     } on FormatException catch (e) {
//       print("FormatException" + e.toString());
//       throw "Service link's name is not correct !";
//     } on TimeoutException catch (e) {
//       print("TimeOutExecption" + e.toString());
//       throw "Can not connect right now !";
//     } on SocketException catch (e) {
//       print("SocketException" + e.toString());
//       throw "Can not connect right now.Please try again later !";
//     } catch (e) {
//       print("CentralBankName Error");
//       throw e.toString();
//     }
//   }
// }
