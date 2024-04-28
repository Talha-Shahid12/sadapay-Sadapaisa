// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, use_key_in_widget_constructors, camel_case_types, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'dashboard.dart';

class info extends StatefulWidget {
  @override
  State<info> createState() => _info();
}

class _info extends State<info> {
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
                  bottomLeft: Radius.circular(25.0),
                  bottomRight: Radius.circular(25.0),
                ),
                child: AppBar(
                  backgroundColor: Colors.black,
                  title: Text(
                    'My Account',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  centerTitle: true,
                  iconTheme: IconThemeData(
                    color: Colors.white, // Set the icon color here
                  ),
                ),
              ),
            ),
            backgroundColor: Color.fromARGB(255, 230, 199, 199),
            body: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(children: [
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                        width: 350,
                        height: 100,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 145, 162, 175),
                            borderRadius: BorderRadius.circular(21)),
                        child: Row(children: [
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(60, 80, 53, 53),
                                  borderRadius: BorderRadius.circular(25),
                                  border: Border.all(
                                      color:
                                          const Color.fromARGB(255, 32, 24, 24),
                                      width: 2)),
                              child: Icon(
                                Icons.person,
                                size: 40,
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                            child: Text(
                              'Talha Shahid',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          )
                        ])),
                  ]),
                  Text(
                    'Order Now!',
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'Times New Roman',
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          height: 280,
                          width: 380,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 94, 61, 58),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(28))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                        height: 70,
                                        width: 70,
                                        child: Image.asset(
                                            'assets/images/bank_logo.png')),
                                    Row(children: [
                                      Text(
                                        'Sada',
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      Text(
                                        'Paisa',
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold,
                                            color: const Color.fromARGB(
                                                255, 235, 81, 81)),
                                      )
                                    ]),
                                    SizedBox(
                                      width: 10,
                                    )
                                  ]),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 120,
                                    height: 120,
                                    child: Image.asset(
                                        'assets/images/master_card.png'),
                                  ),
                                  Container(
                                    width: 120,
                                    height: 120,
                                  ),
                                  Icon(
                                    Icons.wifi,
                                    size: 50,
                                  ),
                                  SizedBox(width: 4)
                                ],
                              ),
                              Text(
                                '1234 5678 9101 1121',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 201, 233, 218),
                                    fontSize: 30),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'Talha Shahid',
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 235, 0, 0),
                                        fontSize: 20),
                                  ),
                                  SizedBox(
                                    width: 100,
                                  ),
                                  Text(
                                    '3/24',
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 235, 0, 0),
                                        fontSize: 20),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ])));
  }
}
