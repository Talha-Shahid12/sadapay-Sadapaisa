// ignore_for_file: camel_case_types, use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors

import 'package:digital_bank/dashboard.dart';
import 'package:digital_bank/main.dart';
import 'package:flutter/material.dart';

class login extends StatelessWidget {
  var name = TextEditingController();
  var email = TextEditingController();
  var address = TextEditingController();
  var phone = TextEditingController();
  var pin = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 230, 199, 199),
          automaticallyImplyLeading: false,
        ),
        backgroundColor: Color.fromARGB(255, 230, 199, 199),
        body: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 15),
            Text(
              'Create Account',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  controller: name,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    labelText: 'Full Name',
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors
                            .white, // Change this color to your desired outline color
                      ),
                    ),
                  ),
                  style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  controller: email,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors
                            .black, // Change this color to your desired outline color
                      ),
                    ),
                  ),
                  style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  controller: phone,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Phone',
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors
                            .black, // Change this color to your desired outline color
                      ),
                    ),
                  ),
                  style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  controller: address,
                  keyboardType: TextInputType.streetAddress,
                  decoration: InputDecoration(
                    labelText: 'Address',
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 160, 156,
                            156), // Change this color to your desired outline color
                      ),
                    ),
                  ),
                  style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  controller: pin,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Pin',
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors
                            .black, // Change this color to your desired outline color
                      ),
                    ),
                  ),
                  style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
                ),
              ),
            ),
            Column(children: [
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(50)),
                    child: InkWell(
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 40,
                        color: Colors.white,
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => dash_board(),
                          ),
                        );
                      },
                    )),
                SizedBox(
                  width: 20,
                )
              ]),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyHomePage(),
                      ),
                    );
                  },
                  child: Text(
                    'Account Exist?',
                    style: TextStyle(fontSize: 17),
                  ))
            ])
          ],
        )));
  }
}
