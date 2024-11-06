import 'package:flutter/material.dart';

void showSnackBar(BuildContext context, String message) {
  final snackBar = SnackBar(
    content: Container(
      height: 60,
      child: Center(
          child: Text(
        message,
        style: TextStyle(fontSize: 17),
      )),
    ),
    duration: Duration(seconds: 3),
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
