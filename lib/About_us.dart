// ignore_for_file: camel_case_types, file_names, use_key_in_widget_constructors

impor 'package:flutter/material.dart';

import 'SizeConfig.dart';

class About_us extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('MOBIGARAGE'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              color: Colors.green[100],
              padding: const EdgeInsets.fromLTRB(50, 120, 10, 10),
              width: 1000 * SizeConfig.widthMultiplier,
              //height: 1000,
              child: RichText(
                text: const TextSpan(
                    text: 'About us\n\n',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.w800,
                    ),
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <TextSpan>[
                      TextSpan(
                        text: 'High quality service for your car.\n',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text:
                            'Oriental Motors - the car experts. It is located at Wandegeya opposite public Services, approximately to 30 minutes drive from Kampala City.\nThe garage has over 12 mechanics each specialised in a given sevice proffesion. Our highly trained technicians are specialised in vehicle parts repair including tyres, exhausts, brakes,batteries,MOT testing,and vehicle safety inspections.\n',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      TextSpan(
                        text:
                            'The technicians from AutoSpar are fully equipeped to deal with the latest automotive technology in vehicles of all makes and keep them in perfect working order. And so your car is always in the best possible hands when you take you bring it to AutoSpar Garage for maintenance and repair.\n',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      TextSpan(
                        text: 'For everything your car needs!',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ]),
              ),
            ),
            
            Container(
              width: 1000 * SizeConfig.widthMultiplier,
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('asset/garagg.jpg'), fit: BoxFit.fill),
              ),
            )
          ],
        ),
      ),
    );
  }
}
