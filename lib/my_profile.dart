// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, depend_on_referenced_packages, use_key_in_widget_constructors, camel_case_types, curly_braces_in_flow_control_structures, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:digital_bank/dashboard.dart';
import 'package:digital_bank/info.dart';
import 'package:digital_bank/privacy_policy.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'transaction_history.dart';
import 'main.dart';
import 'notification.dart';

class myprofile extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(title: 'Bill Payment', amount: '+2500', date: '11:51 AM'),
    Transaction(title: 'Electric Bill', amount: '-50', date: '8:00 AM'),
    // Add more sample transactions as needed
  ];
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
                  iconTheme: IconThemeData(
                    color: const Color.fromRGBO(255, 255, 255, 1),
                  ),
                  backgroundColor: Colors.black,
                  title: Text(
                    'Account Details',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
            ),
            bottomNavigationBar: CurvedNavigationBar(
              index: 2,
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
                if (index == 1)
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => dash_board(),
                    ),
                  );
              },
              letIndexChange: (index) => true,
            ),
            body: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  SizedBox(height: 30),
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
                          Container(
                            child: Text(
                              'Talha Shahid',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          )
                        ]))
                  ]),
                  SizedBox(
                    height: 50,
                  ),
                  Divider(
                    thickness: 2,
                    color: Colors.grey[300],
                  ),
                  Container(
                    height: 50,
                    child: InkWell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(width: 10),
                          Text(
                            'My Dashboard',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(width: 150),
                          Icon(Icons.account_balance),
                          SizedBox(width: 10),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => dash_board()));
                      },
                    ),
                  ),
                  Divider(
                    thickness: 2,
                    color: Colors.grey[300],
                  ),
                  Container(
                    height: 50,
                    child: InkWell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(width: 10),
                          Text(
                            'Transactions',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(width: 150),
                          Icon(Icons.history),
                          SizedBox(width: 10),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TransactionHistoryScreen(
                              transactions: transactions,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Divider(
                    thickness: 2,
                    color: Colors.grey[300],
                  ),
                  Container(
                    height: 50,
                    child: InkWell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(width: 10),
                          Text(
                            'Privacy Policy',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(width: 150),
                          Icon(Icons.security),
                          SizedBox(width: 10),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PrivacyPolicyScreen()));
                      },
                    ),
                  ),
                  Divider(
                    thickness: 2,
                    color: Colors.grey[300],
                  ),
                  Container(
                    height: 50,
                    child: InkWell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(width: 10),
                          Text(
                            'Notifications',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(width: 190),
                          Icon(Icons.notification_add),
                          SizedBox(width: 10),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => notify(),
                          ),
                        );
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => dash_board()));
                      },
                    ),
                  ),
                  Divider(
                    thickness: 2,
                    color: Colors.grey[300],
                  ),
                  Container(
                    height: 50,
                    child: InkWell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(width: 10),
                          Text(
                            'Account Details',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(width: 150),
                          Icon(Icons.info),
                          SizedBox(width: 10),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => info(),
                          ),
                        );
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => dash_board()));
                      },
                    ),
                  ),
                  Divider(
                    thickness: 2,
                    color: Colors.grey[300],
                  ),
                  Container(
                    height: 50,
                    child: InkWell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(width: 10),
                          Text(
                            'Account Log Out',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(width: 150),
                          Icon(Icons.logout),
                          SizedBox(width: 10),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()));
                      },
                    ),
                  ),
                  Divider(
                    thickness: 2,
                    color: Colors.grey[300],
                  ),
                ]))));
  }
}
