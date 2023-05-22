import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottie/lottie.dart';
import 'package:monprojetfinal/Service/DatabaseService.dart';
import 'package:monprojetfinal/TrouveMoiUnAppartment/HouseDetails.dart';
import 'package:monprojetfinal/model/Logement.dart';

class FindMe extends StatefulWidget {
  const FindMe({Key? key}) : super(key: key);


  @override
  State<FindMe> createState() => _FindMeState();
}





class _FindMeState extends State<FindMe> {


DataBaseService service = DataBaseService();

 List post = [];
 List LogmentId = [];



 getpost() async{
     post = await service.getUrl();
 }
 getLogementId() async{
   LogmentId = await service.getLogmentID();
 }


 @override
 initState(){
   super.initState();

    getLogementId();
 }

  @override
  Widget build(BuildContext context) {




    return Scaffold(
      backgroundColor: HexColor("#2C3333"),
      body: Column(
        children: [
            Expanded(
                child: ListView.builder(
                  itemCount: post.length,
                    itemBuilder: (context,index){
                      return Padding(
                        padding: const EdgeInsets.all(15),
                        child: Container(
                          height: 400,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(image:NetworkImage("${post[index]}"),fit: BoxFit.fill),
                          ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 350),
                          child: Column(
                            children: [
                              MaterialButton(onPressed: () async{
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>HouseDetails(LogementId: LogmentId[index], ImageUrl: post[index],)));

                              },

                                elevation: 20,
                                color: Colors.black.withOpacity(0.7),
                              child: Text("Details",

                              style: GoogleFonts.lato(
                                color: Colors.white,
                              )),)
    
                            ],
                          ),
                        ),
                        ),
                      );
                    }


                )
            ),
        ],
      ),
    );
  }
}

