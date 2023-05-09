


import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lottie/lottie.dart';
import 'package:monprojetfinal/LoginPages/LoginPage.dart';

import '../ClientNavbar/MyNav.dart';
import 'Register.dart';

class PasswordForget extends StatefulWidget {
  const PasswordForget({Key? key}) : super(key: key);

  @override
  State<PasswordForget> createState() => _PasswordForgetState();
}

class _PasswordForgetState extends State<PasswordForget> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();



  Future  ResetAlert( BuildContext context) async{

    showDialog(context: (context),
        builder: (context){
          return AlertDialog(
            content: Text("Un mail de reintialisation a ete envoyer a ce mail ${_emailController.text.trim()}"),
            actions: [
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
              },
                  child: Text("OK",
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                  ))
            ],
          );
        });
    await Future.delayed(Duration(seconds: 4));
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));

  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#ECF9FF"),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [

              SafeArea(
                child: Center(
                    child: Lottie.asset("assets/forgot-password.json",height: 250)
                ),
              ),

              SizedBox(height: 40,),

              Text("RESET PASSWORD",
                style: GoogleFonts.lato(
                  fontSize: 40,
                  color: Colors.black,


                ),),

              SizedBox(height: 50,),



              SizedBox(height: 10,),

              Form(
                key: _formKey,
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: TextFormField(
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return "Valeur ne peut etre vide";
                      }else{
                        return null;
                      }
                    },
                    controller: _emailController,


                    cursorColor: Colors.black,
                    decoration: InputDecoration(

                      hintText: "Entrez votre mail ",
                      hintStyle: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                      enabledBorder: OutlineInputBorder(

                        borderRadius: BorderRadius.circular(10),
                        borderSide:  BorderSide(
                          color: Colors.grey.shade500,
                          width: 2,
                        ),

                      ),
                      floatingLabelStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,

                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black,width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: const Icon(Iconsax.key,color: Colors.black, size: 17,),

                      labelStyle: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 14,
                      ),


                    ),

                  ),

                ),
              ),




              MaterialButton(
                onPressed: () async{
                  try{
                    if(_formKey.currentState!.validate()){
                      await FirebaseAuth.instance.sendPasswordResetEmail(email: _emailController.text.toString());
                      ResetAlert(context);
                      
                    }
                  }on FirebaseAuthException catch(e){
                    if(e.code== "user-not-found") {
                       showDialog(
                        context: context,
                        builder: (context){
                          return AlertDialog(
                            content: Text("Cet utilisateur n'existe pas"),

                          );
                        });
                    }else{
                      showDialog(
                          context: context,
                          builder: (context){
                            return AlertDialog(
                              content: Text("${e.message.toString()}"),

                            );
                          });

                    }
                  }



                },
                height: 45,
                color: Colors.black,
                elevation: 12,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),

                padding: const EdgeInsets.symmetric(horizontal: 50,vertical:10 ),
                child: Text("Reinitialiser",
                    style: GoogleFonts.lato(
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                        color: Colors.white
                    )),

              ),

              const SizedBox(height: 20,),




            ],
          ),
        ),
      ),
    );
  }
}


