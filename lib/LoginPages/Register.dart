
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lottie/lottie.dart';
import 'package:monprojetfinal/AppLogic/Backend/Authfunction.dart';
import 'package:monprojetfinal/LoginPages/LoginPage.dart';

import '../ClientNavbar/MyNav.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPassword  = TextEditingController();
   String? _errorMessage;

  @override
  void dispose(){
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPassword.dispose();

    super.dispose();
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
                    child: Lottie.asset("assets/login-or-register.json",height: 200)
                ),
              ),

              SizedBox(height: 10,),

              Text("Inscription",
                style: GoogleFonts.lato(
                  fontSize: 40,
                  color: Colors.black,


                ),),

              SizedBox(height: 20,),


              //SizedBox(height: 20,),

              Padding(
                padding: EdgeInsets.all(20),
                child: TextFormField(
                  controller: _emailController,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
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
                      prefixIcon: const Icon(FontAwesomeIcons.at,color: Colors.black, size: 17,),
                      labelText: "Email",
                      hintText: "Email",
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                      labelStyle: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 14,
                      )

                  ),

                ),
              ),

              SizedBox(height: 10,),

              Padding(
                padding: EdgeInsets.all(20),
                child: TextFormField(
                  obscureText: true,
                  controller: _passwordController,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    hintText: "Password",
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
                    labelText: "Password",
                    labelStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 14,
                    ),


                  ),

                ),

              ),

              Padding(
                padding: EdgeInsets.all(20),
                child: TextFormField(
                  obscureText: true,
                  controller: _confirmPassword,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(

                    hintText: " Retype Password",
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
                    labelText: "  Retype password",
                    labelStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 14,
                    ),


                  ),

                ),

              ),


              const SizedBox(height: 20,),

              MaterialButton(
                onPressed: () async{
                  bool ans = isSame(_passwordController.text,_confirmPassword.text);

                 try{

                     await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _emailController.text.trim(),
                          password: _passwordController.text.trim());

                  } on FirebaseAuthException catch (e){
                   showDialog(context: context,
                       builder: (context){
                         return AlertDialog(
                           actions: [
                             TextButton(onPressed: (){
                               Navigator.of(context).pop();
                             },
                                 child:Text("OK")),
                           ],
                           content: Text("${e.message.toString()}",
                           textAlign: TextAlign.center,
                           style: GoogleFonts.lato(
                             fontWeight: FontWeight.bold,
                           )),
                           backgroundColor: Colors.white,
                         );
                       });



                  }






                    //SignUp(_emailController.text.trim(), _passwordController.text.trim());



                  //Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                },
                height: 45,
                color: Colors.black,
                elevation: 12,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),

                padding: const EdgeInsets.symmetric(horizontal: 50,vertical:10 ),
                child: Text("Register",
                    style: GoogleFonts.lato(
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                        color: Colors.white
                    )),

              ),

              const SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account?"),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                  },
                      child: const Text("Login"))
                ],
              )





            ],
          ),
        ),
      ),
    );
  }
}
