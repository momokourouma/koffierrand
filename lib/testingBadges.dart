
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import '../Service/DatabaseService.dart';


import 'package:flutter/material.dart';

import 'TrouveMoiUnAppartment/HouseDetails.dart';

class TestingGrid extends StatefulWidget {
  const TestingGrid({super.key});

  @override
  State<TestingGrid> createState() => _TestingGridState();
}

class _TestingGridState extends State<TestingGrid> {
  DataBaseService service = DataBaseService();
  List LogmentId = [];

  getLogementId() async{
    LogmentId = await service.getLogmentID();
  }


  @override
  initState(){
    super.initState();
    getLogementId();
  }
  final CollectionReference studentsCollection = FirebaseFirestore.instance
      .collection("Logement");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     //backgroundColor: HexColor("#454545"),
     //backgroundColor: HexColor("#454545"),
      body: Column(
        children: [
          SizedBox(height: 30),
          Expanded(
            child: Center(
              child: StreamBuilder<QuerySnapshot>(
                stream: studentsCollection.snapshots(),
                builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  }

                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Text('Loading...');
                  }

                  return  GridView.builder(
                      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(

                          maxCrossAxisExtent: 200,
                          childAspectRatio: 3 / 4,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 5),
                      itemCount: snapshot.data!.docs.length ,
                      itemBuilder:(BuildContext context,int index){
                        DocumentSnapshot document = snapshot.data!.docs[index];
                        Map<String, dynamic> data = document.data() as Map<String, dynamic>;
                        return  Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            height: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(image:NetworkImage("${data["imageUrl"][0]["downloadURL"]}"),fit: BoxFit.fill),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 190),
                              child: Column(
                                children: [
                                  MaterialButton(onPressed: () async{
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HouseDetails( LogementId: LogmentId[index],ImageUrl:data["imageUrl"][0]["downloadURL"] ,)));
                                    DocumentSnapshot<Map<String, dynamic>> test = await service.getElementbyId("EcHVjdAPSJ7iDTjvA5uO");
                                    print(LogmentId);
                                    print("${test!["price"]}");
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
                      });


                  /*ListView.builder(
                      shrinkWrap: true,
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder:(BuildContext context,int index){
                        DocumentSnapshot document = snapshot.data!.docs[index];
                        Map<String, dynamic> data = document.data() as Map<String, dynamic>;
                        return  Padding(
                          padding: const EdgeInsets.all(15),
                          child: Container(
                            height: 400,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(image:NetworkImage("${data["imageUrl"][0]["downloadURL"]}"),fit: BoxFit.fill),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 350),
                              child: Column(
                                children: [
                                  MaterialButton(onPressed: () async{
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HouseDetails( LogementId: LogmentId[index],ImageUrl:data["imageUrl"][0]["downloadURL"] ,)));
                                    DocumentSnapshot<Map<String, dynamic>> test = await service.getElementbyId("EcHVjdAPSJ7iDTjvA5uO");
                                    print(LogmentId);
                                    print("${test!["price"]}");
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
                      }); */
                },
              ) ,
            ),
          )
        ],
      ) ,
    );
  }
}
