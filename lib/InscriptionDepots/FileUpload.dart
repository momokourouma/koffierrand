import 'dart:io';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottie/lottie.dart';
import 'package:monprojetfinal/Service/DatabaseService.dart';

import '../model/Student.dart';
import 'PaymentRegister.dart';

class FileUpload extends StatefulWidget {
  const FileUpload({Key? key}) : super(key: key);

  @override
  State<FileUpload> createState() => _FileUploadState();
}

class _FileUploadState extends State<FileUpload> {

   FilePickerResult? result;
   List<FilePickerResult> myfiles = [];

   DataBaseService service = DataBaseService();




  String filename1= "";
  String filename2= "";
  String filename3= "";
  String filename4= "";
  String filename5= "";
  String filename6= "";
  bool istap = true;

  void control(){
    setState(() {
      istap = !istap;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#2C3333"),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            Lottie.asset("assets/upload.json"),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Text("Cliquez pour soumettre vos documents",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  )),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Column(
                  children: [

                    Container(
                      padding: EdgeInsets.only(left: 20),
                      child: Text("Extrait de naissance",
                      style: GoogleFonts.lato(
                        fontSize: 15,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      )),
                    ),
                    SizedBox(height: 5,),
                    GestureDetector(
                    onTap: ()async{
                         result = await FilePicker.platform.pickFiles();

                        if(result != null){
                          PlatformFile file  = result!.files.first;
                          myfiles?.add(result!);
                         setState(() {
                           filename1 = result!.files.first.name!;
                         });
                        }
                        else{
                          return;
                        }
                      },

                      child: Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Container(
                          height: 100,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white.withOpacity(0.4)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:  [

                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  //istap ? Icon(FontAwesomeIcons.plus, color: Colors.blue,) :
                                  //    Icon(FontAwesomeIcons.minus,color: Colors.blue,),
                                  Container(
                                    height: 100,
                                    width: 130,
                                    padding: EdgeInsets.only(top: 10),
                                    child: Text("${filename1}",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.lato(
                                      color: Colors.white,
                                    ),),
                                  ),
                                ],
                              )

                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 30,
                ),

                Column(
                  children: [

                    Text("Une photo d’identité",
                        style: GoogleFonts.lato(
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        )),
                    SizedBox(height: 5,),
                    GestureDetector(
                      onTap: ()async{
                        FilePickerResult? result = await FilePicker.platform.pickFiles();

                        if(result != null){
                          PlatformFile file  = result.files.first;
                          myfiles?.add(result!);
                          setState(() {
                            filename2 = file.name!;
                          });
                        }
                        else{
                          return null;
                        }
                      },

                      child: Container(
                        height: 100,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white.withOpacity(0.4)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:  [

                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                //istap ? Icon(FontAwesomeIcons.plus, color: Colors.blue,) :
                                //    Icon(FontAwesomeIcons.minus,color: Colors.blue,),
                                Container(
                                  height: 100,
                                  width: 130,
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text("${filename2}",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.lato(
                                      color: Colors.white,
                                    ),),
                                ),
                              ],
                            )

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
           Row(
              children: [
                Column(
                  children: [

                    Container(
                      height: 60,
                      width: 180,
                      padding: EdgeInsets.only(left: 20),

                      child: Text("Photocopie d’une pièce d'identité en cours de validité",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lato(
                        fontSize: 15,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      )),
                    ),
                    SizedBox(height: 5,),
                    GestureDetector(
                    onTap: ()async{
                        FilePickerResult? result = await FilePicker.platform.pickFiles();

                        if(result != null){
                          PlatformFile file  = result.files.first;
                          myfiles!.add(result);
                         setState(() {
                           filename3 = file.name!;
                         });
                        }
                        else{
                          return null;
                        }
                      },

                      child: Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Container(
                          height: 100,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white.withOpacity(0.4)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:  [

                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  //istap ? Icon(FontAwesomeIcons.plus, color: Colors.blue,) :
                                  //    Icon(FontAwesomeIcons.minus,color: Colors.blue,),
                                  Container(
                                    height: 100,
                                    width: 130,
                                    padding: EdgeInsets.only(top: 10),
                                    child: Text("${filename3}",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.lato(
                                        color: Colors.white,
                                      ),),
                                  ),
                                ],
                              )

                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),

                Column(
                  children: [

                    Container(
                      height: 60,
                      width: 180,


                      child: Text("Relevé de notes du baccalauréat ou titre obtenu en équivalence",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.lato(
                            fontSize: 15,
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                          )),
                    ),
                    SizedBox(height: 5,),
                    GestureDetector(
                      onTap: ()async{
                        FilePickerResult? result = await FilePicker.platform.pickFiles();

                        if(result != null){
                          PlatformFile file  = result.files.first;
                          myfiles!.add(result);
                          setState(() {
                            filename4 = file.name!;
                          });
                        }
                        else{
                          return null;
                        }
                      },

                      child: Container(
                        height: 100,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white.withOpacity(0.4)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:  [

                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                //istap ? Icon(FontAwesomeIcons.plus, color: Colors.blue,) :
                                //    Icon(FontAwesomeIcons.minus,color: Colors.blue,),
                                Container(
                                  height: 100,
                                  width: 130,
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text("${filename4}",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.lato(
                                      color: Colors.white,
                                    ),),
                                ),
                              ],
                            )

                          ],
                        ),
                      ),
                    ),
                  ],
                ),


              ],
            ),


            SizedBox(height: 20,),

            // last line

            Padding(
              padding: const EdgeInsets.only(left: 100),
              child: Row(
                children: [
                  Column(
                    children: [

                      Container(
                        height: 60,
                        width: 180,
                        padding: EdgeInsets.only(left: 20),
                        child: Text("Diplôme du Baccalauréat ou titre obtenu en équivalence",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.lato(
                              fontSize: 15,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            )),
                      ),
                      SizedBox(height: 5,),
                      GestureDetector(
                        onTap: ()async{
                          FilePickerResult? result = await FilePicker.platform.pickFiles();

                          if(result != null){
                            String filename = result.files.first.name;
                            myfiles!.add(result);
                            print("hee is");




                            setState(() {
                              filename5 = filename;
                            });
                          }
                          else{
                            return null;
                          }
                        },

                        child: Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Container(
                            height: 100,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white.withOpacity(0.4)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:  [

                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [


                                    //istap ? Icon(FontAwesomeIcons.plus, color: Colors.blue,) :
                                    //    Icon(FontAwesomeIcons.minus,color: Colors.blue,),
                                    Container(
                                      height: 100,
                                      width: 130,
                                      padding: EdgeInsets.only(top: 10),
                                      child: Text(filename5,
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.lato(
                                          color: Colors.white,
                                        ),),
                                    ),
                                  ],
                                )

                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),




                ],
              ),
            ),


            const SizedBox(
              height: 30,
            ),



            MaterialButton(onPressed: () async{

              List<String>? url = [];
              List<String>? urlR = [];


            /*  try{
                for(var files in myfiles.toSet().toList()){
                   url.add(files.files.first.name);
                }
                for(var urls in url.toSet().toList()){
                  var urlLink = await service.getFileUrl(urls);
                  urlR.add(urlLink);
                }
                print(urlR);



              }on FirebaseException catch(e){
                print(e.message);
              } */









             /* Student newStudent = Student();
              newStudent.NomDocument = momo;
              service.addNomDocument(newStudent); */




             if(myfiles!.isEmpty || myfiles!.length < 4){
               showDialog(context: context,
                   builder: (contex){
                     return AlertDialog(
                       content: Text("Pour Proceder il faut postez vos doc"),
                       backgroundColor: Colors.white,
                     );
                   });
             }else{
               try{
                 for (var p in myfiles!.toSet().toList()){
                   service.UploadDoc(p.files.first.name, p.files.first.path);
                 }
                 for(var files in myfiles.toSet().toList()){
                   url.add(files.files.first.name);
                 }
                 for(var urls in url.toSet().toList()){
                   var urlLink = await service.getFileUrl(urls);
                   urlR.add(urlLink);
                 }




                 Student newStudent = Student();
                 newStudent.NomDocument = urlR.toSet().toList();
                 service.addNomDocument(newStudent);


               } on FirebaseException catch(e){
                 print(e.message);
               }

               Navigator.push(context, MaterialPageRoute(builder: (context)=> PaymentRegister()));
             }



              





                //
            },
              color: Colors.black,
              height: 45,
              elevation: 20,
              padding: EdgeInsets.symmetric(horizontal: 60),
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text("Suivant",
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
