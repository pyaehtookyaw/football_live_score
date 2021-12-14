import 'package:connectivity/connectivity.dart';
import 'package:flutter/cupertino.dart';

class CheckConnectionProvider with ChangeNotifier {
  Future<int> checkConnection() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      print("Connected to Mobile Network");
      return 1;
    } else if (connectivityResult == ConnectivityResult.wifi) {
      print("Connected to WiFi");
      return 2;
    } else {
      print("Unable to connect. Please Check Internet Connection");
      return 0;
    }
  }
}
