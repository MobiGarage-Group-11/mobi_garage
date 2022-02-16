// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

impor 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:mobi_garage/user.dart';

//import 'firebase_options.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          //User is signed in
          return UserProfile(user: snapshot.data!);
        } else {
          //useris not signed in
          return SignInScreen(
            providerConfigs: [
              EmailProviderConfiguration(),
              GoogleProviderConfiguration(clientId: 'clientId')
            ],
            headerBuilder: (context, constriant, _) {
              return const CircleAvatar(
                radius: 200,
                backgroundImage: AssetImage('asset/ic_launcher.jpg'),
              );
            },
            subtitleBuilder: (context, action) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(action == AuthAction.signIn
                    ? "MobiGarage SignIn"
                    : "MobiGarage SignUp"),
              );
            },
            footerBuilder: (context, action) {
              return Text(
                'signing in means you have agreed to the trems and conditions that apply',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              );
            },
          );
        }
      });
}
