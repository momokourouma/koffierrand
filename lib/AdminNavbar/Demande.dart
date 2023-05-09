
import 'package:flutter/material.dart';
class Demande extends StatefulWidget {
  const Demande({Key? key}) : super(key: key);

  @override
  State<Demande> createState() => _DemandeState();
}

class _DemandeState extends State<Demande> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text("Demande")),
        backgroundColor: Colors.black,
      ),

    );
  }
}
