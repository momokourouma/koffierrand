import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#2C3333"),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: 20,
              ),

              Center(
                child: CircleAvatar(
                  child: Text("MK",
                      style: GoogleFonts.lato(
                          fontSize: 30, fontWeight: FontWeight.bold)),
                  radius: 50,
                  backgroundColor: Colors.black,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Text(
                    "Information",
                    style: GoogleFonts.lato(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: Colors.white
                    ),
                  )
                ],
              ),
              SizedBox(height: 10,),
              Card(
                color: Colors.transparent,
                elevation: 20,
                shadowColor: Colors.blue.withOpacity(0.6),
                child: Container(
                  height: 180,
                  width: 390,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black.withOpacity(0.5)
                  ),

                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: Row(
                          children: [
                            Text("Nom:",
                                style: GoogleFonts.lato(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20)),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Moahmed",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lato(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20)),
                          ],
                        ),
                      ),

                      // second

                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 5),
                        child: Row(
                          children: [
                            Text("Prenoms:",
                                style: GoogleFonts.lato(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20)),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Moahmed",
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 20),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),



                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 5),
                        child: Row(
                          children: [
                            Text("Date de Nais:",
                                style: GoogleFonts.lato(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white,
                                )),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Moahmed",
                              style: GoogleFonts.lato(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),



                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 5),
                        child: Row(
                          children: [
                            Text("Department:",
                                style: GoogleFonts.lato(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white,
                                )),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Moahmed",
                              style: GoogleFonts.lato(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Text(
                    " Paiement",
                    style: GoogleFonts.lato(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              SizedBox(height: 10,),




              // Service de payment
              Card(
                color: Colors.transparent,
                elevation: 20,
                shadowColor: Colors.blue,
                child: Container(
                  height: 150,
                  width: 390,
                  decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(20),
                    color: Colors.black.withOpacity(0.5),
                  ),

                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: Row(
                          children: [
                            Text("Service de Paiement:",
                                style: GoogleFonts.lato(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20)),
                            SizedBox(
                              width: 10,
                            ),
                            Text("PayCard",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lato(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20)),
                          ],
                        ),
                      ),

                      // second

                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 5),
                        child: Row(
                          children: [
                            Text("Methode de Paiement :",
                                style: GoogleFonts.lato(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20)),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Tranche",
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 20),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),








                    ],
                  ),
                ),
              ),
              SizedBox(height: 15,),

              Text("Acceuil a Aeroport",style: GoogleFonts.lato(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),),

              Card(
                color: Colors.transparent,
                elevation: 20,
                shadowColor: Colors.blue,
                child: Container(
                  height: 150,
                  width: 390,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    color: Colors.black.withOpacity(0.5),
                  ),

                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: Row(
                          children: [
                            Text("Date D'arrive:",
                                style: GoogleFonts.lato(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20)),
                            SizedBox(
                              width: 10,
                            ),
                            Text("PayCard",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lato(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20)),
                          ],
                        ),
                      ),

                      // second

                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 5),
                        child: Row(
                          children: [
                            Text("Vol :",
                                style: GoogleFonts.lato(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20)),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Tranche",
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 20),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 5),
                        child: Row(
                          children: [
                            Text("Heure D'arriver:",
                                style: GoogleFonts.lato(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20)),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Tranche",
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 20),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      
                    








                    ],
                  ),
                ),
              ),
                      
              Text("Logement",style: GoogleFonts.lato(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),),

              SizedBox(height: 10,),

              Card(
                elevation: 20,
                shadowColor: Colors.blue,
                color: Colors.transparent,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text("Addresse: Coza",style: GoogleFonts.lato(
                                color: Colors.white,
                                fontSize: 20
                              ),),
                            ),
                            //
                            SizedBox(height: 5,),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text("Distance : 10 min de kofi",style: GoogleFonts.lato(
                                color: Colors.white,
                                fontSize: 20
                              ),),
                            ),
                          ],
                        ),
                        height: 70,
                        width: 400,
                        color: Colors.black.withOpacity(0.8),
                      )
                    ],
                  ),
                  height: 200,
                  width: 390,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: AssetImage("assets/houses/int1.jpg"),
                    fit: BoxFit.cover)
                  ),

                ),
              ),



              SizedBox(height: 100,),

            ],
          ),
        ],
      ),
    );
  }
}
