import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:mobi_garage/check_out.dart';
import 'cart_products.dart';
import 'cart_total.dart';

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

class CartScreens extends StatelessWidget {
  const CartScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: const Text('MOBIGARAGE\n Cart'),
        backgroundColor: Colors.green,
        actions: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton.icon(
                  label: const Text('Check out'),
                  icon: const Icon(Icons.web),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const CheckOut(),
                      ),
                    );
                    showNotification();
                  }),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            CartProducts(),
            CartTotal(),
          ],
        ),
      ),
    );
  }
}

void showNotification() {
  flutterLocalNotificationsPlugin.show(
      0,
      "Confirm with us",
      "thanks for buying from us ",
      NotificationDetails(
          android: AndroidNotificationDetails(channel.id, channel.name,
              //description: Description,
              importance: Importance.high,
              color: Colors.blue,
              playSound: true,
              icon: '@mipmap/ic_launcher')));
  
}
