import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:monprojetfinal/Information/Admission.dart';
import 'package:monprojetfinal/AirportPickup/AiportPickup.dart';
import 'package:monprojetfinal/Information/ContactApropos.dart';
import 'package:monprojetfinal/InscriptionDepots/DepotDoc.dart';
import 'package:monprojetfinal/InscriptionDepots/FileUpload.dart';
import 'package:monprojetfinal/InscriptionDepots/FileUploadMaster.dart';
import 'package:monprojetfinal/InscriptionDepots/PaymentValidation.dart';
import 'package:monprojetfinal/LoginPages/AuthVerify.dart';
import 'package:monprojetfinal/LoginPages/ForgotPassword.dart';
import 'package:monprojetfinal/ServicesPayment/PaymentChecked.dart';
import 'package:monprojetfinal/ServicesPayment/Paymentbeta.dart';
import 'package:monprojetfinal/TestingInterior.dart';
import 'package:monprojetfinal/TrouveMoiUnAppartment/HouseDetails.dart';
import 'package:monprojetfinal/Information/Infocontact.dart';
import 'package:monprojetfinal/LoginPages/LoginPage.dart';
import 'package:monprojetfinal/ClientNavbar/MyNav.dart';
import 'package:monprojetfinal/Information/PageInfo.dart';
import 'package:monprojetfinal/ServicesPayment/Payment.dart';
import 'package:monprojetfinal/Information/ProgrammeAcademique.dart';
import 'package:monprojetfinal/LoginPages/Register.dart';
import 'package:monprojetfinal/myclicp.dart';
import 'package:monprojetfinal/ServicesPayment/paymentform.dart';
import 'package:monprojetfinal/testingBadges.dart';
import 'package:monprojetfinal/testingStream.dart';
import 'InscriptionDepots/FileUploadBTS.dart';
import 'InscriptionDepots/PaymentRegister.dart';

import 'ServicesPayment/PaymentHouse.dart';
import 'TrouveMoiUnAppartment/FindMePlace.dart';
import 'firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,

  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: testingBadges(),
      //home: testingBadges(),
     home:AuthVerify(),
     //home:FindMePlace(),
      //home: TestingInterior(),
      //home: PaymentHouse(LogementId: "EcHVjdAPSJ7iDTjvA5uO"),


      /*child: ListView(
                        shrinkWrap: true,
                        children: snapshot.data!.docs.map((DocumentSnapshot document) {
                        Map<String, dynamic> data = document.data() as Map<String, dynamic>;
                        return ListTile(
                          title: Text("${data["imageUrl"][0]["downloadURL"]}"),
                          //subtitle: Text(data['price']),
                        );
                      }).toList(),
                    ), */
    );
  }
}


