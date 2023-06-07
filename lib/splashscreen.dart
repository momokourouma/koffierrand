import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:monprojetfinal/LoginPages/AuthVerify.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    myscren();
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("KOFFIBOOK",
          style: GoogleFonts.lato(
            fontWeight: FontWeight.w300,
            color: Colors.blue,
            fontSize: 30,
          ),),
          Center(
            child: Image(image: AssetImage("assets/logokofi.png"),height: 40),

          ),

          SizedBox(height: 30,),



        ],
      ),
    );
  }

  Future myscren() async {
    await Future.delayed(Duration(seconds: 10 ));
    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => AuthVerify()));
    await Future.delayed(Duration(seconds: 10 ));
  }
}
