
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestingInterior extends StatefulWidget {
  const TestingInterior({Key? key}) : super(key: key);

  @override
  State<TestingInterior> createState() => _TestingInteriorState();
}

class _TestingInteriorState extends State<TestingInterior> {

  Stream<DocumentSnapshot<Map<String, dynamic>>> fetchDataById(String id)  {
      return  FirebaseFirestore.instance.collection("Logement").doc(id).snapshots();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Center(
                child: StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
                  stream: fetchDataById("EcHVjdAPSJ7iDTjvA5uO"),
                  builder:(BuildContext context, AsyncSnapshot<DocumentSnapshot<Map<String, dynamic>>> snapshot){

                    if (snapshot.hasError) {
                      return Text('Error: ${snapshot.error}');
                    }
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Text('Loading...');
                    }
                    List urls = [];
                    var documents = snapshot.data!.data();
                    var fieldvalue = documents!["interior"];
                    for(var x in fieldvalue ){
                      urls.add(x["downloadURL"]);
                    }

                    print("${urls.length} field lenght");

                    if (!snapshot.hasData || !snapshot.data!.exists) {
                      return Text('Document does not exist');
                    }
                    return ListView.builder(
                        itemCount: urls.length,
                        itemBuilder: (BuildContext context,int index){
                          DocumentSnapshot document = snapshot.data!;
                          Map<String, dynamic> data = document.data() as Map<String, dynamic>;

                            return Column(
                              children: [
                                Image(image: NetworkImage("${data["interior"][index]["downloadURL"]}"))



                              /*  Center(
                                  child: Image(image: NetworkImage(
                                      "${data["interior"][]["downloadURL"]}")),
                                ),*/
                              ],
                            );






                        });


                  },
                )
              )),
        ],
      ),
    );
  }
}
