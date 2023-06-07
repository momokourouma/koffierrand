import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:monprojetfinal/Service/DatabaseService.dart';
import 'package:monprojetfinal/ServicesPayment/PaymentChecked.dart';

import '../AppLogic/Functions/InputValidator.dart';
import '../model/Student.dart';

class PaymentBeta extends StatefulWidget {
  const PaymentBeta({Key? key}) : super(key: key);

  @override
  State<PaymentBeta> createState() => _PaymentBetaState();
}

class _PaymentBetaState extends State<PaymentBeta> {
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
   TextEditingController email = TextEditingController();
   TextEditingController numeroCompte = TextEditingController();
   TextEditingController montant = TextEditingController();
  final _formkey = GlobalKey<FormState>();

   List type_paiement = [
     "Logement",
     "Inscription"
   ];
   String currentv = "Inscription";



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              SizedBox(height: 50,),

              Lottie.asset("assets/payments/veho.json",height: 250),
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
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2,
                          )),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black, width: 2))),
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
                          borderSide: BorderSide(color: Colors.black, width: 2))),
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
                          borderSide: BorderSide(color: Colors.black, width: 2))),
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
                          borderSide: BorderSide(color: Colors.black, width: 2))),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              Column(
                children: [

                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
                    child: TextFormField(
                      validator: validatePayMontant,
                      controller: montant,
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                          labelText: "Montant",
                          labelStyle: GoogleFonts.lato(color: Colors.black, fontSize: 18),
                          fillColor: Colors.black,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Colors.black,
                                width: 2,
                              )),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.black, width: 2))),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
                    child: DropdownButtonFormField(


                        style: const TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
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
                        value: currentv,
                        items: type_paiement.map((name) {
                          return DropdownMenuItem(
                            value: name,
                            child: Text('$name',
                            style: GoogleFonts.lato(
                              color: Colors.black
                            )),
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

                  const SizedBox(height: 20,),

                  Container(

                    width: 150,
                    height: 40,
                    child: MaterialButton(onPressed: () async{

                      if(_formkey.currentState!.validate()){
                        final url = "http://192.168.100.85:8000/depot/${montant.text.trim()}";
                        Student newStudent = Student();
                        DataBaseService service = DataBaseService();
                        var data = {
                          "NumeroCompte" : numeroCompte.text.trim()

                        };
                        //final sending = await http.post(Uri.parse("http://192.168.100.85:8000/depot/${montant.text.trim()}"));
                        final sending = await http.post(
                          Uri.parse(url),
                          body: jsonEncode(data),
                          headers: {
                            "Content-Type": "application/json"
                          },
                        );
                        final result = sending.body;
                        final message = jsonDecode(sending.body);
                        if(message["valeur"] == "depot fait avec succes"){

                          newStudent.Payment = true;
                          service.Payment(newStudent);
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> PaymentChecked()));
                        }
                        else{
                          return showDialog(context: context,
                              builder: (BuildContext context){
                                return AlertDialog(
                                  content: Text("Numero de compte errone"),
                                );

                              });

                        }
                      }












                    },
                      color: Colors.black,
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      elevation: 20,
                      child: Text("Valider",
                          style: GoogleFonts.lato(
                              color: Colors.white,
                              fontSize: 20
                          )),

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
