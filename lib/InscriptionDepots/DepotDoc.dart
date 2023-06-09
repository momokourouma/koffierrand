import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:country_picker/country_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:monprojetfinal/AppLogic/Functions/InputValidator.dart';
import 'package:monprojetfinal/InscriptionDepots/FileUpload.dart';
import 'package:monprojetfinal/InscriptionDepots/FileUploadMaster.dart';
import 'package:monprojetfinal/Service/DatabaseService.dart';
import 'package:monprojetfinal/ServicesPayment/Payment.dart';
import 'package:monprojetfinal/model/Student.dart';

import 'FileUploadBTS.dart';

class DepotDoc extends StatefulWidget {
  const DepotDoc({Key? key}) : super(key: key);

  @override
  State<DepotDoc> createState() => _DepotDocState();
}

class _DepotDocState extends State<DepotDoc> {
  TextEditingController nationaliteController = TextEditingController();
  TextEditingController dateDeNaissance = TextEditingController();
  TextEditingController department = TextEditingController();
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();

  //final userId = FirebaseAuth.instance.currentUser!.uid;

  DataBaseService service = DataBaseService();

  final _formkey = GlobalKey<FormState>();






  List name = [
    "Ingéniérie",
    " Sciences Médicales",
    "Licence",
    "BTS",
    " Mastère"
  ];
  String curentv = "Ingéniérie";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: HexColor("#2C3333"),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Lottie.asset("assets/register.json"),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: TextFormField(
                    validator: validateName,
                    controller: firstName,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2,
                          ),
                        ),
                        floatingLabelStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        prefixIcon: const Icon(
                          Iconsax.user,
                          color: Colors.black,
                          size: 17,
                        ),
                        labelText: "Prenoms",
                        hintText: "Prenoms",
                        hintStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                        labelStyle: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          fontSize: 14,
                        )),
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: TextFormField(
                    validator: validateLastName,
                    controller: lastName,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2,
                          ),
                        ),
                        floatingLabelStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        prefixIcon: const Icon(
                          FontAwesomeIcons.user,
                          color: Colors.black,
                          size: 15,
                        ),
                        labelText: "Nom",
                        hintText: "Nom",
                        hintStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                        labelStyle: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          fontSize: 14,
                        )),
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: TextFormField(
                    validator: validateDateNaissance,
                    controller: dateDeNaissance,
                    readOnly: true,
                    onTap: () async {
                      DateTime? _datepicker = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1950),
                          lastDate: DateTime(2100));

                      if (_datepicker != null) {
                        String formatDate =
                            DateFormat("yyyy-MM-dd").format(_datepicker);
                        setState(() {
                          dateDeNaissance.text = formatDate;
                        });
                      }
                    },
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                      floatingLabelStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: const Icon(
                        FontAwesomeIcons.calendarDays,
                        color: Colors.black,
                        size: 17,
                      ),
                      labelText: "Date de naissance",
                      hintText: "Date de Naissance",
                      hintStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                      labelStyle: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 14,
                      ),
                    ),
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: TextFormField(
                    validator: validateNationaity,
                    readOnly: true,
                    controller: nationaliteController,
                    onTap: () {
                      showCountryPicker(
                          countryListTheme: const CountryListThemeData(
                              backgroundColor: Colors.white,
                              textStyle: TextStyle(
                                color: Colors.black,
                              )),
                          context: context,
                          showPhoneCode: false,
                          onSelect: (Country t) {
                            setState(() {
                              nationaliteController.text = t.name;
                            });
                          });
                    },
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2,
                          ),
                        ),
                        floatingLabelStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        prefixIcon: const Icon(
                          FontAwesomeIcons.earthAfrica,
                          color: Colors.black,
                          size: 17,
                        ),
                        labelText: "Nationalite",
                        hintText: "Nationalite",
                        hintStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                        labelStyle: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          fontSize: 14,
                        )),
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),




                Padding(
                  padding: const EdgeInsets.all(20),
                  child: DropdownButtonFormField(
                    

                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                      decoration: InputDecoration(
                          labelText: "Department",
                          labelStyle: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontSize: 20,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Colors.black, width: 2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Colors.black, width: 2))),
                      value: curentv,
                      items: name.map((name) {
                        return DropdownMenuItem(
                          value: name,
                          child: Text('$name'),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          curentv = value.toString();
                        });
                      }),
                ),
                const SizedBox(
                  height: 10,
                ),

                //
                MaterialButton(
                  onPressed: () {

                    Student newStudent = Student(
                        Nationality: nationaliteController.text,
                        FirstName: firstName.text,
                        LastName: lastName.text,
                        DateOfBirth: dateDeNaissance.text,
                        Department: curentv
                    );


                    if(_formkey.currentState!.validate()) {
                      print(curentv);
                      if (curentv == "BTS") {
                        try {
                          service.addStudent(newStudent);
                        } on FirebaseFirestore catch (e) {
                          print(e.toString());
                        }
                        Navigator.push(context, MaterialPageRoute(builder: (
                            context) => FileUploadBTS()));
                      }
                      else if (curentv == "Mastère"){
                        try {
                          service.addStudent(newStudent);
                        } on FirebaseFirestore catch (e) {
                          print(e.toString());
                        }
                        Navigator.push(context, MaterialPageRoute(builder: (
                            context) => FileUploadMaster()));

                      }else{
                        try {
                          service.addStudent(newStudent);
                        } on FirebaseFirestore catch (e) {
                          print(e.toString());
                        }
                        Navigator.push(context, MaterialPageRoute(builder: (
                            context) => FileUpload()));

                      }
                    }
                    
                  },
                  color: Colors.black,
                  height: 45,
                  elevation: 20,
                  padding: EdgeInsets.symmetric(horizontal: 60),
                  shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text("Suivant",
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      )),
                ),

                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
