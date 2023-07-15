
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';

class AproposETcontact extends StatelessWidget {
  const AproposETcontact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: HexColor("#2C3333"),
      body: Column(
        children: [
          SizedBox(height: 50,),
          Center(child: Image(image: AssetImage("assets/logokofi.png"))),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: Column(
                children: [
                  Center(child: Text("BP: 1367 – Nongo, Ratoma, Conakry",
                    style: GoogleFonts.lato(
                      color: Colors.black,
                      fontSize: 20,
                    ),)),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Icon(Iconsax.message, color: Colors.black,size: 40),
                      ),

                      SizedBox(width: 5,),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text("contact@ukaguinee.com",
                            style: GoogleFonts.lato(
                              fontSize: 20,
                              color: Colors.black,
                            )),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Icon(Iconsax.call, color: Colors.black,size: 40),
                      ),

                      SizedBox(width: 5,),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text("(+224) 666 72 44 06",
                            style: GoogleFonts.lato(
                              fontSize: 20,
                              color: Colors.black,
                            )),
                      ),
                    ],
                  ),

                ],
              ),
              height: 150,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.3),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Text("A Propos",
              style: GoogleFonts.lato(
                color: Colors.black,
                fontSize: 30,
              ) ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: Text(" ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",

              style: GoogleFonts.lato(
                fontSize: 20,
                color: Colors.black,
              )),
              height: 300,

            ),
          )
        ],
      ),
    );
  }
}
