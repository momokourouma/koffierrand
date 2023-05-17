import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottie/lottie.dart';
import 'package:monprojetfinal/Service/DatabaseService.dart';
import 'package:monprojetfinal/TrouveMoiUnAppartment/HouseDetails.dart';

class FindMe extends StatefulWidget {
  const FindMe({Key? key}) : super(key: key);

  @override
  State<FindMe> createState() => _FindMeState();
}

class _FindMeState extends State<FindMe> {
  final List post = [
   "assets/houses/int1.jpg","assets/houses/int2.jpg","assets/houses/int3.jpg",
  ];
  List contact = [];
  List url = [];
  
  DataBaseService service = DataBaseService();

  
  
  
  
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#2C3333"),
      body: Column(
        children: [
            Expanded(
                child: ListView.builder(
                  itemCount: post.length,
                    itemBuilder: (context,index){
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Container(
                          height: 400,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("${post[index]}"), fit: BoxFit.fill)
                          ),
                        child: Column(
                          children: [
                            ElevatedButton(
                                onPressed: (){

                                },
                                child: Text("data")),
                          ],
                        ),
                        ),
                      );
                    }


                )
            ),
        ],
      ),
    );
  }
}
