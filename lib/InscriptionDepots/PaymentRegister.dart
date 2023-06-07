
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottie/lottie.dart';
import 'package:monprojetfinal/ClientNavbar/MyNav.dart';
import 'package:monprojetfinal/ServicesPayment/paymentform.dart';

import '../ServicesPayment/Paymentbeta.dart';

class PaymentRegister extends StatefulWidget {
  const PaymentRegister({Key? key}) : super(key: key);

  @override
  State<PaymentRegister> createState() => _PaymentRegisterState();
}

class _PaymentRegisterState extends State<PaymentRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#F6F1E9"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50,),

            Lottie.asset("assets/payments/secondpayment.json",height: 200),

            Text("SERVICES DE PAIEMENT",
                style: GoogleFonts.lato(
                  fontSize: 30,

                )),
            const SizedBox(height: 50,),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 45),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: HexColor("#454545")
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Text("PayCard",
                              style: GoogleFonts.orbitron(
                                color: Colors.white,
                                fontSize: 20,
                              ) ,),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 25),
                          child: MaterialButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentForm()));
                          },child: Text("Payer",
                              style: GoogleFonts.lato(
                                fontSize: 18,
                              )),
                            height: 30,
                            elevation: 20,
                            color: Colors.blue,
                            shape: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.transparent,

                                ),
                                borderRadius: BorderRadius.circular(5)
                            ),
                          ),
                        )
                      ],
                    ),
                    height: 150,
                    width: 150,

                  ),
                ),
                SizedBox(width: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: HexColor("#454545")
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(
                            child: Image(image: AssetImage("assets/payments/visa.png"),
                                height: 80),
                          ),
                        ),
                        MaterialButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentForm()));
                        },child: Text("Payer",
                            style: GoogleFonts.lato(
                              fontSize: 18,
                            )),
                          height: 30,
                          elevation: 20,
                          color: Colors.blue,
                          shape: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.transparent,

                              ),
                              borderRadius: BorderRadius.circular(5)
                          ),
                        )
                      ],
                    ),
                    height: 150,
                    width: 150,

                  ),
                ),


              ],
            ),

            SizedBox(height: 10,),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 45),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: HexColor("#454545")
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(
                            child: Image(image: AssetImage("assets/payments/stripe.png"),
                                height: 80),
                          ),
                        ),
                        MaterialButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentForm()));
                        },child: Text("Payer",
                            style: GoogleFonts.lato(
                              fontSize: 18,
                            )),
                          height: 30,
                          elevation: 20,
                          color: Colors.blue.shade400,
                          shape: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.transparent,

                              ),
                              borderRadius: BorderRadius.circular(5)
                          ),
                        )
                      ],
                    ),
                    height: 150,
                    width: 150,

                  ),
                ),
                const SizedBox(width: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: HexColor("#454545")
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(
                            child: Image(image: AssetImage("assets/payments/apple-pay.png"),
                                height: 80),
                          ),
                        ),
                        MaterialButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentForm()));
                        },child: Text("Payer",
                            style: GoogleFonts.lato(
                              fontSize: 18,
                            )),
                          height: 30,
                          elevation: 20,
                          color: Colors.blue.shade400,
                          shape: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.transparent,

                              ),
                              borderRadius: BorderRadius.circular(5)
                          ),
                        )
                      ],
                    ),
                    height: 150,
                    width: 150,

                  ),
                ),


              ],
            ),
            const SizedBox(height: 10,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 45),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: HexColor("#454545")
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(
                            child: Image(image: AssetImage("assets/payments/maestro.png"),
                                height: 80),
                          ),
                        ),
                        MaterialButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentForm()));
                        },child:Text("Payer",
                            style: GoogleFonts.lato(
                              fontSize: 18,
                            )),
                          height: 30,
                          elevation: 20,
                          color: Colors.blue.shade400,
                          shape: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.transparent,

                              ),
                              borderRadius: BorderRadius.circular(5)
                          ),
                        )
                      ],
                    ),
                    height: 150,
                    width: 150,

                  ),
                ),
                SizedBox(width: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: HexColor("#454545")
                    ),
                    height: 150,
                    width: 150,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Center(
                              child: Text("MoPay",
                                style: GoogleFonts.orbitron(
                                  color: Colors.white,
                                  fontSize: 30,
                                ) ,)
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 38),
                          child: MaterialButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentBeta()));
                          },
                            height: 30,
                            elevation: 20,
                            color: Colors.blue.shade400,
                            shape: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.transparent,

                                ),
                                borderRadius: BorderRadius.circular(5)
                            ),
                            child: Text("Payer",
                                style: GoogleFonts.lato(
                                  fontSize: 18,
                                )),
                          ),
                        )
                      ],
                    ),

                  ),
                ),



              ],
            ),
            SizedBox(height: 10,),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> MyNav()));
            },
                child: Text("Payer Plus Tard ",style:
                  GoogleFonts.lato(
                    fontSize: 20,
                    color: Colors.black87,
                  ),))
          ],
        ),
      ),
    );
  }
}
