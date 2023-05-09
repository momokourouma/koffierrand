
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class Myclip extends StatefulWidget {
  const Myclip({Key? key}) : super(key: key);

  @override
  State<Myclip> createState() => _MyclipState();
}

class _MyclipState extends State<Myclip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/wallapaper.png",),
            fit: BoxFit.cover,
          ),
        ),child: Center(
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 12,
              sigmaY: 12,
            ),
            child: Container(
              child: ElevatedButton(onPressed: (){
                final snackbar = SnackBar(content:  Text("hello"),
                  backgroundColor: Colors.white,
                  action: SnackBarAction(label: "undo", onPressed: (){}),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackbar);
              },
                  child: Text("hello")),
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  width: 3,
                  color: Colors.white.withOpacity(0.3),
                )
              ),
            ),
          ),
        ),
      ),

      ) ,

    );



  }
}
