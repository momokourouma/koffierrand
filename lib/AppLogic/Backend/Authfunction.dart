import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


//Function for signing  In
Future SignIn(String email, String password) async {
  await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email, password: password
  );
}

//Function for signing up

Future SignUp(String email,String password) async {
  await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
}

// Verify password
bool isSame(String typepassword, String typeConfirmPassword){
  if(typepassword == typeConfirmPassword){
    return true;
  }
  else{
    return false;
  }
}

//showing dialog on error

void showError(BuildContext context,String erroMessage){
  showDialog(
      context: context,
      builder: (context){
    return AlertDialog(
            content: Text(erroMessage),

    );
      });
}