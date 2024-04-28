// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, use_key_in_widget_constructors, avoid_unnecessary_containers

import 'package:digital_bank/dashboard.dart';
import 'package:flutter/material.dart';

class notify extends StatefulWidget {
  @override
  State<notify> createState() => _notify();
}

class _notify extends State<notify> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          // Handle back button press
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => dash_board()),
          );
          return false;
        },
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Color.fromARGB(255, 230, 199, 199),
            ),
            backgroundColor: Color.fromARGB(255, 230, 199, 199),
            body: Center(
                child: Container(
                    child: Text(
              'No Notification Yet !',
              style: TextStyle(fontSize: 19),
            )))));
  }
}
