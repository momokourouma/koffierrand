import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:monprojetfinal/model/Logement.dart';
import 'package:monprojetfinal/model/Student.dart';

class DataBaseService{

final _useruid = FirebaseAuth.instance.currentUser?.uid;
final _usermail = FirebaseAuth.instance.currentUser?.email;
final _db = FirebaseFirestore.instance;




addStudent(Student student) async{
   await _db.collection("students").doc(_useruid).set(student.toMap());
}

addNomDocument(Student student) async{
   await _db.collection("students").doc(_useruid).update(student.StoreNomDoc());
}


UploadDoc(String fileName,String? FilePath) async{
  final storage =  FirebaseStorage.instance.ref();
  final image = storage.child("Documents");
  final imageRef = image.child('$_usermail/${fileName}');
  final pathfile = FilePath;
  final file = File(pathfile!);


  print(pathfile);
  await imageRef.putFile(file);
}

  Future<String> getFileUrl(String filename) async{
   final url =  await FirebaseStorage.instance.ref().child("Documents").child('$_usermail')
      .child('$filename')
       .getDownloadURL();
   return url;
}

AiportPickup( Student student) async{
  await _db.collection("students").doc(_useruid).update(student.AiportPickup());
}

Future<List> FetchHouseData() async{
  QuerySnapshot data = await _db.collection("Logement").get();
  final alldata = data.docs.map((doc) => doc.data()).toList();
  return alldata;
}

Future<List> getUrl() async{
  List finalurl =[];
  List downloadURL = [];
  final ref = await FirebaseFirestore.instance.collection('Logement').get();
  List listdata =  ref.docs.toList();

  var url =  listdata;
  for(var x in url){
    finalurl.add(x["imageUrl"][0]);
  }

  var test = finalurl.asMap();
  test.forEach((key, value) {
    downloadURL.add(value["downloadURL"]);
  });


  print(downloadURL);


  return downloadURL;
}

Future<List> getLogmentID() async{
  List idLogement =[];
  var collection = await FirebaseFirestore.instance.collection("Logement").get();
  for(var data in collection.docs){
    idLogement.add(data.id);
  }
 // print(idLogement);
 // print(idLogement.runtimeType);
  return idLogement;


}

Future<DocumentSnapshot<Map<String, dynamic>>> getElementbyId(String id) async{

  var collection = await FirebaseFirestore.instance.collection("Logement").doc(id).get();
  return collection;
}

Future<DocumentSnapshot<Map<String, dynamic>>> getPaymentState(String id) async{
  var collection = await FirebaseFirestore.instance.collection("students").doc(id).get();
  return collection;
}

Payment( Student student) async{
  await _db.collection("students").doc(_useruid).update(student.Paymentfees());
}

Logementfees(Logement logement,String id) async{
  await _db.collection("Logement").doc(id).update(logement.Paymentbuilding());
}

houseReservation(Student student) async{
  await _db.collection("students").doc(_useruid).update(student.HouseRe());
}

Future<DocumentSnapshot<Map<String, dynamic>>> getStudentId(String id) async{

  var collection = await FirebaseFirestore.instance.collection("students").doc(id).get();
  return collection;
}

}