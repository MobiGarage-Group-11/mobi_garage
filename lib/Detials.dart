// ignore_for_file: deprecated_member_use, must_be_immutable, prefer_const_literals_to_create_immutables, unnecessary_string_interpolations, unused_import, use_key_in_widget_constructors, file_names, avoid_print

import 'package:flutter/material.dart';
import 'package:mobi_garage/SizeConfig.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home1(),
    );
  }
}

List<String> recipents = ["+256756322224"];

class Home1 extends StatefulWidget {
  @override
  State<Home1> createState() => _Home1State();
  String message = "";
}

class _Home1State extends State<Home1> {
  TextEditingController message1 = TextEditingController();
  TextEditingController message2 = TextEditingController();
  TextEditingController message3 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('MOBIGARAGE\n My car problem details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  const BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              height: 60,
              child: TextField(
                controller: message1,
                keyboardType: TextInputType.text,
                style: const TextStyle(
                  color: Colors.black87,
                ),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14),
                  prefixIcon: Icon(
                    Icons.person,
                    color: Color(0xff51c18e),
                  ),
                  hintText: 'Enter your name',
                  hintStyle: TextStyle(
                    color: Colors.black38,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  const BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              height: 60,
              child: TextField(
                controller: message2,
                keyboardType: TextInputType.text,
                style: const TextStyle(
                  color: Colors.black87,
                ),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14),
                  prefixIcon: Icon(
                    Icons.phone_android,
                    color: Color(0xff51c18e),
                  ),
                  hintText: 'Enter your phone number or email',
                  hintStyle: TextStyle(
                    color: Colors.black38,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  const BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              height: 200,
              child: TextField(
                controller: message3,
                keyboardType: TextInputType.text,
                style: const TextStyle(
                  inherit: true,
                  color: Colors.black87,
                ),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14),
                  prefixIcon: Icon(
                    Icons.details_rounded,
                    color: Color(0xff51c18e),
                  ),
                  hintText: 'Enter the detials here',
                  hintStyle: TextStyle(
                    color: Colors.black38,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  color: Theme.of(context).accentColor,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Text("Send",
                      style: Theme.of(context).accentTextTheme.button),
                  onPressed: () {
                    _sendSMS("", recipents);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void _sendSMS(String message, List<String> recipents) async {
  String _result = await sendSMS(message: message, recipients: recipents)
      .catchError((onError) {
    Fluttertoast.showToast(
        msg: "$onError",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        fontSize: 16.0);
    print(onError);
  });
  Fluttertoast.showToast(
      msg: "Order sent, add text msg for quicker respose",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      fontSize: 16.0);
  print(_result);
}
