import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastMessage {
  ToastMessage._();
  static toast(bool condition, String msg) {
    Fluttertoast.showToast(
      gravity: ToastGravity.BOTTOM,
      msg: msg.toString(),
      webShowClose: true,
      backgroundColor: Colors.black,
      textColor: condition ? Colors.greenAccent : Colors.redAccent,
      toastLength: Toast.LENGTH_LONG,
    );
  }
}
