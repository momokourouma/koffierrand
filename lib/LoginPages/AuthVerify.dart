
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:monprojetfinal/ClientNavbar/MyNav.dart';
import 'package:monprojetfinal/LoginPages/LoginPage.dart';

class AuthVerify extends StatefulWidget {
  const AuthVerify({Key? key}) : super(key: key);

  @override
  State<AuthVerify> createState() => _AuthVerifyState();
}

class _AuthVerifyState extends State<AuthVerify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot){
          if(snapshot.hasData){
            return MyNav();
          } else{
            return Login();
          }
        },
      ) ,
    );
  }
}
