// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mobi_garage/SizeConfig.dart';

AndroidNotificationChannel channel = const AndroidNotificationChannel(
  'high_importance_channel', // id
  'High Importance Notifications', // title
  description:
      'This channel is used for important notifications', // description
  importance: Importance.high,
  playSound: true,
);

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

List<String> recipents = ["+256756322224"];

class CheckOut extends StatefulWidget {
  const CheckOut({Key? key}) : super(key: key);

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  final number = '+256756322224';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: const Text('MOBIGARAGE\n Cart'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          SizedBox(
            width: 2 * SizeConfig.widthMultiplier,
          ),
          const Text(
            'Call now to complete order details',
            style: TextStyle(
              color: Color.fromARGB(255, 9, 111, 194),
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
          ElevatedButton.icon(
            onPressed: () async {
              // setState(() {
              // const uuid = Uuid();

              // id = uuid.v1();
              //  }),
              showNotification1();
              await FlutterPhoneDirectCaller.callNumber(number);
            },
            label: const Text('Call now'),
            icon: const Icon(Icons.phone_android),
          ),
          const Text(
            'Send sms now to complete order details',
            style: TextStyle(
              color: Color.fromARGB(255, 9, 111, 194),
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                color: Theme.of(context).accentColor,
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text("Send",
                    style: Theme.of(context).accentTextTheme.button),
                onPressed: () {
                  showNotification1();
                  _sendSMS(" Add your location for delivery", recipents);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void showNotification1() {
  flutterLocalNotificationsPlugin.show(
      0,
      "Happy to see you next time",
      "thanks for buying from us",
      NotificationDetails(
          android: AndroidNotificationDetails(channel.id, channel.name,
              //description: Description,
              importance: Importance.high,
              color: Colors.blue,
              playSound: true,
              icon: '@mipmap/ic_launcher')));
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
