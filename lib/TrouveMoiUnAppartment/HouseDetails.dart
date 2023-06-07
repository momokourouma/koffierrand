import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:monprojetfinal/Service/DatabaseService.dart';
import 'package:monprojetfinal/ServicesPayment/Payment.dart';
import 'package:monprojetfinal/ServicesPayment/PaymentChecked.dart';
import 'package:monprojetfinal/ServicesPayment/PaymentHouse.dart';
import 'package:monprojetfinal/ServicesPayment/Paymentbeta.dart';

class HouseDetails extends StatefulWidget {
  const HouseDetails(
      {Key? key, required this.LogementId, required this.ImageUrl})
      : super(key: key);
  final String LogementId;
  final String ImageUrl;

  @override
  State<HouseDetails> createState() => _HouseDetailsState();
}

class _HouseDetailsState extends State<HouseDetails> {
  @override
  initState() {
    super.initState();
    getHouseInfo();
  }

  DataBaseService service = DataBaseService();

  Stream<DocumentSnapshot<Map<String, dynamic>>> fetchDataById(String id) {
    return FirebaseFirestore.instance
        .collection("Logement")
        .doc(id)
        .snapshots();
  }

  String quartier = "";
  String description = "";
  int price = 0;
  int distance = 0;

  getHouseInfo() async {
    DocumentSnapshot<Map<String, dynamic>> document =
        await service.getElementbyId(widget.LogementId);
    setState(() {
      quartier = document.data()?['quartier'];
      price = document.data()?['price'];
      distance = document.data()?['distanceDeKofi'];
      //description = document.data()?['description'];
    });
  }

  getLogemntDescription(String id) async {
    try{
      DocumentReference reference = FirebaseFirestore.instance.collection('Logement').doc(widget.LogementId);
      reference.snapshots().listen((data){
        setState(() {
          description = data.get("description");
        });
      });
    } on FirebaseException catch(e){
      print(e.code);
    }

  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
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
            child: const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 300, left: 10),
                  child: Icon(
                    FontAwesomeIcons.circleChevronLeft,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 650,
            decoration: BoxDecoration(
              //color: HexColor("#2C3333"),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Center(
                    child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 90,
                          width: 90,
                          child: Column(
                            children: [
                              Icon(
                                FontAwesomeIcons.dollarSign,
                                color: Colors.black,
                              ),
                              SizedBox(height: 5),
                              Text("${price}GNF/mois",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.lato(
                                    color: Colors.black,
                                  )),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Container(
                          height: 90,
                          width: 90,
                          child: Column(
                            children: [
                              Icon(
                                FontAwesomeIcons.locationDot,
                                color: Colors.black,
                              ),
                              SizedBox(height: 5),
                              Text("${quartier}",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.lato(
                                      color: Colors.black, fontSize: 15)),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Container(
                          height: 90,
                          width: 90,
                          child: Column(
                            children: [
                              const Icon(
                                FontAwesomeIcons.mapLocation,
                                color: Colors.black,
                              ),
                              SizedBox(height: 5),
                              Text("${distance}m",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.lato(
                                    color: Colors.black,
                                    fontSize: 15,
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Text(
                            "Description",
                            style: GoogleFonts.lato(
                              color: Colors.black,
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 350,
                            child: Text(
                              "${description}",
                              style: GoogleFonts.lato(
                                color: Colors.black,
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
                          Text(
                            "Photos",
                            style: GoogleFonts.lato(
                              color: Colors.black,
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        height: 250,
                        width: 360,
                        child: StreamBuilder<
                            DocumentSnapshot<Map<String, dynamic>>>(
                          stream: fetchDataById(widget.LogementId),
                          builder: (BuildContext context,
                              AsyncSnapshot<
                                      DocumentSnapshot<Map<String, dynamic>>>
                                  snapshot) {
                            if (snapshot.hasError) {
                              return Text('Error: ${snapshot.error}');
                            }
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return Text('Loading...');
                            }
                            List urls = [];
                            var documents = snapshot.data!.data();
                            var fieldvalue = documents!["interior"];
                            for (var x in fieldvalue) {
                              urls.add(x["downloadURL"]);
                            }

                            if (!snapshot.hasData || !snapshot.data!.exists) {
                              return Text('Document does not exist');
                            }
                            return ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: urls.length,
                                itemBuilder: (BuildContext context, int index) {
                                  DocumentSnapshot document = snapshot.data!;
                                  Map<String, dynamic> data =
                                      document.data() as Map<String, dynamic>;

                                  return Column(
                                    children: [
                                      Container(
                                        height: 200,
                                        width: 300,
                                        child: ListView(
                                          //scrollDirection: Axis.horizontal,
                                          children: [
                                            Padding(
                                                padding: EdgeInsets.all(8),
                                                child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    height: 240,
                                                    child: Image(
                                                      image: NetworkImage(
                                                          "${data["interior"][index]["downloadURL"]}"),
                                                      fit: BoxFit.cover,
                                                    ))),
                                          ],
                                        ),
                                      ),

                                      /*  Center(
                                  child: Image(image: NetworkImage(
                                      "${data["interior"][]["downloadURL"]}")),
                                ),*/
                                    ],
                                  );
                                });
                          },
                        )),

                    //SizedBox(height: 20,),

                    MaterialButton(
                      onPressed: () async {
                        // var test = await service.getElementbyId(widget.LogementId);
                        //  print(test["price"]);

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PaymentHouse(
                                    LogementId: widget.LogementId)));
                      },
                      color: Colors.black,
                      elevation: 20,
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                      child: Text("Reservez",
                          style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 25,
                          )),
                    ),
                  ],
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
