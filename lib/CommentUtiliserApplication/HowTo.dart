
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HowTo extends StatefulWidget {
  const HowTo({super.key});

  @override
  State<HowTo> createState() => _HowToState();
}

class _HowToState extends State<HowTo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListView(
            children: [
              Text("hello"),
            ],
          )
        ],

      ),
    );
  }
}
