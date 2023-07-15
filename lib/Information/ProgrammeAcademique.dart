
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class ProgrammeAcademique extends StatefulWidget {
  const ProgrammeAcademique({Key? key}) : super(key: key);

  @override
  State<ProgrammeAcademique> createState() => _ProgrammeAcademiqueState();
}

class _ProgrammeAcademiqueState extends State<ProgrammeAcademique> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: HexColor("#2C3333"),
      body:SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 50,),
            const Center(child: Image(image: AssetImage("assets/logokofi.png"),height: 150,)),
            Center(
              child:Text("Programme Academique",
                style: GoogleFonts.lato(
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10,right: 240),
              child: Text("Licence",
              style: GoogleFonts.lato(
                color: Colors.black,
                fontSize: 25,
              )),
            ),

            Container(
              height: 400,
              width: 350,
              decoration: BoxDecoration(
                //color: Colors.red,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30,top: 10),
                    child: Text("- Ecole Polytechnique d'ingenieurs",
                    style: GoogleFonts.lato(
                      color: Colors.black,
                      fontSize: 20,
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,top: 10),
                    child: Text("-Faculté de Sciences Medicales et Paramedicales",

                        style: GoogleFonts.lato(
                          color: Colors.black,
                          fontSize: 20,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,top: 10),
                    child: Text("- Faculté des Lettres et Sciences humaines",
                        style: GoogleFonts.lato(
                          color: Colors.black,
                          fontSize: 20,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,top: 10),
                    child: Text("- Faculté des Sciences",
                        style: GoogleFonts.lato(
                          color: Colors.black,
                          fontSize: 20,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,top: 10),
                    child: Text("- Faculté des Sciences Economique et de Gestion",
                        style: GoogleFonts.lato(
                          color: Colors.black,
                          fontSize: 20,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,top: 10),
                    child: Text("- Faculté des Sciences Juridiques et Politiques",
                        style: GoogleFonts.lato(
                          color: Colors.black,
                          fontSize: 20,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,top: 10),
                    child: Text("- Institut Universitaires Professionnel",
                        style: GoogleFonts.lato(
                          color: Colors.black,
                          fontSize: 20,
                        )),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 240),
              child: Text("Master",
                  style: GoogleFonts.lato(
                    color: Colors.black,
                    fontSize: 25,
                  )),
            ),
            Container(
              height: 400,
              width: 350,
              decoration: BoxDecoration(
                //color: Colors.red,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30,top: 10),
                    child: Text("- Sciences Economiques et Gestion",
                        style: GoogleFonts.lato(
                          color: Colors.black,
                          fontSize: 20,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,top: 10),
                    child: Text("- Sciences Sociales",
                        style: GoogleFonts.lato(
                          color: Colors.black,
                          fontSize: 20,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,top: 10),
                    child: Text("- Droits et Sciences Politiques",
                        style: GoogleFonts.lato(
                          color: Colors.black,
                          fontSize: 20,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,top: 10),
                    child: Text("-Sante Public",
                        style: GoogleFonts.lato(
                          color: Colors.black,
                          fontSize: 20,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,top: 10),
                    child: Text("- Systèmes D’informations",
                        style: GoogleFonts.lato(
                          color: Colors.black,
                          fontSize: 20,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,top: 10),
                    child: Text("- Management",
                        style: GoogleFonts.lato(
                          color: Colors.black,
                          fontSize: 20,
                        )),
                  ),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
