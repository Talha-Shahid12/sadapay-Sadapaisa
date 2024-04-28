// ignore_for_file: camel_case_types, use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'amount.dart';
import 'dashboard.dart';

class send_money extends StatelessWidget {
  TextEditingController no = TextEditingController();
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
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(70.0),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    //bottomLeft: Radius.circular(25.0),
                    //bottomRight: Radius.circular(25.0),
                    ),
                child: AppBar(
                  backgroundColor: Colors.black,
                  centerTitle: true,
                  // automaticallyImplyLeading: false,
                  iconTheme: IconThemeData(
                    color: Colors.white, // Set the icon color here
                  ),
                  title: Text(
                    'Enter  Account  Number',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
            ),
            backgroundColor: Color.fromARGB(255, 0, 0, 0),
            body: SingleChildScrollView(
                child: Container(
              height: 750,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextFormField(
                        controller: no,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'XXXXXXXXXXXX',

                          labelStyle: TextStyle(
                              color: const Color.fromARGB(255, 95, 78, 78),
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                          // border: OutlineInputBorder(
                          //     // borderSide: BorderSide(
                          //     //   color: Colors
                          //     //       .white, // Change this color to your desired outline color
                          //     // ),
                          //     ),
                        ),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => send_amount(),
                          ),
                        );
                      },
                      child: Container(
                        height: 50,
                        width: 350,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 8, 32, 9),
                            borderRadius: BorderRadius.circular(30)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Add Account Number',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 195, 207, 17),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              size: 30,
                              color: Color.fromARGB(255, 195, 207, 17),
                            ),
                          ],
                        ),
                      )),
                  SizedBox(height: 10)
                ],
              ),
            ))));
  }
}
