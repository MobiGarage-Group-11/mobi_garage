// ignore_for_file: prefer_const_constructors, prefer_const_declarations, camel_case_types, file_names

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:mobi_garage/Detials.dart';

class Services_offered extends StatelessWidget {
  const Services_offered({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final number = '+256756322224';
    return Scaffold(
        backgroundColor: Colors.green[100],
        appBar: AppBar(
          title: const Text('MOBIGARAGE'),
          backgroundColor: Colors.green,
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Container(
            width: 600,
            height: 1500,
            child: Column(
              children: [
                Text('Services', style: TextStyle(fontSize: 30)),
                Row(
                  children: [
                    Expanded(
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => Details(),
                                ),
                              );
                            },
                            child: Text('Order'))),
                    Expanded(
                      child: ElevatedButton(
                          onPressed: () async {
                            await FlutterPhoneDirectCaller.callNumber(number);
                          },
                          child: Text('Call now')),
                    ),
                  ],
                ),
                Spacer(),
                Center(
                    child: Image.asset('asset/suspension.jpg',
                        width: 40, height: 55)),
                ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 30,
                      sigmaY: 30,
                    ),
                    child: Center(
                        child: Text(
                      'Suspension\n',
                      style: TextStyle(fontSize: 20),
                    )),
                  ),
                ),
                Center(
                    child: Text(
                        'Maintaining a healthy suspension\n  system is vital for a safe\n   comfortable drive',
                        style: TextStyle(fontSize: 15),
                        textAlign: TextAlign.center)),
                Spacer(),
                Center(
                    child:
                        Image.asset('asset/engine.png', width: 40, height: 55)),
                Center(
                    child: Text(
                  'Engine\n',
                  style: TextStyle(fontSize: 20),
                )),
                Center(
                    child: Text(
                        '     Oil does not last forever\n  and if it is not replaced from\n time to time -along with the filter\n      that helps to keep it in good\n condition it will simply stop\n doing its job ',
                        style: TextStyle(fontSize: 15),
                        textAlign: TextAlign.center)),
                Spacer(),
                Center(
                    child: Image.asset('asset/batteryf.jpg',
                        width: 40, height: 55)),
                Center(
                    child: Text(
                  'Battery\n',
                  style: TextStyle(fontSize: 20),
                )),
                Center(
                    child: Text(
                        'We stock a wide range\n of batteries including stop-start\n technology',
                        style: TextStyle(fontSize: 15),
                        textAlign: TextAlign.center)),
                Spacer(),
                Center(
                    child:
                        Image.asset('asset/weld.png', width: 40, height: 55)),
                Center(
                    child: Text(
                  'Welding\n',
                  style: TextStyle(fontSize: 20),
                )),
                Center(
                    child: Text(
                        'Welding is one of the most effective\n ways to make automotive repairs,\n particularly on older\n vehichles',
                        style: TextStyle(fontSize: 15),
                        textAlign: TextAlign.center)),
                Spacer(),
                Center(
                    child:
                        Image.asset('asset/fuel.png', width: 40, height: 55)),
                Center(
                    child: Text(
                  'Fuel System\n',
                  style: TextStyle(fontSize: 20),
                )),
                Center(
                    child: Text(
                        'It is made up of the fuel tank, pump,\n filter and injectors or carburetor. Each component\n must perform flawlessly to achieve expected\n vehicle performance and\n reliability.',
                        style: TextStyle(fontSize: 15),
                        textAlign: TextAlign.center)),
                Spacer(),
                Center(
                    child:
                        Image.asset('asset/brake.png', width: 40, height: 55)),
                Center(
                    child: Text(
                  'Brakes',
                  style: TextStyle(fontSize: 20),
                )),
                Center(
                    child: Text(
                        'The braking system is ultimately your car\'s\n most important safety system. Just like tyres,\n brakes become much less effective\n as they wear. ',
                        style: TextStyle(fontSize: 15),
                        textAlign: TextAlign.center)),
                Spacer(),
              ],
            ),
          ),
        ));
  }
}
