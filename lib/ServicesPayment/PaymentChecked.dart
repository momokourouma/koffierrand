
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottie/lottie.dart';
import 'package:monprojetfinal/ClientNavbar/MyNav.dart';

class PaymentChecked extends StatefulWidget {
  const PaymentChecked({Key? key}) : super(key: key);

  @override
  State<PaymentChecked> createState() => _PaymentCheckedState();
}

class _PaymentCheckedState extends State<PaymentChecked> {

  @override
  void initState() {
    super.initState();
    myscren();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#2C3333"),
      body: Column(
        children: [
          const SizedBox(height: 100,),

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
  Future<void> myscren() async {
    await Future.delayed(const Duration(seconds: 3 ));
    Navigator.pushReplacement(this.context, MaterialPageRoute(builder:(context) => MyNav()));
    //await Future.delayed(Duration(seconds: 10 ));
  }
}
