
import 'package:flutter/material.dart';

class UploadHouses extends StatefulWidget {
  const UploadHouses({Key? key}) : super(key: key);

  @override
  State<UploadHouses> createState() => _UploadHousesState();
}

class _UploadHousesState extends State<UploadHouses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: ListView(
      children: [
        SizedBox(height: 100,),
        Card(

           child: Column(
             children:  [
               Text("data"),
               Text("data")
             ],
           ),
        )
      ],
    ),
    );
  }
}
