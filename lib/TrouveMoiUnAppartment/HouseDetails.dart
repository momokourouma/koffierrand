import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:monprojetfinal/Service/DatabaseService.dart';

class HouseDetails extends StatefulWidget {
  const HouseDetails({Key? key, required this.LogementId, required this.ImageUrl }) : super(key: key);
  final String LogementId;
  final String ImageUrl;

  @override
  State<HouseDetails> createState() => _HouseDetailsState();
}

class _HouseDetailsState extends State<HouseDetails> {



  DataBaseService service = DataBaseService();


 DocumentSnapshot<Map<String,dynamic>> HouseInfo ;

getHouseInfo() async{
  HouseInfo = await service.getElementbyId(widget.LogementId);
}




  @override
  initState(){
    super.initState();
    getHouseInfo();

  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 400,
            width: 500,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: NetworkImage(widget.ImageUrl),
                  //image: AssetImage("assets/houses/int1.jpg"),
              fit: BoxFit.fill,
            )),
            child:  const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 210,left: 10),
                  child: Icon(FontAwesomeIcons.circleChevronLeft,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 470,
            decoration: BoxDecoration(
              color: HexColor("#2C3333"),
            ),
            child: Column(
              children: [
                const SizedBox(height: 20,),
                
                Center(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Container(
                             height: 50,
                             width: 50,

                             child: Column(
                               children: [
                                 Icon(FontAwesomeIcons.dollarSign,color: Colors.blue,),
                                 SizedBox(height: 5),
                                 Text("",
                                     style:GoogleFonts.lato(
                                       color: Colors.white,

                                     ) ),
                               ],
                             ),

                           ),
                           SizedBox(width: 40,),
                           Container(
                             height: 50,
                             width: 90,

                             child: Column(
                               children: [
                                 Icon(FontAwesomeIcons.locationDot,color: Colors.blue,),
                                 SizedBox(height: 5),
                                 Text("${HouseInfo["price"]}",
                                     textAlign: TextAlign.center,
                                     style:GoogleFonts.lato(
                                       color: Colors.white,
                                       fontSize: 15
                                     ) ),
                               ],
                             ),

                           ),
                           SizedBox(width: 40,),
                           Container(
                             height: 50,
                             width: 50,

                             child: Column(
                               children: [
                                 const Icon(FontAwesomeIcons.mapLocation,color: Colors.blue,),
                                 SizedBox(height: 5),
                                 Text("",
                                     textAlign: TextAlign.center,
                                     style:GoogleFonts.lato(

                                       color: Colors.white,
                                       fontSize: 15,
                                     ) ),
                               ],
                             ),

                           ),

                         ],
                        ),
                        
                        SizedBox(height: 5,),
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
                                    image: const DecorationImage(image: AssetImage("assets/houses/int4.jpg"),
                                        fit: BoxFit.cover)
                                ),
                              ),
                              




                            ],
                          ),
                        ),

                       SizedBox(height: 20,),

                        MaterialButton(onPressed: () async{

                       // var test = await service.getElementbyId(widget.LogementId);
                      //  print(test["price"]);






                        },
                          color: Colors.black,
                          elevation: 20,
                          shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),

                          padding: EdgeInsets.symmetric(horizontal: 50,vertical: 10),
                        child: Text("Reservez",
                            style: GoogleFonts.lato(
                              color: Colors.blue,
                              fontSize: 25,
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



