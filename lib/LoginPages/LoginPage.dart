
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lottie/lottie.dart';
import 'package:monprojetfinal/AppLogic/Backend/Authfunction.dart';
import 'package:monprojetfinal/AppLogic/Functions/Appfunctions.dart';
import 'package:monprojetfinal/ClientNavbar/MyNav.dart';
import 'package:monprojetfinal/LoginPages/ForgotPassword.dart';
import 'package:monprojetfinal/LoginPages/Register.dart';
import 'package:monprojetfinal/Service/DatabaseService.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  //DataBaseService service = DataBaseService();

  // TextController
  final _emailCOntroller = TextEditingController();
  final _passwordController = TextEditingController();

  //Form Validation
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose(){
    super.dispose();
    _emailCOntroller.dispose();
    _passwordController.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#ECF9FF"),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Form(
              key: _formKey,
            child: Column(
              children: [

                SafeArea(
                  child: Center(
                      child: Lottie.asset("assets/student.json",width: 100)
                  ),
                ),

                SizedBox(height: 40,),

                Text("LOGIN",
                style: GoogleFonts.lato(
                  fontSize: 40,
                  color: Colors.black,


                ),),

                SizedBox(height: 50,),

                Padding(
                 padding: EdgeInsets.all(20),
                 child: TextFormField(
                   //validator: validateEmail,




                   controller: _emailCOntroller,
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
                  padding: const EdgeInsets.only(right: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>PasswordForget()));
                      },
                          child: const Text("Forgot password ?",
                          style: TextStyle(
                            color: Colors.black,

                          ),))
                    ],
                  ),
                ),
                const SizedBox(height: 20,),

                MaterialButton(
                  onPressed: () async {
                    if(_formKey.currentState!.validate()) {
                      try {
                        await FirebaseAuth.instance.signInWithEmailAndPassword(
                            email: _emailCOntroller.text.trim(),
                            password: _passwordController.text.trim());
                        // Next page
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>MyNav()));


                      } on FirebaseAuthException catch (e) {
                        if(e.code == "user-not-found") {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  backgroundColor: Colors.white,
                                  content: Text("Utilisateur n'existe pas",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.lato(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  actions: [
                                    TextButton(onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                        child: Text("OK",
                                          style: GoogleFonts.lato(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),))
                                  ],
                                );
                              });
                        }else if(e.code == "wrong-password"){
                          {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    backgroundColor: Colors.white,
                                    content: Text("Mot de passe errone",
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.lato(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    actions: [
                                      TextButton(onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                          child: Text("OK",
                                            style: GoogleFonts.lato(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),))
                                    ],
                                  );
                                });

                          }

                        }
                      }
                    }




                  }, //here is the clossing
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Register()));
                    },
                        child: const Text("Register Now"))
                  ],
                )



              ],
            ),
          ),
        ),
      ),
    );
  }
}
