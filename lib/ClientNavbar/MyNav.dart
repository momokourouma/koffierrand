import 'dart:ui';
import 'package:badges/badges.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:monprojetfinal/AirportPickup/AiportPickup.dart';
import 'package:monprojetfinal/InscriptionDepots/DepotDoc.dart';
import 'package:monprojetfinal/InscriptionDepots/PaymentRegister.dart';
import 'package:monprojetfinal/LoginPages/LoginPage.dart';
import 'package:monprojetfinal/Information/PageInfo.dart';
import 'package:monprojetfinal/Service/DatabaseService.dart';
import 'package:monprojetfinal/ServicesPayment/Payment.dart';
import 'package:monprojetfinal/TrouveMoiUnAppartment/FindMePlace.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

import '../CommentUtiliserApplication/HowTo.dart';
import '../ServicesPayment/Paymentbeta.dart';


class MyNav extends StatefulWidget {
  const MyNav({Key? key}) : super(key: key);

  @override
  State<MyNav> createState() => _MyNavState();
}

class _MyNavState extends State<MyNav> {


  @override
  initState(){
    super.initState();
    getStudentInfo(user!.uid);

  }
  DataBaseService service = DataBaseService();
  final user = FirebaseAuth.instance.currentUser;
  String matricule = "";
  bool notification = false;

  getStudentInfo(String id) async {
    try{
      DocumentReference reference = FirebaseFirestore.instance.collection('students').doc(user!.uid);
      reference.snapshots().listen((data){
        setState(() {
          matricule = data.get("Matricule");
        });
        if(matricule.isEmpty){
          setState(() {
            matricule = "Traiment de votre demande en cours..";
          });
        }

      });
    } on FirebaseException catch(e){
      print(e.code);
    }

  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
        //backgroundColor: Colors.orange,
        backgroundColor: Colors.transparent,

        title: Text("KOFFIERRAND",
            style: GoogleFonts.lato(color: Colors.black, fontSize: 30)),
        actions: [

          IconButton(
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
                                backgroundColor:
                                    Colors.white.withOpacity(0.3),
                                radius: 45,
                                child: Text(
                                  "MK",
                                  style: GoogleFonts.lato(
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "${user!.email}",
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
              icon: Icon(FontAwesomeIcons.user),color: Colors.black),
        ],
      ),

      //Background color
       backgroundColor: HexColor("#F8F6F4"),


      //Body
      body: ListView(
        children: [
          const SizedBox(
            height: 50,
          ),

          Padding(
            padding: const EdgeInsets.all(10),
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 30,
              shadowColor: Colors.black,
              color: Colors.black.withOpacity(0.9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(
                  
                  width: 4,
                  color: Colors.white
                )
              ),
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Center(
                    child: Text("MATRICULE",
                      style: GoogleFonts.lato(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ) ,

                    ),
                  ),
                  
                  Padding(padding: EdgeInsets.all(10),
                  child: Text("${matricule}",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 20,
                  )),
                  )
                ],
              ),


            )
          ),



          const SizedBox(
            height: 30,
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
                            MaterialPageRoute(builder: (context) => PaymentRegister()));
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
                            MaterialPageRoute(builder: (context) => FindMePlace()));
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
                    child: GestureDetector(
                      onTap:(){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>HowTo()));
                      },
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            color: HexColor("#F3F0D7"),
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
