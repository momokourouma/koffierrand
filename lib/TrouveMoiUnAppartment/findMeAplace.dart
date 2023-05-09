import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottie/lottie.dart';
import 'package:monprojetfinal/TrouveMoiUnAppartment/HouseDetails.dart';

class FindMe extends StatefulWidget {
  const FindMe({Key? key}) : super(key: key);

  @override
  State<FindMe> createState() => _FindMeState();
}

class _FindMeState extends State<FindMe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#2C3333"),
      body: ListView(
        children: [

          const SizedBox(height: 30,),
       Lottie.asset("assets/houses/realestate.json",
       height: 200),

        Center(
          child: Text("Nos serivces d'hebergement",
          style: GoogleFonts.lato(
            fontSize: 30,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          )),
        ),
          const SizedBox(height: 20,),


          Padding(
            padding: const EdgeInsets.all(20.0),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HouseDetails()));
              },
              child: Container(
                height: 210,
                width: 100,
                decoration: BoxDecoration(
                  image: const DecorationImage(image: AssetImage("assets/image/rent4.jpg"),
                  fit: BoxFit.cover,
                 ),

                  borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 80,
                      width: 400,
                      color: Colors.black.withOpacity(0.3),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 30,right: 100),
                            child: Column(
                              children: [
                                Center(
                                  child: Text("Villa Koffi",
                                  style: GoogleFonts.lato(
                                    color: Colors.white,
                                    fontSize: 20
                                  ),),
                                ),
                                SizedBox(height: 2,),
                                Row(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(left: 20),
                                      child: Icon(FontAwesomeIcons.locationDot,color: Colors.white,),
                                    ),
                                    SizedBox(width: 10,),
                                    Text("Nongo 10min de kofi",style: GoogleFonts.lato(
                                      color: Colors.white,
                                      fontSize: 20
                                    ),)
                                  ],
                                )
                              ],
                            ),
                          ),



                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),

          // second

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 210,
              width: 100,
              decoration: BoxDecoration(
                  image: const DecorationImage(image: AssetImage("assets/image/rent3.jpg"),
                    fit: BoxFit.cover,
                  ),

                  borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 80,
                    width: 400,
                    color: Colors.black.withOpacity(0.3),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 30,right: 100),
                          child: Column(
                            children: [
                              Center(
                                child: Text("Villa Koffi",
                                  style: GoogleFonts.lato(
                                      color: Colors.white,
                                      fontSize: 20
                                  ),),
                              ),
                              SizedBox(height: 2,),
                              Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Icon(FontAwesomeIcons.locationDot,color: Colors.white,),
                                  ),
                                  SizedBox(width: 10,),
                                  Text("Nongo 10min de kofi",style: GoogleFonts.lato(
                                      color: Colors.white,
                                      fontSize: 20
                                  ),)
                                ],
                              )
                            ],
                          ),
                        ),



                      ],
                    ),
                  )
                ],
              ),
            ),
          ),

          //third

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 210,
              width: 100,
              decoration: BoxDecoration(
                  image: const DecorationImage(image: AssetImage("assets/image/rent2.jpg"),
                    fit: BoxFit.cover,
                  ),

                  borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 80,
                    width: 400,
                    color: Colors.black.withOpacity(0.3),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 30,right: 100),
                          child: Column(
                            children: [
                              Center(
                                child: Text("Villa Koffi",
                                  style: GoogleFonts.lato(
                                      color: Colors.white,
                                      fontSize: 20
                                  ),),
                              ),
                              SizedBox(height: 2,),
                              Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Icon(FontAwesomeIcons.locationDot,color: Colors.white,),
                                  ),
                                  SizedBox(width: 10,),
                                  Text("Nongo 10min de kofi",style: GoogleFonts.lato(
                                      color: Colors.white,
                                      fontSize: 20
                                  ),)
                                ],
                              )
                            ],
                          ),
                        ),



                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          //fourth

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 210,
              width: 100,
              decoration: BoxDecoration(
                  image: const DecorationImage(image: AssetImage("assets/image/rent1.jpg"),
                    fit: BoxFit.cover,
                  ),

                  borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 80,
                    width: 400,
                    color: Colors.black.withOpacity(0.3),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 30,right: 100),
                          child: Column(
                            children: [
                              Center(
                                child: Text("Villa Koffi",
                                  style: GoogleFonts.lato(
                                      color: Colors.white,
                                      fontSize: 20
                                  ),),
                              ),
                              SizedBox(height: 2,),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Icon(FontAwesomeIcons.locationDot,color: Colors.white,),
                                  ),
                                  SizedBox(width: 10,),
                                  Text("Nongo 10min de kofi",style: GoogleFonts.lato(
                                      color: Colors.white,
                                      fontSize: 20
                                  ),)
                                ],
                              )
                            ],
                          ),
                        ),



                      ],
                    ),
                  )
                ],
              ),
            ),
          ),

          //fifth


          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 200,
              width: 100,
              decoration: BoxDecoration(
                image: const DecorationImage(image: AssetImage("assets/image/rent9.jpg"),
                fit: BoxFit.cover),

                  borderRadius: BorderRadius.circular(10)
              ),
            ),
          ),

        ],
      ),
    );
  }
}
