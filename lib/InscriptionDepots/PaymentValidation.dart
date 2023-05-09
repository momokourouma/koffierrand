
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottie/lottie.dart';

class PaymentValidation extends StatefulWidget {
  const PaymentValidation({Key? key}) : super(key: key);

  @override
  State<PaymentValidation> createState() => _PaymentValidationState();
}

class _PaymentValidationState extends State<PaymentValidation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#454545"),
      body: Column(
        children: [
          SizedBox(height: 100,),

          Center(child: Lottie.asset("assets/PaymentValidationAssets/check-blue.json",height: 200)),
          SizedBox(height: 30,),
          
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Felicitation vous etes desormais un etudiant de l'universite koffi Anan vous allez recevoir votre matricule par E-mail",
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(
              fontSize: 30,
              color: Colors.white,
            ),),
          ),
          SizedBox(height: 20,),
          MaterialButton(onPressed: (){},
            padding: EdgeInsets.symmetric(horizontal: 40),
            shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          height: 50,
          color: Colors.black87,
          child: Text("Terminer",style: GoogleFonts.lato(
            color: Colors.white,
            fontSize: 20,
          )),)
        ],
      ),
    );
  }
}
