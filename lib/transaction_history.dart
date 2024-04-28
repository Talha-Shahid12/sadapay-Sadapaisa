// ignore_for_file: depend_on_referenced_packages, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables, curly_braces_in_flow_control_structures

import 'package:digital_bank/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'my_profile.dart';

class TransactionHistoryScreen extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionHistoryScreen({required this.transactions});

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
                  'Transactions History',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
          ),
          bottomNavigationBar: CurvedNavigationBar(
            index: 0,
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
              if (index == 1)
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => dash_board(),
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
          body: ListView.builder(
            itemCount: transactions.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    title: Text(
                      transactions[index].title,
                      style: TextStyle(fontSize: 18),
                    ),
                    subtitle: Text(
                      transactions[index].date,
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    trailing: Text(
                      transactions[index].amount,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Divider(
                    thickness: 1.5,
                    color: Colors.grey[300],
                  ),
                ],
              );
            },
          ),
        ));
  }
}

class Transaction {
  final String title;
  final String amount;
  final String date;

  Transaction({required this.title, required this.amount, required this.date});
}
