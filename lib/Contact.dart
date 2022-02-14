// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

import 'SizeConfig.dart';
import 'login_screen.dart';

class Contact extends StatelessWidget {
  final number = '+256756322224';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('MOBIGARAGE\nContact us'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              color: Colors.green[100],
              padding: const EdgeInsets.fromLTRB(50, 120, 10, 10),
              width: 1000 * SizeConfig.widthMultiplier,
              //height: 1000.0,
              child: RichText(
                text: const TextSpan(
                  text: 'Contact\n\n',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.w800,
                  ),
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    TextSpan(
                      // ignore: prefer_adjacent_string_concatenation
                      text: 'Wandegeya, opposite Kiwamirembe Hostel\n' +
                          'P.O BOX 4231\n' +
                          'Kampala (U)\n' +
                          'Tel: 0756322224\n' +
                          'Tel: 07726219954\n' +
                          'Leave a comment about our services.\n' +
                          'We will be glad to resolve the issues for better services' +
                          'Sign Up to become a member and enjoy more of our offers',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(),
            SizedBox(
              width: 2 * SizeConfig.widthMultiplier,
            ),
            ElevatedButton.icon(
              onPressed: () async {
                await FlutterPhoneDirectCaller.callNumber(number);
              },
              label: const Text('Call now'),
              icon: const Icon(Icons.phone_android),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => LoginScreen(),
                  ),
                );
              },
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: Colors.green)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          fontSize: 1.5 * SizeConfig.textMultiplier,
                          color: Colors.green,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.5),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: 1000 * SizeConfig.widthMultiplier,
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('asset/map.png'), fit: BoxFit.fill),
              ),
            )
          ],
        ),
      ),
    );
  }
}
