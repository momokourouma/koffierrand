import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:monprojetfinal/model/Student.dart';

class DataBaseService{

final _useruid = FirebaseAuth.instance.currentUser?.uid;
final _usermail = FirebaseAuth.instance.currentUser?.email;
final _db = FirebaseFirestore.instance;




addStudent(Student student){
  _db.collection("students").doc(_useruid).set(student.toMap());
}


UploadDoc(String fileName,String? FilePath) async{
  final storage = FirebaseStorage.instance.ref();
  final image = storage.child("Documents");
  final imageRef = image.child('$_usermail/${fileName}');
  final pathfile = FilePath;
  final file = File(pathfile!);


  print(pathfile);
  await imageRef.putFile(file);
}


}