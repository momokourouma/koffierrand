
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class Admission extends StatefulWidget {
  const Admission({Key? key}) : super(key: key);

  @override
  State<Admission> createState() => _AdmissionState();
}

class _AdmissionState extends State<Admission> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#2C3333"),
      body:ListView(
        children: [
          Column(
            children: [
              const SizedBox(height: 20,),
              const Center(child: Image(image: AssetImage("assets/logokofi.png"),height: 150,)),
              Center(
                child:Text("Admission",
                  style: GoogleFonts.lato(
                    fontSize: 30,
                    color: Colors.blue,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10,right: 10),
                child: Text("BTS ( Les Document a fournir )",
                    style: GoogleFonts.lato(
                      color: Colors.blue,
                      fontSize: 25,
                    )),
              ),

              Container(
                height: 190,
                width: 350,
                decoration: BoxDecoration(
                  //color: Colors.red,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30,top: 10),
                      child: Text("- Extrait d’acte de naissance",
                          style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 20,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30,top: 10),
                      child: Text("-Une photo d’identité récente",

                          style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 20,
                          )),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 30,top: 5),
                      child: Text("- Photocopie d’une pièce d'identité en cours de validité",
                          style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 20,
                          )),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 30,top: 5),
                      child: Text("- Relevé de notes de la Terminale ou titre obtenu en équivalence",
                          style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 20,
                          )),
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Text("Licence/Ingéniérie/Sciences Médicales",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                      color: Colors.blue,
                      fontSize: 25,
                    )),
              ),
              Container(
                height: 250,
                width: 350,
                decoration: BoxDecoration(
                  //color: Colors.red,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30,top: 5),
                      child: Text("- Extrait d’acte de naissance",
                          style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 20,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30,top: 5),
                      child: Text("- Une photo d’identité",
                          style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 20,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30,top: 5),
                      child: Text("- Photocopie d’une pièce d'identité en cours de validité",
                          style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 20,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30,top: 5),
                      child: Text("- Relevé de notes du baccalauréat ou titre obtenu en équivalence",
                          style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 20,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30,top: 5),
                      child: Text("- Systèmes D’informations",
                          style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 20,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30,top: 5),
                      child: Text("- Diplôme du Baccalauréat ou titre obtenu en équivalence",
                          style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 20,
                          )),
                    ),


                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Center(
                  child: Text("Mastère",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lato(
                        color: Colors.blue,
                        fontSize: 25,
                      )),
                ),
              ),
              Container(
                height: 300,
                width: 350,
                decoration: BoxDecoration(
                  //color: Colors.red,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30,top: 5),
                      child: Text("- Extrait d’acte de naissance",
                          style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 20,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30,top: 5),
                      child: Text("- Une photo d’identité",
                          style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 20,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30,top: 5),
                      child: Text("- Photocopie d’une pièce d'identité en cours de validité",
                          style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 20,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30,top: 5),
                      child: Text("- Relevé de notes de la Licence (L1,L2,L3)",
                          style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 20,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30,top: 5),
                      child: Text("- Diplôme de Licence ou titre obtenu en équivalence",
                          style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 20,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30,top: 5),
                      child: Text("- Curriculum vitae (CV) actualisé",
                          style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 20,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30,top: 10),
                      child: Text("- Lettre de motivation",
                          style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 20,
                          )),
                    ),



                  ],
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
