import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class HowTo extends StatefulWidget {
  const HowTo({super.key});

  @override
  State<HowTo> createState() => _HowToState();
}

class _HowToState extends State<HowTo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#2C3333"),
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Text("INSCRIPION ET DEPOT DE DOCUMENT",
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 20,
                    )),
              ),
              Padding(
                  padding:EdgeInsets.all(5),
              child: Text("1- Saisisez les informations neccessaire le nom, prenoms, date de naissance, filiere, nationalite",
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                fontSize: 20,
                color: Colors.white,
              ),)),
              Padding(
                  padding:EdgeInsets.all(5),

                  child: Text("2- Depot des document carte d'identiter,diplome,",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                        fontSize: 20,
                      color: Colors.white,
                    ),)),



              Padding(
                padding: EdgeInsets.all(10),
                child: Text("SERVICES DE PAIEMENT",
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 20,
                    )),
              ),
              Padding(
                  padding:EdgeInsets.all(5),
                  child: Text("1- Les services de paiment offre un moyen de faire des paiement des frais de logement et de maison  ",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                      fontSize: 20,
                      color: Colors.white,
                    ),)),









              Padding(
                padding: EdgeInsets.all(10),
                child: Text("ACCEUIL A L'AIPORT",
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 20,
                    )),
              ),
              Padding(
                  padding:EdgeInsets.all(5),
                  child: Text("1- Pour acceuil a l'aeroport il faut etre etudiant de kofi , tu dois faire une inscription",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                      fontSize: 20,
                      color: Colors.white,
                    ),)),





              Padding(
                padding: EdgeInsets.all(10),
                child: Text("INFORMATION",
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 20,
                    )),
              ),

              Padding(
                  padding:EdgeInsets.all(5),
                  child: Text("1- Toute les information neccessaire de l'ecole ",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                      fontSize: 20,
                      color: Colors.white,
                    ),)),

            ],
          )
        ],
      ),
    );
  }
}
