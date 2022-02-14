// ignore_for_file: no_logic_in_create_state, prefer_const_constructors, unused_label

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:mobi_garage/Home.dart';

class UserProfile extends StatefulWidget {
  final User user;
  const UserProfile({Key? key, required this.user}) : super(key: key);

  @override
  State<UserProfile> createState() => UserProfileState(user);
}

class UserProfileState extends State<UserProfile> {
  final User user;
  final ImagePicker _picker = ImagePicker();

  UserProfileState(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('MOBIGARAGE\nUser profile'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () async {
              final XFile? image =
                  await _picker.pickImage(source: ImageSource.gallery);
              //await ImagePicker.pickImage(source: ImageSource.gallery);
            },
            child: Center(
              child: CircleAvatar(
                radius: 100,
                child: Icon(Icons.photo_camera),
                // backgroundImage: NetworkImage(user.photoURL!),
              ),
            ),
          ),

          SizedBox(
            height: 10,
          ),
          // Text(
          //   user.displayName!,
          //   style: TextStyle(
          //     fontSize: 20,
          //     fontWeight: FontWeight.bold,
          //   ),
          //  ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              user.email!,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          const SignOutButton(),
          ElevatedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => Home(),
              ),
            ),
            child: Text('home'),
          ),
        ],
      ),
    );
  }

  myuser() {
    child:
    Text(
      user.email!,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
