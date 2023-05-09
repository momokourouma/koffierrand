import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class HouseDetails extends StatefulWidget {
  const HouseDetails({Key? key}) : super(key: key);

  @override
  State<HouseDetails> createState() => _HouseDetailsState();
}

class _HouseDetailsState extends State<HouseDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 210,left: 10),
                  child: Icon(FontAwesomeIcons.circleChevronLeft,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ],
            ),
            height: 400,
            width: 500,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/image/rent1.jpg"),
              fit: BoxFit.cover,
            )),
          ),
          Container(
            height: 470,
            decoration: BoxDecoration(
              color: HexColor("#2C3333"),
            ),
            child: Column(
              children: [
                const SizedBox(height: 10,),



                SizedBox(height: 10,),
                
                Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Text("Description",
                              style: GoogleFonts.lato(
                                color: Colors.blue,
                                fontSize: 30,
                              ),),
                            ],
                          ),
                        ),
                          SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Container(
                                height: 100,
                                width: 350,

                                child: Text(
                                  "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",

                                  style: GoogleFonts.lato(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Text("Photos",
                              style: GoogleFonts.lato(
                                color: Colors.blue,
                                fontSize: 30,
                              ),),
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          height: 125,
                          width: 360,

                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [

                              Container(
                                width: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(image: AssetImage("assets/houses/int1.jpg"),
                                        fit: BoxFit.cover)
                                ),
                              ),

                              SizedBox(width: 15,),

                              Container(
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(image: AssetImage("assets/houses/int2.jpg"),
                                  fit: BoxFit.cover)
                                ),
                              ),
                              SizedBox(width: 15,),

                              Container(
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(image: AssetImage("assets/houses/int3.jpg"),
                                        fit: BoxFit.cover)
                                ),
                              ),
                              SizedBox(width: 15,),
                              
                              Container(
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(image: AssetImage("assets/houses/int4.jpg"),
                                        fit: BoxFit.cover)
                                ),
                              ),
                              




                            ],
                          ),
                        ),

                       SizedBox(height: 60,),

                        MaterialButton(onPressed: (){},
                          color: Colors.blue,
                          elevation: 15,
                          shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),

                          padding: EdgeInsets.symmetric(horizontal: 50),
                        child: Text("Reservez",
                            style: GoogleFonts.lato(
                              color: Colors.white,
                              fontSize: 20,
                            ) ),)
                      ],
                    )
                ),
                



                
              ],
            ),

          )
        ],
      ),
    ));
  }
}
