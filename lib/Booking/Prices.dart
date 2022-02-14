// ignore_for_file: use_key_in_widget_constructors, file_names

import 'package:flutter/material.dart';
import 'package:mobi_garage/Contact.dart';
import 'package:mobi_garage/Detials.dart';
import 'package:mobi_garage/SizeConfig.dart';

class Prices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('MOBIGARAGE'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Expanded(
                flex: 1,
                child: Container(
                  height: 30 * SizeConfig.heightMultiplier,
                  width: 70 * SizeConfig.widthMultiplier,
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.fromLTRB(40, 40, 40, 40),
                  color: Colors.green[100],
                  child: Column(
                    children: [
                      const Text('Critical Case\n'),
                      Row(
                        children: [
                          const Icon(
                            Icons.call_sharp,
                            size: 28.0,
                            color: Colors.black,
                          ),
                          GestureDetector(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => Contact(),
                              ),
                            ),
                            child: Text(
                              'Contact us now',
                              style: TextStyle(
                                  fontSize: 2 * SizeConfig.textMultiplier,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w900,
                                  letterSpacing: 0.5),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: Expanded(
                flex: 1,
                child: Container(
                  height: 30 * SizeConfig.heightMultiplier,
                  width: 70 * SizeConfig.widthMultiplier,
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.fromLTRB(40, 40, 40, 40),
                  color: Colors.green[100],
                  child: Column(
                    children: [
                      const Text('One Time Service\n'),
                      Row(
                        children: [
                          const Icon(
                            Icons.details,
                            size: 28.0,
                            color: Colors.black,
                          ),
                          GestureDetector(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => Details(),
                              ),
                            ),
                            child: Text(
                              'Give detailed info',
                              style: TextStyle(
                                  fontSize: 2 * SizeConfig.textMultiplier,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w900,
                                  letterSpacing: 0.5),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: Expanded(
                flex: 1,
                child: Container(
                  height: 30 * SizeConfig.heightMultiplier,
                  width: 70 * SizeConfig.widthMultiplier,
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.fromLTRB(40, 40, 40, 40),
                  color: Colors.green[100],
                  child: Column(
                    children: [
                      const Text('Book periodical services\n'),
                      Row(
                        children: [
                          const Icon(
                            Icons.details,
                            size: 28.0,
                            color: Colors.black,
                          ),
                          GestureDetector(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => Details(),
                              ),
                            ),
                            child: Text(
                              'Give detailed info',
                              style: TextStyle(
                                  fontSize: 2 * SizeConfig.textMultiplier,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w900,
                                  letterSpacing: 0.5),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
