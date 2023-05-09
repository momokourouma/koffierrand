import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentForm extends StatefulWidget {
  const PaymentForm({Key? key}) : super(key: key);

  @override
  State<PaymentForm> createState() => _PaymentFormState();
}

class _PaymentFormState extends State<PaymentForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 200,
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
              child: TextFormField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle:
                        GoogleFonts.lato(color: Colors.black, fontSize: 20),
                    fillColor: Colors.black,
                    prefixIconColor: Colors.black,
                    suffixIconColor: Colors.black,
                    prefixIcon: Icon(FontAwesomeIcons.user),
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
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Container(
                    height: 50,
                    width: 140,
                    child: TextFormField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                          labelText: "Code",
                          labelStyle:
                              GoogleFonts.lato(fontSize: 15, color: Colors.black),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 2,
                              )),
                          prefixIconColor: Colors.black,
                          prefixIcon: Icon(FontAwesomeIcons.barcode),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 2,
                            ),
                          )),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Container(
                    height: 50,
                    width: 140,
                    child: TextFormField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                          labelText: "Exp Date",
                          labelStyle:
                              GoogleFonts.lato(color: Colors.black, fontSize: 15),
                          prefixIcon: Icon(FontAwesomeIcons.calendarDays),
                          prefixIconColor: Colors.black,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                width: 2,
                                color: Colors.black,
                              )),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Colors.black,
                              width: 2,
                            ),
                          )),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
                  child: TextFormField(

                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      labelText: "Matricule",
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
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
                  child: TextFormField(

                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        labelText: "Department",
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
                ),
                Padding(
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
                ),

                SizedBox(height: 20,),

                Container(

                  width: 150,
                  height: 40,
                  child: MaterialButton(onPressed: (){},
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
    );
  }
}
