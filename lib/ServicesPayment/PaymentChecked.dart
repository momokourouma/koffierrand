
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottie/lottie.dart';

class PaymentChecked extends StatefulWidget {
  const PaymentChecked({Key? key}) : super(key: key);

  @override
  State<PaymentChecked> createState() => _PaymentCheckedState();
}

class _PaymentCheckedState extends State<PaymentChecked> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#2C3333"),
      body: Column(
        children: [
          SizedBox(height: 100,),

          Center(
              child: Lottie.asset("assets/PaymentValidationAssets/validation.json",height: 300)
          ),

          SizedBox(height: 10,),
          Column(
            children: [
              Text("Paiement Valider",
                style: GoogleFonts.lato(
                  fontSize: 35,
                  color: Colors.white,
                ) ,),
            ],
          )
        ],
      ),
    );
  }
}
