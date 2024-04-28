// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace, curly_braces_in_flow_control_structures, depend_on_referenced_packages, use_key_in_widget_constructors, camel_case_types, avoid_print, avoid_unnecessary_containers, sort_child_properties_last
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'transaction_history.dart';
import 'my_profile.dart';
import 'send_money.dart';
import 'info.dart';
import 'notification.dart';

class dash_board extends StatefulWidget {
  @override
  _dash_board createState() => _dash_board();
}

class _dash_board extends State<dash_board> {
  final List<Transaction> transactions = [
    Transaction(title: 'Bill Payment', amount: '+2500', date: '11:51 AM'),
    Transaction(title: 'Electric Bill', amount: '-50', date: '8:00 AM'),
    // Add more sample transactions as needed
  ];
  List<String> images = [
    'assets/images/tele.jfif',
    'assets/images/zong1.jpg',
    'assets/images/Telenor1.png',
    'assets/images/tel2.jpg',
    // Add more images here
    // 'assets/images/tele.jfif', // Add one more image
  ];

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          // Handle back button press
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => exit(0)),
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
                  automaticallyImplyLeading: false,
                  title: Row(children: [
                    Text(
                      'Sada',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      'Paisa',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 235, 81, 81)),
                    )
                  ]),
                  actions: [
                    IconButton(
                      icon: Icon(
                        Icons.add_alert,
                        size: 30,
                        color: Colors.redAccent,
                      ),
                      onPressed: () {
                        // Add your logic for the button press here
                        print('Ring icon pressed!');
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => notify(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            bottomNavigationBar: CurvedNavigationBar(
              index: 1,
              height: 60.0,
              items: <Widget>[
                Icon(Icons.compare_arrows, size: 30),
                // Icon(Icons.list, size: 30), // Remove the List icon
                Icon(Icons.home, size: 30),
                // Icon(Icons.call_split, size: 30), // Remove the Call Split icon
                Icon(Icons.perm_identity, size: 30),
              ],
              color: Colors.white,
              buttonBackgroundColor: Colors.white,
              backgroundColor: Colors.blueAccent,
              animationCurve: Curves.linear,
              animationDuration: Duration(milliseconds: 600),
              onTap: (index) {
                if (index == 0)
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TransactionHistoryScreen(
                        transactions: transactions,
                      ),
                    ),
                  );

                if (index == 2)
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => myprofile(),
                    ),
                  );
              },
              letIndexChange: (index) => true,
            ),
            body: SingleChildScrollView(
                child: Column(children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(children: [
                    Container(
                      height: 310,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(21)),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(height: 20),
                                  Text(
                                    '  Current balance',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 17),
                                  ),
                                  Text(
                                    'Rs. 156,980',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                                width: 180,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                        width: 110,
                                        child: Image.asset(
                                            'assets/images/master_card.png')),
                                    InkWell(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => info(),
                                            ),
                                          );
                                        },
                                        child: Icon(
                                          Icons.arrow_forward,
                                          color: Colors.white,
                                          size: 35,
                                        ))
                                  ],
                                ))
                          ]),
                    )
                  ]),
                  Column(
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        TransactionHistoryScreen(
                                            transactions: transactions)));
                          },
                          child: Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(21)),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 2),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.arrow_downward,
                                        size: 35,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 9,
                                  ),
                                  Text(
                                    '  My\n  History',
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 1,
                                  )
                                ],
                              ))),
                      SizedBox(height: 10),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => send_money(),
                              ),
                            );
                          },
                          child: Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(21)),
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          '\u2197', // Unicode for northeast arrow
                                          style: TextStyle(
                                              fontSize: 50.0,
                                              color: Colors.white),
                                        ),
                                        SizedBox(
                                          width: 15,
                                        )
                                      ],
                                    ),
                                    Text(
                                      '  Send &\n  Request',
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    SizedBox(height: 10),
                                  ])))
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    'History',
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'Times New Roman',
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 150,
                width: 370,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 238, 204, 204),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Transactions',
                          style: TextStyle(
                              fontSize: 20,
                              color: const Color.fromARGB(255, 119, 114, 98)),
                        ),
                        //
                        SizedBox(
                          width: 10,
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          TransactionHistoryScreen(
                                              transactions: transactions)));
                            },
                            child: Text(
                              'See all',
                              style: TextStyle(color: Colors.red, fontSize: 17),
                            ))
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                child: Image.asset(
                                    'assets/images/transaction_arrow.png'),
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 194, 194, 180),
                                    borderRadius: BorderRadius.circular(12)),
                              ),
                              SizedBox(
                                height: 20,
                              )
                            ]),
                        SizedBox(width: 10),
                        Column(
                          children: [
                            Text(
                              '03123456789',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Bill Payment',
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 95, 112, 76),
                                  fontSize: 17),
                            ),
                            Text(
                              '11:51 AM',
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 95, 112, 76),
                                  fontSize: 17),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 60,
                        ),
                        Text(
                          '+ Rs. 2,500',
                          style: TextStyle(
                              color: const Color.fromARGB(255, 95, 112, 76),
                              fontSize: 17),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              //     Row(
              //       children: [
              //         SizedBox(
              //           width: 25,
              //         ),
              //         Text(
              //           'My Digital Bank',
              //           style: TextStyle(
              //               fontSize: 25,
              //               fontFamily: 'Times New Roman',
              //               fontWeight: FontWeight.bold),
              //         )
              //       ],
              //     ),
              //     SizedBox(
              //       height: 10,
              //     ),
              //     Row(
              //       children: [
              //         SizedBox(
              //           width: 20,
              //         ),
              //         InkWell(
              //           onTap: () {
              //             showDialog(
              //               context: context,
              //               builder: (BuildContext context) {
              //                 return Dialog(
              //                   shape: RoundedRectangleBorder(
              //                     borderRadius: BorderRadius.circular(30.0),
              //                   ),
              //                   child: Container(
              //                     height: 500,
              //                     child: Column(
              //                       mainAxisAlignment: MainAxisAlignment.spaceAround,
              //                       children: [
              //                         SizedBox(
              //                           height: 5,
              //                         ),
              //                         Text(
              //                           'Money Transfer',
              //                           style: TextStyle(
              //                               fontSize: 30,
              //                               fontWeight: FontWeight.bold),
              //                         ),
              //                         Row(
              //                           children: [
              //                             SizedBox(
              //                               width: 20,
              //                             ),
              //                             Column(
              //                               children: [
              //                                 Container(
              //                                   height: 70,
              //                                   width: 70,
              //                                   decoration: BoxDecoration(
              //                                     color: Color.fromARGB(
              //                                         255, 198, 208, 212),
              //                                     borderRadius:
              //                                         BorderRadius.circular(12),
              //                                   ),
              //                                   child: Center(
              //                                     child: Container(
              //                                       width: 50,
              //                                       height: 50,
              //                                       child: IconButton(
              //                                         icon: Icon(
              //                                           Icons.star_half_outlined,
              //                                           size: 30,
              //                                         ),
              //                                         onPressed: () {
              //                                           // Add your onPressed functionality here
              //                                         },
              //                                       ),
              //                                     ),
              //                                   ),
              //                                 ),
              //                                 Text(
              //                                   'Your\nFavourites',
              //                                   textAlign: TextAlign.center,
              //                                   style: TextStyle(
              //                                     color: Colors.black,
              //                                     fontSize: 14.5,
              //                                     fontWeight: FontWeight.bold,
              //                                   ),
              //                                 ),
              //                               ],
              //                             ),
              //                             SizedBox(
              //                               width: 20,
              //                             ),
              //                             InkWell(
              //                                 onTap: () {
              //                                   Navigator.push(
              //                                     context,
              //                                     MaterialPageRoute(
              //                                       builder: (context) =>
              //                                           send_money(),
              //                                     ),
              //                                   );
              //                                 },
              //                                 child: Column(children: [
              //                                   Container(
              //                                       height: 70,
              //                                       width: 70,
              //                                       decoration: BoxDecoration(
              //                                           color: Color.fromARGB(
              //                                               255, 198, 208, 212),
              //                                           borderRadius:
              //                                               BorderRadius.circular(
              //                                                   12)),
              //                                       child: Center(
              //                                           child: Container(
              //                                         width: 65,
              //                                         height: 65,
              //                                         child: Image.asset(
              //                                             'assets/images/bank_logo.png'),
              //                                       ))),
              //                                   Text(
              //                                     'SadaPaisa\nTransfer',
              //                                     textAlign: TextAlign.center,
              //                                     style: TextStyle(
              //                                         color: Colors.black,
              //                                         fontSize: 14.5,
              //                                         fontWeight: FontWeight.bold),
              //                                   )
              //                                 ])),
              //                             SizedBox(
              //                               width: 20,
              //                             ),
              //                             Column(children: [
              //                               Container(
              //                                   height: 70,
              //                                   width: 70,
              //                                   decoration: BoxDecoration(
              //                                       color: Color.fromARGB(
              //                                           255, 198, 208, 212),
              //                                       borderRadius:
              //                                           BorderRadius.circular(12)),
              //                                   child: Center(
              //                                       child: Container(
              //                                     width: 70,
              //                                     height: 70,
              //                                     child: IconButton(
              //                                       icon: Icon(
              //                                         Icons.send_sharp,
              //                                         size: 30,
              //                                       ),
              //                                       onPressed: () {
              //                                         // Add your onPressed functionality here
              //                                       },
              //                                     ),
              //                                   ))),
              //                               Text(
              //                                 'Bank\nTranfer',
              //                                 textAlign: TextAlign.center,
              //                                 style: TextStyle(
              //                                     color: Colors.black,
              //                                     fontSize: 14.5,
              //                                     fontWeight: FontWeight.bold),
              //                               )
              //                             ]),
              //                             SizedBox(
              //                               width: 20,
              //                             ),
              //                           ],
              //                         ),
              //                         Row(
              //                           children: [
              //                             SizedBox(
              //                               width: 20,
              //                             ),
              //                             Column(
              //                               children: [
              //                                 Container(
              //                                   height: 70,
              //                                   width: 70,
              //                                   decoration: BoxDecoration(
              //                                     color: Color.fromARGB(
              //                                         255, 198, 208, 212),
              //                                     borderRadius:
              //                                         BorderRadius.circular(12),
              //                                   ),
              //                                   child: Center(
              //                                     child: Container(
              //                                       width: 50,
              //                                       height: 50,
              //                                       child: IconButton(
              //                                         icon: Icon(
              //                                           Icons.person_pin_rounded,
              //                                           size: 30,
              //                                         ),
              //                                         onPressed: () {
              //                                           // Add your onPressed functionality here
              //                                         },
              //                                       ),
              //                                     ),
              //                                   ),
              //                                 ),
              //                                 Text(
              //                                   'CNIC\nTransfer',
              //                                   textAlign: TextAlign.center,
              //                                   style: TextStyle(
              //                                     color: Colors.black,
              //                                     fontSize: 14.5,
              //                                     fontWeight: FontWeight.bold,
              //                                   ),
              //                                 ),
              //                               ],
              //                             ),
              //                             SizedBox(
              //                               width: 20,
              //                             ),
              //                             Column(children: [
              //                               Container(
              //                                   height: 70,
              //                                   width: 70,
              //                                   decoration: BoxDecoration(
              //                                       color: Color.fromARGB(
              //                                           255, 198, 208, 212),
              //                                       borderRadius:
              //                                           BorderRadius.circular(12)),
              //                                   child: Center(
              //                                       child: Container(
              //                                     width: 65,
              //                                     height: 65,
              //                                     child: IconButton(
              //                                       icon: Icon(
              //                                         Icons.circle_outlined,
              //                                         size: 30,
              //                                       ),
              //                                       onPressed: () {
              //                                         // Add your onPressed functionality here
              //                                       },
              //                                     ),
              //                                   ))),
              //                               Text(
              //                                 'Payoneer\nTransfer',
              //                                 textAlign: TextAlign.center,
              //                                 style: TextStyle(
              //                                     color: Colors.black,
              //                                     fontSize: 14.5,
              //                                     fontWeight: FontWeight.bold),
              //                               )
              //                             ]),
              //                             SizedBox(
              //                               width: 20,
              //                             ),
              //                             Column(children: [
              //                               Container(
              //                                   height: 70,
              //                                   width: 70,
              //                                   decoration: BoxDecoration(
              //                                       color: Color.fromARGB(
              //                                           255, 198, 208, 212),
              //                                       borderRadius:
              //                                           BorderRadius.circular(12)),
              //                                   child: Center(
              //                                       child: Container(
              //                                     width: 70,
              //                                     height: 70,
              //                                     child: IconButton(
              //                                       icon: Icon(
              //                                         Icons.wallet,
              //                                         size: 30,
              //                                       ),
              //                                       onPressed: () {
              //                                         // Add your onPressed functionality here
              //                                       },
              //                                     ),
              //                                   ))),
              //                               Text(
              //                                 'Other Wallet\nTransfer',
              //                                 textAlign: TextAlign.center,
              //                                 style: TextStyle(
              //                                     color: Colors.black,
              //                                     fontSize: 14.5,
              //                                     fontWeight: FontWeight.bold),
              //                               )
              //                             ]),
              //                             SizedBox(
              //                               width: 20,
              //                             ),
              //                           ],
              //                         ),
              //                         SizedBox(
              //                           height: 10,
              //                         )
              //                       ],
              //                     ),
              //                   ),
              //                 );
              //               },
              //             );
              //           },

              //           //////////////////
              //           ///
              //           ///
              //           ///
              //           child: Column(
              //             children: [
              //               Container(
              //                 height: 70,
              //                 width: 70,
              //                 decoration: BoxDecoration(
              //                   color: Color.fromARGB(255, 198, 208, 212),
              //                   borderRadius: BorderRadius.circular(12),
              //                 ),
              //                 child: Center(
              //                   child: Container(
              //                     width: 50,
              //                     height: 50,
              //                     child: Image.asset('assets/images/send_money.png'),
              //                   ),
              //                 ),
              //               ),
              //               Text(
              //                 'Money\nTransaction',
              //                 textAlign: TextAlign.center,
              //                 style: TextStyle(
              //                   color: Colors.black,
              //                   fontSize: 14.5,
              //                   fontWeight: FontWeight.bold,
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ),
              //         SizedBox(
              //           width: 20,
              //         ),
              //         Column(children: [
              //           Container(
              //               height: 70,
              //               width: 70,
              //               decoration: BoxDecoration(
              //                   color: Color.fromARGB(255, 198, 208, 212),
              //                   borderRadius: BorderRadius.circular(12)),
              //               child: Center(
              //                   child: Container(
              //                 width: 65,
              //                 height: 65,
              //                 child: Image.asset('assets/images/book_ticket.png'),
              //               ))),
              //           Text(
              //             'Bus\nTickets',
              //             textAlign: TextAlign.center,
              //             style: TextStyle(
              //                 color: Colors.black,
              //                 fontSize: 14.5,
              //                 fontWeight: FontWeight.bold),
              //           )
              //         ]),
              //         SizedBox(
              //           width: 20,
              //         ),
              //         Column(children: [
              //           Container(
              //               height: 70,
              //               width: 70,
              //               decoration: BoxDecoration(
              //                   color: Color.fromARGB(255, 198, 208, 212),
              //                   borderRadius: BorderRadius.circular(12)),
              //               child: Center(
              //                   child: Container(
              //                 width: 70,
              //                 height: 70,
              //                 child: Image.asset('assets/images/bill_pay.jpg'),
              //               ))),
              //           Text(
              //             'Utility\nBills',
              //             textAlign: TextAlign.center,
              //             style: TextStyle(
              //                 color: Colors.black,
              //                 fontSize: 14.5,
              //                 fontWeight: FontWeight.bold),
              //           )
              //         ]),
              //         SizedBox(
              //           width: 20,
              //         ),
              //         Column(children: [
              //           Container(
              //               height: 70,
              //               width: 70,
              //               decoration: BoxDecoration(
              //                   color: Color.fromARGB(255, 198, 208, 212),
              //                   borderRadius: BorderRadius.circular(12)),
              //               child: Center(
              //                   child: Container(
              //                 width: 70,
              //                 height: 70,
              //                 child: Image.asset('assets/images/mob_bundle.png'),
              //               ))),
              //           Text(
              //             'Mobile\nPacks',
              //             textAlign: TextAlign.center,
              //             style: TextStyle(
              //                 color: Colors.black,
              //                 fontSize: 14.5,
              //                 fontWeight: FontWeight.bold),
              //           )
              //         ]),
              //       ],
              //     )
              //   ],
              // ))
              GestureDetector(
                onHorizontalDragEnd: (details) {
                  if (details.primaryVelocity != 0) {
                    setState(() {
                      if (details.primaryVelocity! > 0) {
                        currentIndex =
                            (currentIndex - 1).clamp(0, images.length - 1);
                      } else {
                        currentIndex =
                            (currentIndex + 1).clamp(0, images.length - 1);
                      }
                    });
                  }
                },
                child: Center(
                  child: Container(
                    height: 150,
                    width: 370,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(28),
                            bottomLeft: Radius.circular(28),
                            bottomRight: Radius.circular(28))),
                    child: PageView.builder(
                      itemCount: images.length,
                      controller: PageController(initialPage: currentIndex),
                      onPageChanged: (index) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      itemBuilder: (context, index) {
                        return Center(
                          child: Container(
                            height: 150,
                            width: 370,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  20), // Set the circular border radius
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  20), // ClipRRect is used to clip the image with circular border
                              child:
                                  Image.asset(images[index], fit: BoxFit.cover),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              )
            ]))));
  }
}
