// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

import 'SizeConfig.dart';

class CommonQns extends StatefulWidget {
  const CommonQns({Key? key}) : super(key: key);

  @override
  _CommonQnsState createState() => _CommonQnsState();
}

class _CommonQnsState extends State<CommonQns> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('MOBIGARAGE\n FAQ'),
      ),
      body: Container(
        child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  child: Text(
                    "Does servicing with you compromise my new car warranty?\n",
                    style: TextStyle(
                        fontSize: 2 * SizeConfig.textMultiplier,
                        color: Colors.blue,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 0.5),
                  ),
                ),
                Container(
                  child: const Text(
                      "No. Servicing at Oriental Motors garage won’t void your warranty as we adhere to your logbook and the manufacturer’s specifications"),
                ),
                const Divider(
                  thickness: 1,
                  color: Colors.black,
                ),
                Container(
                  child: Text(
                    "How often should I service my car?\n",
                    style: TextStyle(
                        fontSize: 2 * SizeConfig.textMultiplier,
                        color: Colors.blue,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 0.5),
                  ),
                ),
                Container(
                  child: const Text(
                      "Generally speaking, you should get your vehicle serviced every 6 months or 10,000km whichever comes first. However, if you notice your vehicle has a problem or is underperforming we recommend bringing it in as soon as possible."),
                ),
                const Divider(
                  thickness: 1,
                  color: Colors.black,
                ),
                Container(
                  child: Text(
                    "What is an eSafety check or pink slip?\n",
                    style: TextStyle(
                        fontSize: 2 * SizeConfig.textMultiplier,
                        color: Colors.blue,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 0.5),
                  ),
                ),
                Container(
                  child: const Text(
                      "A pink slip is used to verify that your vehicle is safe and road-ready. In some countries, it is required for vehicles to be inspected for registration renewal if they are more than 3 years old."),
                ),
                const Divider(
                  thickness: 1,
                  color: Colors.black,
                ),
                Container(
                  child: Text(
                    "Can you fix my car while I wait?\n",
                    style: TextStyle(
                        fontSize: 2 * SizeConfig.textMultiplier,
                        color: Colors.blue,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 0.5),
                  ),
                ),
                Container(
                  child: const Text(
                      "This will depend on the problem with your vehicle. On most occasions, we will need to have your car for at least a morning or afternoon. This allows time for thorough diagnosis and repairs to take place."),
                ),
                const Divider(
                  thickness: 1,
                  color: Colors.black,
                ),
                Container(
                  child: Text(
                    "What happens if you find more problems when servicing my car?\n",
                    style: TextStyle(
                        fontSize: 2 * SizeConfig.textMultiplier,
                        color: Colors.blue,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 0.5),
                  ),
                ),
                Container(
                  child: const Text(
                      "If a serious problem arises we will contact you before fixing anything. Any other minor fauuts will be outlined in your invoice."),
                ),
                const Divider(
                  thickness: 1,
                  color: Colors.black,
                ),
                Container(
                  child: Text(
                    "Why are my brakes making a grinding sound?\n",
                    style: TextStyle(
                        fontSize: 2 * SizeConfig.textMultiplier,
                        color: Colors.blue,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 0.5),
                  ),
                ),
                Container(
                  child: const Text(
                      "If your brakes are grinding when you touch the pedal it is likely caused by metal on metal contact between the rotor disc and the brake pads. This happens when brake pads are extremely worn. We recommend calling us if you hear this noise to avoid further damage."),
                ),
                const Divider(
                  thickness: 1,
                  color: Colors.black,
                ),
                Container(
                  child: Text(
                    "What are the benefits of fitting a suspension lift kit?\n",
                    style: TextStyle(
                        fontSize: 2 * SizeConfig.textMultiplier,
                        color: Colors.blue,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 0.5),
                  ),
                ),
                Container(
                  child: const Text(
                      "Raising your vehicle allows for larger tyres which will increase your ground clearance. It will also allow for increased suspension travel meaning that the wheels can move up and down farther, minimising bumps and creating a smoother ride for your vehicle on harsh terrain."),
                ),
                const Divider(
                  thickness: 1,
                  color: Colors.black,
                ),
              ],
            )),
      ),
    );
  }
}

