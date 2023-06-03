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
 late String? HouseReservation;
 late List<String>? NomDocument;



  Student({
   this.Matricule = null,
   this.PickAirport = null,
   this.Payment = false,
   this.HouseReservation = null,
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

 Map<String,dynamic> AiportPickup(){
  return{
   "AirportPickup" : PickAirport,
  };
 }

 Map<String,dynamic> Paymentfees(){
  return{
   "Payment" : Payment,
  };
 }

 Map<String,dynamic> HouseRe(){
  return{
   "HouseReservation" : HouseReservation,
  };
 }

}