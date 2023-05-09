
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestingStack extends StatefulWidget {
  const TestingStack({Key? key}) : super(key: key);

  @override
  State<TestingStack> createState() => _TestingStackState();
}

class _TestingStackState extends State<TestingStack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 10,),
          SafeArea(
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                SizedBox(height: 100,),
                Container(
                  height: 200,
                  width: 410,
                  color: Colors.red
                ),

                Container(
                    height: 400,
                    width: 200,
                    color: Colors.blue,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
