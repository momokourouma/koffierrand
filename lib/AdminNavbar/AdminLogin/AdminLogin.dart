
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lottie/lottie.dart';
import 'package:monprojetfinal/AdminNavbar/AdminLogin/AdminRegister.dart';

import '../../ClientNavbar/MyNav.dart';
import '../../LoginPages/Register.dart';

class AdminLogin extends StatefulWidget {
  const AdminLogin({Key? key}) : super(key: key);

  @override
  State<AdminLogin> createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
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
                    child: Lottie.asset("assets/AdminLoginAssets/admin.json",width: 300)
                ),
              ),

              SizedBox(height: 40,),

              Text("ADMINISTRATEUR",
                style: GoogleFonts.lato(
                  fontSize: 40,
                  color: Colors.black,


                ),),

              SizedBox(height: 30,),

              Padding(
                padding: EdgeInsets.all(20),
                child: TextFormField(
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
                      prefixIcon: const Icon(Iconsax.user,color: Colors.black, size: 17,),
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
                padding: const EdgeInsets.only(right: 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(onPressed: (){},
                        child: const Text("Forgot password ?",
                          style: TextStyle(
                            color: Colors.black,

                          ),))
                  ],
                ),
              ),
              const SizedBox(height: 20,),

              MaterialButton(
                onPressed: (){

                  //Navigator.push(context, MaterialPageRoute(builder: (context)=>MyNav()));
                },
                height: 45,
                color: Colors.black,
                elevation: 12,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),

                padding: const EdgeInsets.symmetric(horizontal: 50,vertical:10 ),
                child: Text("Login",
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
                  const Text("Don\"t have an account?"),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> AdminRegister()));
                  },
                      child: const Text("Register Now"))
                ],
              )



            ],
          ),
        ),
      ),
    );
  }
}
