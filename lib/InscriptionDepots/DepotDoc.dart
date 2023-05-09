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
import 'package:monprojetfinal/InscriptionDepots/FileUpload.dart';
import 'package:monprojetfinal/Service/DatabaseService.dart';
import 'package:monprojetfinal/model/Student.dart';

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






  List name = [
    "Ingéniérie",
    " Sciences Médicales",
    "Licence",
    "BTS",
    "Master"
  ];
  String curentv = "Ingéniérie";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#2C3333"),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Form(
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
                    controller: firstName,
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.grey.shade500,
                            width: 2,
                          ),
                        ),
                        floatingLabelStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.blue, width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        prefixIcon: const Icon(
                          Iconsax.user,
                          color: Colors.white,
                          size: 17,
                        ),
                        labelText: "Prenoms",
                        hintText: "Prenoms",
                        hintStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                        labelStyle: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 14,
                        )),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: TextFormField(
                    controller: lastName,
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.grey.shade500,
                            width: 2,
                          ),
                        ),
                        floatingLabelStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.blue, width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        prefixIcon: const Icon(
                          FontAwesomeIcons.user,
                          color: Colors.white,
                          size: 15,
                        ),
                        labelText: "Nom",
                        hintText: "Nom",
                        hintStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                        labelStyle: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 14,
                        )),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: TextFormField(
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
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.grey.shade500,
                          width: 2,
                        ),
                      ),
                      floatingLabelStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.blue, width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: const Icon(
                        FontAwesomeIcons.calendarDays,
                        color: Colors.white,
                        size: 17,
                      ),
                      labelText: "Date de naissance",
                      hintText: "Date de Naissance",
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                      labelStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 14,
                      ),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: TextFormField(
                    readOnly: true,
                    controller: nationaliteController,
                    onTap: () {
                      showCountryPicker(
                          countryListTheme: const CountryListThemeData(
                              backgroundColor: Colors.grey,
                              textStyle: TextStyle(
                                color: Colors.white,
                              )),
                          context: context,
                          showPhoneCode: false,
                          onSelect: (Country t) {
                            setState(() {
                              nationaliteController.text = t.name;
                            });
                          });
                    },
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.grey.shade500,
                            width: 2,
                          ),
                        ),
                        floatingLabelStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.blue, width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        prefixIcon: const Icon(
                          FontAwesomeIcons.earthAfrica,
                          color: Colors.white,
                          size: 17,
                        ),
                        labelText: "Nationalite",
                        hintText: "Nationalite",
                        hintStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                        labelStyle: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 14,
                        )),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                /* Padding(
                  padding: EdgeInsets.all(20),
                  child: TextFormField(

                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:  BorderSide(
                            color: Colors.grey.shade500,
                            width: 2,
                          ),

                        ),
                        floatingLabelStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.blue,width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        prefixIcon: const Icon(FontAwesomeIcons.user,color: Colors.white, size: 15,),
                        labelText: "Department",
                        hintText: "Department",
                        hintStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                        labelStyle: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 14,
                        )

                    ),
                    style: TextStyle(
                        color: Colors.white
                    ),
                  ),
                ), */

                Padding(
                  padding: const EdgeInsets.all(20),
                  child: DropdownButtonFormField(

                      style: const TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                      decoration: InputDecoration(
                          labelText: "Department",
                          labelStyle: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 20,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Colors.grey.shade500, width: 2))),
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

                 /*   Student newStudent = Student(

                        Nationality: nationaliteController.text,
                        FirstName: firstName.text,
                        LastName: lastName.text,
                        DateOfBirth: dateDeNaissance.text,
                        Department: curentv
                    ); */






                  /*  try{
                      service.addStudent(newStudent);
                    }on FirebaseFirestore catch(e){
                      print(e);
                    } */


                    //print("${userId}");


                    Navigator.push(context,MaterialPageRoute(builder: (context) => FileUpload()));
                  },
                  color: Colors.blue,
                  height: 45,
                  elevation: 20,
                  padding: EdgeInsets.symmetric(horizontal: 60),
                  shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text("Suivant",
                      style: GoogleFonts.lato(
                        color: Colors.black87,
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
