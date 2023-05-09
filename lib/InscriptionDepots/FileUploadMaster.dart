
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottie/lottie.dart';

import 'PaymentRegister.dart';
class FileUploadMaster extends StatefulWidget {
  const FileUploadMaster({Key? key}) : super(key: key);

  @override
  State<FileUploadMaster> createState() => _FileUploadMasterState();
}

class _FileUploadMasterState extends State<FileUploadMaster> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#19A7CE"),
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
                    color: Colors.black,
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
                    GestureDetector(
                      onTap: ()async{
                        FilePickerResult? result = await FilePicker.platform.pickFiles();

                        if(result != null){
                          PlatformFile file  = result.files.first;
                          setState(() {
                            var filename = file.extension!;
                          });
                        }
                        else{
                          return null;
                        }
                      },

                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:  [

                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                //istap ? Icon(FontAwesomeIcons.plus, color: Colors.blue,) :
                                //    Icon(FontAwesomeIcons.minus,color: Colors.blue,),
                                Text("hello",style: GoogleFonts.lato(
                                  color: Colors.white,
                                ),),
                              ],
                            )

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          FontAwesomeIcons.plus,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        FontAwesomeIcons.plus,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:  [
                            Icon(
                              FontAwesomeIcons.plus,
                              color: Colors.white,
                            )
                          ],
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
                    GestureDetector(
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              FontAwesomeIcons.plus,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            MaterialButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> PaymentRegister()));
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
