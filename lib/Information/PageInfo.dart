
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:monprojetfinal/Information/Admission.dart';
import 'package:monprojetfinal/Information/ContactApropos.dart';
import 'package:monprojetfinal/Information/ProgrammeAcademique.dart';

import 'Infocontact.dart';

class PageInformation extends StatefulWidget {
  const PageInformation({Key? key}) : super(key: key);

  @override
  State<PageInformation> createState() => _PageInformationState();
}

class _PageInformationState extends State<PageInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: HexColor("#2C3333"),
      body: ListView(
        children: [
          SizedBox(height: 50,),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black.withOpacity(0.6),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 20),
                          child: Image.asset("assets/info/academy.png",height: 70,color: Colors.black,),
                        ),


                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ProgrammeAcademique()));
                          },
                          child: Container(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                    child: Text("Programmes academique",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.lato(

                                      color: Colors.white,
                                      fontSize: 35,
                                    ),),
                                  ),
                                ),


                              ],
                            ),
                            height: 120,
                            width: 300,
                            decoration: BoxDecoration(
                              //color: Colors.black,
                              borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                        ),
                      )
                    ],
                  ),

                ],
              ),
            ),
          ),

          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Admission()));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black.withOpacity(0.6),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 20),
                          child: Image.asset("assets/info/admission.png",height: 70,color: Colors.black,),
                        ),


                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 40),
                                  child: Center(
                                    child: Text("Admission",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.lato(

                                        color: Colors.white,
                                        fontSize: 35,
                                      ),),
                                  ),
                                ),


                              ],
                            ),
                            height: 120,
                            width: 300,
                            decoration: BoxDecoration(
                              //color: Colors.black,
                                borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                        )
                      ],
                    ),

                  ],
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black.withOpacity(0.6),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10,left: 20),
                        child: Image.asset("assets/info/school.png",height: 70,color: Colors.black,),
                      ),


                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Contact()));
                          },
                          child: Container(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 35),
                                  child: Center(
                                    child: Text("Campus",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.lato(

                                        color: Colors.white,
                                        fontSize: 35,
                                      ),),
                                  ),
                                ),


                              ],
                            ),
                            height: 120,
                            width: 300,
                            decoration: BoxDecoration(
                              //color: Colors.black,
                                borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                        ),
                      )
                    ],
                  ),

                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AproposETcontact()));
              },
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black.withOpacity(0.6),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 20),
                          child: Image.asset("assets/info/contact.png",height: 70,color: Colors.black,),
                        ),


                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 35),
                                  child: Center(
                                    child: Text("Contact/Apropos",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.lato(

                                        color: Colors.white,
                                        fontSize: 35,
                                      ),),
                                  ),
                                ),


                              ],
                            ),
                            height: 120,
                            width: 300,
                            decoration: BoxDecoration(
                              //color: Colors.black,
                                borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                        )
                      ],
                    ),

                  ],
                ),
              ),
            ),
          ),





        ],
      ),
    );
  }
}
