// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:digital_bank/dashboard.dart';
import 'package:flutter/material.dart';

class PaymentConfirmationDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      // title: Text('Payment Confirmation'),
      content: Container(
        width: 400,
        height: 300,
        child: Column(
          children: [
            Container(
                width: 120,
                height: 120,
                child: Image.asset('assets/images/confir.png')),
            Text(
              'Thank You!',
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Times New Roman'),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Payment Done Successfully',
              style: TextStyle(
                color: const Color.fromARGB(255, 99, 71, 71),
                fontSize: 20,
              ),
            )
          ],
        ),
      ),
      actions: <Widget>[
        Center(
            child: ElevatedButton(
          onPressed: () {
            // Add your payment processing logic here
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => dash_board(),
              ),
            );
          },
          child: Text('Confirm'),
        )),
      ],
    );
  }
}
