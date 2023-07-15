import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:monprojetfinal/model/Logement.dart';

import '../AppLogic/Functions/InputValidator.dart';
import '../Service/DatabaseService.dart';
import '../model/Student.dart';
import 'PaymentChecked.dart';

class PaymentHouse extends StatefulWidget {
  const PaymentHouse({Key? key, required this.LogementId}) : super(key: key);
  final String LogementId;

  @override
  State<PaymentHouse> createState() => _PaymentHouseState();
}

class _PaymentHouseState extends State<PaymentHouse> {
  @override
  initState() {
    super.initState();
    getHouseInfo();
    getPayment();
  }

  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController numeroCompte = TextEditingController();
  TextEditingController montant = TextEditingController();

  final _formkey = GlobalKey<FormState>();

  DataBaseService service = DataBaseService();

  final usermail = FirebaseAuth.instance.currentUser!.email;
  final user = FirebaseAuth.instance.currentUser;
  List type_paiement = ["Logement", "Inscription"];
  String currentv = "Inscription";
  String name = "";
  bool paid = false;

  getHouseInfo() async {
    DocumentSnapshot<Map<String, dynamic>> document = await service.getElementbyId(widget.LogementId);
    //DocumentSnapshot<Map<String, dynamic>> document =await service.getElementbyId("EcHVjdAPSJ7iDTjvA5uO");
    setState(() {
      name = document.data()?["imageUrl"][0]["name"];
      paid = document.data()?["Paid"];
    });
  }
  bool payment = false;
  getPayment() async{
    DocumentSnapshot<Map<String, dynamic>> document = await service.getPaymentState(FirebaseAuth.instance.currentUser!.uid);
    setState(() {
      payment = document.data()?["Payment"];
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Lottie.asset("assets/payments/veho.json", height: 250),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
                child: TextFormField(
                  validator: validatePayPrenom,
                  controller: firstname,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      labelText: "Prenom",
                      labelStyle:
                          GoogleFonts.lato(color: Colors.black, fontSize: 20),
                      fillColor: Colors.black,
                      prefixIconColor: Colors.black,
                      suffixIconColor: Colors.black,
                      prefixIcon: Icon(FontAwesomeIcons.circleUser),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.black,
                            width: 2,
                          )),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: Colors.black, width: 2))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
                child: TextFormField(
                  validator: validatePayNom,
                  controller: lastname,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      labelText: "Nom",
                      labelStyle:
                          GoogleFonts.lato(color: Colors.black, fontSize: 20),
                      fillColor: Colors.black,
                      prefixIconColor: Colors.black,
                      suffixIconColor: Colors.black,
                      prefixIcon: Icon(FontAwesomeIcons.circleUser),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2,
                          )),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: Colors.black, width: 2))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
                child: TextFormField(
                  validator: validatePayEmail,
                  controller: email,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle:
                          GoogleFonts.lato(color: Colors.black, fontSize: 20),
                      fillColor: Colors.black,
                      prefixIconColor: Colors.black,
                      suffixIconColor: Colors.black,
                      prefixIcon: Icon(FontAwesomeIcons.at),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2,
                          )),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: Colors.black, width: 2))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
                child: TextFormField(
                  validator: validatePayCreditcard,
                  controller: numeroCompte,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      labelText: "Credit Card ",
                      labelStyle:
                          GoogleFonts.lato(color: Colors.black, fontSize: 18),
                      fillColor: Colors.black,
                      prefixIconColor: Colors.black,
                      suffixIconColor: Colors.black,
                      suffixIcon: Icon(FontAwesomeIcons.ccVisa),
                      prefixIcon: Icon(FontAwesomeIcons.creditCard),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2,
                          )),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: Colors.black, width: 2))),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 30, right: 30),
                    child: TextFormField(
                      validator: validatePayMontant,
                      controller: montant,
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                          labelText: "Montant",
                          labelStyle: GoogleFonts.lato(
                              color: Colors.black, fontSize: 18),
                          fillColor: Colors.black,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Colors.black,
                                width: 2,
                              )),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Colors.black, width: 2))),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 30, left: 30, right: 30),
                    child: DropdownButtonFormField(
                        style: const TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                        decoration: InputDecoration(
                            labelText: "Type de paiment",
                            labelStyle: GoogleFonts.lato(
                                color: Colors.black, fontSize: 18),
                            fillColor: Colors.black,
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: Colors.black,
                                  width: 2,
                                )),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    BorderSide(color: Colors.black, width: 2))),
                        value: currentv,
                        items: type_paiement.map((name) {
                          return DropdownMenuItem(
                            value: name,
                            child: Text('$name',
                                style: GoogleFonts.lato(color: Colors.black)),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            currentv = value.toString();
                          });
                        }),
                  ),

                  /* Padding(
                    padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
                    child: TextFormField(

                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                          labelText: "Type de paiment",
                          labelStyle: GoogleFonts.lato(color: Colors.black, fontSize: 18),
                          fillColor: Colors.black,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 2,
                              )),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.black, width: 2))),
                    ),
                  ), */

                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 150,
                    height: 40,
                    child: MaterialButton(
                      onPressed: () async {

                        if (_formkey.currentState!.validate()) {
                          print(payment);

                          if(payment == false){
                            return showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    content: Text("Pour faire une reservation vous devez vous s'inscrire"),
                                  );
                                });

                          }
                          //final url = "http://192.168.100.85:8000/depot/${montant.text.trim()}";
                          final url = "http://192.168.99.146.85:8000/depot/${montant.text.trim()}";
                          Logement newLogement = Logement();
                          Student newStudent = Student();
                          DataBaseService service = DataBaseService();

                          var data = {"NumeroCompte": numeroCompte.text.trim()};

                          final sending = await http.post(
                            Uri.parse(url),
                            body: jsonEncode(data),
                            headers: {"Content-Type": "application/json"},
                          );
                          final result = sending.body;
                          final message = jsonDecode(sending.body);

                           if (paid == true) {
                            return showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    content: Text("Maison deja reservez"),
                                  );
                                });
                          }
                          if (message["valeur"] == "depot fait avec succes") {
                            newLogement.UserInfo = usermail;
                            newLogement.paid = true;
                            newLogement.Reserved = true;
                            newLogement.Month  = new DateTime.now();

                            newStudent.HouseReservation = name;
                            service.houseReservation(newStudent);
                            service.Logementfees(
                                newLogement, widget.LogementId);

                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PaymentChecked()));
                          } else {
                            return showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    content: Text("Numero de compte errone"),
                                  );
                                });
                          };
                        };
                      },
                      color: Colors.black,
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 20,
                      child: Text("Valider",
                          style: GoogleFonts.lato(
                              color: Colors.white, fontSize: 20)),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
