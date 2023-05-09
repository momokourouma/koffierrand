import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:monprojetfinal/AdminNavbar/Home/Details.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor("#2C3333"),
        appBar: AppBar(
      backgroundColor: Colors.black,
      title: Center(child: Text(" Les demandes en cours de traitment",
      style: GoogleFonts.lato(
        color: Colors.blue,
        fontSize: 20,
      ),)),
    ),

    body: ListView(
      children: [
        SizedBox(height: 50,),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 200,
            
            child: Card(
              color: Colors.black.withOpacity(0.3),
              elevation: 30,
              shadowColor: Colors.white.withOpacity(0.1),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 5),
                        child: CircleAvatar(
                          child: Text("MK",
                          style: GoogleFonts.lato(
                            fontSize: 30,
                          ),),
                          radius: 40,
                          backgroundColor: Colors.black,
                        ),
                      ),

                      SizedBox(width: 6,),

                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                          height: 100,
                          //color: Colors.red,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Nom: Mohamed",style: GoogleFonts.lato(
                                fontSize: 20,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold
                              ),),
                              Text("Prenoms: Kourouma",style: GoogleFonts.lato(
                                fontSize: 20,
                                color: Colors.blue,
                                  fontWeight: FontWeight.bold
                              ),),
                              Text("Department: Medicine",style: GoogleFonts.lato(
                                fontSize: 19,
                                color: Colors.blue,
                                  fontWeight: FontWeight.bold
                              ),),
                              Text("Service Supplementaire: Acceuil,Logement",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lato(
                                fontSize: 15,
                                  color: Colors.blue,
                                    fontWeight: FontWeight.bold
                              ),),
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                  MaterialButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Details()));
                  },
                    color: Colors.blue,
                    elevation: 10,
                    child: Text("Details",style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 15,
                    )),
                  )

                  



                ],
              ),
            ),
          ),
        )
      ],

    ),
    );
  }
}
