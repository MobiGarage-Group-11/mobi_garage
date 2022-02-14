// ignore_for_file: must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

import 'SizeConfig.dart';

class Mec extends StatelessWidget {
  String name;
  String tel;
  String email;
  String prof;
  Image myimg;
  Mec(
    this.myimg,
    this.email,
    this.tel,
    this.name,
    this.prof,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('MOBIGARAGE'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(90.0),
                    color: Colors.green[100]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 6,
                    horizontal: 6,
                  ),
                  child: myimg,
                ),
                height: 40 * SizeConfig.imageSizeMultiplier,
                width: 40 * SizeConfig.imageSizeMultiplier,
              ),

              //child: myimg,
              const Divider(
                color: Colors.black,
                height: 60.0,
              ),
              const Text(
                'NAME',
                style: TextStyle(
                  color: Colors.blue,
                  letterSpacing: 2.0,
                ),
              ),
              const SizedBox(height: 10.0),
              Text(
                name,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 28.0,
                  letterSpacing: 2.0,
                ),
              ),
              const SizedBox(height: 30.0),
              const Text(
                'HOMETOWN',
                style: TextStyle(
                  color: Colors.blue,
                  letterSpacing: 2.0,
                ),
              ),
              const SizedBox(height: 10.0),
              const Text(
                'Kampala, Uganda',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 28.0,
                  letterSpacing: 2.0,
                ),
              ),
              const SizedBox(height: 30.0),
              const Text(
                'EXPERTIZE',
                style: TextStyle(
                  color: Colors.blue,
                  letterSpacing: 2.0,
                ),
              ),
              const SizedBox(height: 10.0),
              Text(
                prof,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 28.0,
                  letterSpacing: 2.0,
                ),
              ),
              const SizedBox(height: 30.0),
              Row(
                children: <Widget>[
                  const Icon(
                    Icons.email,
                    color: Colors.black,
                  ),
                  const SizedBox(width: 10.0),
                  Text(
                    email,
                    style: const TextStyle(
                      color: Colors.blue,
                      fontSize: 18.0,
                      letterSpacing: 1.0,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20.0),
              Row(
                children: <Widget>[
                  const Icon(
                    Icons.phone_android,
                    color: Colors.black,
                  ),
                  const SizedBox(width: 10.0),
                  Text(
                    tel,
                    style: const TextStyle(
                      color: Colors.blue,
                      fontSize: 18.0,
                      letterSpacing: 1.0,
                    ),
                  ),
                ],
              ),
              ElevatedButton.icon(
                onPressed: () async {
                  await FlutterPhoneDirectCaller.callNumber(tel);
                },
                label: const Text('Call now'),
                icon: const Icon(Icons.phone_android),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
