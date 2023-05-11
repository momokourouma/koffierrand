import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:monprojetfinal/AirportPickup/AiportPickup.dart';
import 'package:monprojetfinal/InscriptionDepots/DepotDoc.dart';
import 'package:monprojetfinal/LoginPages/LoginPage.dart';
import 'package:monprojetfinal/Information/PageInfo.dart';
import 'package:monprojetfinal/ServicesPayment/Payment.dart';
import 'package:monprojetfinal/TrouveMoiUnAppartment/findMeAplace.dart';

class MyNav extends StatefulWidget {
  const MyNav({Key? key}) : super(key: key);

  @override
  State<MyNav> createState() => _MyNavState();
}

class _MyNavState extends State<MyNav> {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        //backgroundColor: Colors.orange,
        backgroundColor: Colors.transparent,

        title: Center(
          child: Text("",
              style: GoogleFonts.lato(color: Colors.white, fontSize: 30)),
        ),
        actions: [
          /* Padding(
            padding: EdgeInsets.all(15),
            child: badges.Badge(
              badgeContent: Text("10"),
              child: Icon(FontAwesomeIcons.bell,
                  size: 30,
                color: Colors.white,
              ),
            ),
          ), */
          Padding(
            padding: EdgeInsets.all(15),
            child: IconButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Container(
                            height: 130,
                            child: Column(
                              children: [
                                CircleAvatar(
                                  child: Text(
                                    "MK",
                                    style: GoogleFonts.lato(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                  backgroundColor:
                                      Colors.white.withOpacity(0.3),
                                  radius: 45,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "${user.email}",
                                  style: GoogleFonts.lato(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          title: Center(
                            child: Text(
                              "Profile",
                              style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          backgroundColor: Colors.black.withOpacity(0.4),
                          actions: [
                            MaterialButton(
                              onPressed: () {
                                FirebaseAuth.instance.signOut();
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login()));
                              },
                              height: 40,
                              color: Colors.white,
                              shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                "Deconnexion",
                                style: GoogleFonts.lato(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                               MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              color: Colors.white,
                              height: 40,
                              child: Text(
                                "Annuler",
                                style: GoogleFonts.lato(
                                  fontSize: 18,
                                ),
                              ),
                            ), 
                          ],
                        );
                      });
                },
                icon: Icon(FontAwesomeIcons.user)),
          ),
        ],
      ),

      //Background color
      backgroundColor: HexColor("#454545"),

      //Body
      body: ListView(
        children: [
          const SizedBox(
            height: 50,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text("Bienvenue a KOFFIERRAND ",
                style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.w900,
                  fontSize: 25,
                  color: Colors.white,
                )),
          ),

          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Center(
              child: Text("${user.email}",
                  style: GoogleFonts.quicksand(
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                    color: Colors.white,
                  )),
            ),
          ),

          const SizedBox(
            height: 50,
          ),

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 35),
                child: ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaY: 16,
                      sigmaX: 16,
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DepotDoc()));
                      },
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            color: HexColor("#4F4557"),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                width: 1.5,
                                color: Colors.white.withOpacity(0.3))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Column(
                                children: const [
                                  Center(
                                    child: Image(
                                      image: AssetImage(
                                          "assets/mainpageassets/database.png"),
                                      height: 80,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              "INSCRIPTION ET DEPOTS DES DOCUMENT",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.lato(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 20),
                child: ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaY: 16,
                      sigmaX: 16,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Payment()));
                      },
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            color: HexColor("#009FBD"),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                width: 1.5,
                                color: Colors.white.withOpacity(0.3))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Column(
                                children: const [
                                  Center(
                                    child: Image(
                                      image: AssetImage(
                                          "assets/mainpageassets/payme.png"),
                                      height: 80,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              "SERVICE DE PAIEMENT",
                              style: GoogleFonts.lato(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(
            height: 10,
          ),

          // Second section

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 35),
                child: ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaY: 16,
                      sigmaX: 16,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        //
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => FindMe()));
                      },
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            color: HexColor("#FF8400"),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                width: 1.5,
                                color: Colors.white.withOpacity(0.3))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Column(
                                children: const [
                                  Center(
                                    child: Image(
                                      image: AssetImage(
                                          "assets/mainpageassets/house.png"),
                                      height: 80,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            //SERVICE DE PAIEMENT
                            Text(
                              "TROUVE MOI UN APPARTMENT",
                              textAlign: TextAlign.center,
                              style:
                                  GoogleFonts.lato(fontWeight: FontWeight.w900),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Pickup()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 5, left: 20),
                  child: ClipRRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaY: 16,
                        sigmaX: 16,
                      ),
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            color: HexColor("#27E1C1"),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                width: 1.5,
                                color: Colors.white.withOpacity(0.3))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Column(
                                children: const [
                                  Center(
                                    child: Image(
                                      image: AssetImage(
                                        "assets/mainpageassets/bus.png",
                                      ),
                                      height: 80,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              "ACCEUIL A L'AEROPORT",
                              textAlign: TextAlign.center,
                              style:
                                  GoogleFonts.lato(fontWeight: FontWeight.w900),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(
            height: 10,
          ),

          // third second

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 35),
                child: ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaY: 16,
                      sigmaX: 16,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PageInformation()));
                      },
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            color: HexColor("#A9907E"),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                width: 1.5,
                                color: Colors.white.withOpacity(0.3))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Column(
                                children: const [
                                  Center(
                                    child: Image(
                                      image: AssetImage(
                                          "assets/mainpageassets/info.png"),
                                      height: 80,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              "INFORMATION",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.lato(
                                fontWeight: FontWeight.w900,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(
                width: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 20),
                child: ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaY: 16,
                      sigmaX: 16,
                    ),
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: HexColor("#F6F1F1"),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              width: 1.5,
                              color: Colors.white.withOpacity(0.3))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2),
                            child: Column(
                              children: const [
                                Center(
                                  child: Image(
                                    image: AssetImage(
                                        "assets/mainpageassets/question.png"),
                                    height: 80,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            "COMMENT UTILISER APPLICATION",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.lato(
                              fontWeight: FontWeight.w900,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              //
            ],
          ),

          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
