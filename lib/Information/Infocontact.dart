
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#2C3333"),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(height: 30,),



             Text("Batiment Principal",
             style: GoogleFonts.lato(
               color: Colors.blue,
               fontSize: 30
             )),
             SizedBox(height: 10,),
             Padding(
               padding: const EdgeInsets.all(20.0),
               child: Container(
                 height: 300,
                 decoration: BoxDecoration(
                   image: DecorationImage(image: AssetImage("assets/kofiassets/kofibuilding.jpg"),
                   fit: BoxFit.cover),

                   borderRadius: BorderRadius.circular(10),
                 ),
               ),
             ),
              Text("Faculte des science paramedicales",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                      color: Colors.blue,
                      fontSize: 30
                  )),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/kofiassets/departmentmedoc.jpg"),
                        fit: BoxFit.cover),

                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Text("La salle Malick Conde",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                      color: Colors.blue,
                      fontSize: 30
                  )),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/kofiassets/malickconde.jpg"),
                        fit: BoxFit.cover),

                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Text("Le terrain de basket",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                      color: Colors.blue,
                      fontSize: 30
                  )),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/kofiassets/terrainbasket.jpg"),
                        fit: BoxFit.cover),

                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

            ],
          ),
        ],
      )
    );
  }
}
