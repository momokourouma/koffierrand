
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lottie/lottie.dart';

import '../LoginPages/LoginPage.dart';
import '../ClientNavbar/MyNav.dart';

class Pickup extends StatefulWidget {
  const Pickup({Key? key}) : super(key: key);

  @override
  State<Pickup> createState() => _PickupState();
}

class _PickupState extends State<Pickup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#ECF9FF"),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [

              SizedBox(height: 50,),
              Padding(padding: EdgeInsets.only(top: 10),
                child: Container(
                  height: 200,
                  

                  decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(10),

                    image: const DecorationImage(image: AssetImage("assets/pickup.jpg"),
                     fit: BoxFit.cover,



                    ),
                  ) ,
                ),
              ),



              SizedBox(height: 10,),

              Text("Acceuil at the airport",
                style: GoogleFonts.lato(
                  fontSize: 40,
                  color: Colors.black,


                ),),

              SizedBox(height: 20,),
              Padding(
                padding: EdgeInsets.all(20),
                child: TextFormField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:  BorderSide(
                          color: Colors.grey.shade500,
                          width: 2,
                        ),

                      ),
                      floatingLabelStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black,width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: const Icon(FontAwesomeIcons.planeDeparture,color: Colors.black, size: 17,),
                      labelText: "Pays de depart",
                      hintText: "Pays de depart",
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                      labelStyle: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 14,
                      )

                  ),

                ),
              ),



              Padding(
                padding: EdgeInsets.all(20),
                child: TextFormField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:  BorderSide(
                          color: Colors.grey.shade500,
                          width: 2,
                        ),

                      ),
                      floatingLabelStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black,width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: const Icon(FontAwesomeIcons.plane,color: Colors.black, size: 17,),
                      labelText: "vol",
                      hintText: "vol",
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                      labelStyle: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 14,
                      )

                  ),

                ),
              ),

             

              Padding(
                padding: EdgeInsets.all(20),
                child: TextFormField(

                  cursorColor: Colors.black,
                  decoration: InputDecoration(

                    hintText: "Date arrive",
                    hintStyle: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                    enabledBorder: OutlineInputBorder(

                      borderRadius: BorderRadius.circular(10),
                      borderSide:  BorderSide(
                        color: Colors.grey.shade500,
                        width: 2,
                      ),

                    ),
                    floatingLabelStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,

                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black,width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: const Icon(FontAwesomeIcons.calendarDays,color: Colors.black, size: 17,),
                    labelText: "Date arrive",
                    labelStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 14,
                    ),


                  ),

                ),

              ),

              Padding(
                padding: EdgeInsets.all(20),
                child: TextFormField(

                  cursorColor: Colors.black,
                  decoration: InputDecoration(

                    hintText: "Heure d'arrive",
                    hintStyle: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                    enabledBorder: OutlineInputBorder(

                      borderRadius: BorderRadius.circular(10),
                      borderSide:  BorderSide(
                        color: Colors.grey.shade500,
                        width: 2,
                      ),

                    ),
                    floatingLabelStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,

                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black,width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: const Icon(FontAwesomeIcons.clock,color: Colors.black, size: 19,),
                    labelText: "Heure d'arrive",
                    labelStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 14,
                    ),


                  ),

                ),

              ),


              const SizedBox(height: 20,),

              MaterialButton(
                onPressed: (){

                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MyNav()));
                },
                height: 45,
                color: Colors.black,
                elevation: 12,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),

                padding: const EdgeInsets.symmetric(horizontal: 50,vertical:10 ),
                child: Text("Reservation",
                    style: GoogleFonts.lato(
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                        color: Colors.white
                    )),

              ),

              const SizedBox(height: 20,),







            ],
          ),
        ),
      ),
    );;
  }
}
