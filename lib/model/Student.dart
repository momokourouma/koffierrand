import 'package:file_picker/file_picker.dart';

class Student {

 late String? FirstName;
 late String? LastName;
 late String? DateOfBirth;
 late String? Nationality;
 late String? Matricule;
 late Map<String,dynamic>? PickAirport;
 late String? Department;
  late bool? Payment;
 late bool? HouseReservation;
 late List<String>? NomDocument;

   Student.Doc(){}

  Student({
   this.Matricule = null,
   this.PickAirport = null,
   this.Payment = false,
   this.HouseReservation = false,
   this.Nationality,
   this.FirstName,
  this.LastName,

   this.DateOfBirth,
  this.Department,
 });



 Map<String,dynamic> toMap(){
  return {
   "Matricule" : null ,
    "FirstName" : FirstName,
    "LastName" : LastName,
    "DateOfBirth" : DateOfBirth,
    "Department" : Department,
    "AirportPickup" : PickAirport,
    "Country" : Nationality,
    "HouseReservation" : HouseReservation,
    "Payement" : Payment,
   // "DepotDoc" : NomDocument,


  };
 }

 Map<String,dynamic> StoreNomDoc(){
  return{
   "DepotDoc" : NomDocument
  };
 }

}