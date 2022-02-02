import 'package:flutter/material.dart';

class Prices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('MOBIGARAGE'),
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
                flex: 2,
                child: Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.fromLTRB(40, 40, 40, 40),
                  //color: Colors.green[100],
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Text('Critical Case\n'),
                      Row(
                        children: [
                          Icon(
                            Icons.call_sharp,
                            size: 28.0,
                            color: Colors.white,
                          ),
                          Text('Contact us now'),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.details,
                            size: 28.0,
                            color: Colors.white,
                          ),
                          Text('Give detailed info'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: Expanded(
                flex: 3,
                child: Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.fromLTRB(40, 40, 40, 40),
                  color: Colors.green[100],
                  child: Column(
                    children: [
                      Text('One Time Service\n'),
                      Row(
                        children: [
                          Icon(
                            Icons.details,
                            size: 28.0,
                            color: Colors.white,
                          ),
                          Text('Give detailed info'),
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
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.fromLTRB(40, 40, 40, 40),
                  color: Colors.green[100],
                  child: Column(
                    children: [
                      Text('Book periodical services\n'),
                      Row(
                        children: [
                          Icon(
                            Icons.details,
                            size: 28.0,
                            color: Colors.white,
                          ),
                          Text('Give detailed info'),
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
