
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';
import 'package:monprojetfinal/AdminNavbar/Home/Home.dart';

class AdminNav extends StatefulWidget {
  const AdminNav({Key? key}) : super(key: key);

  @override
  State<AdminNav> createState() => _AdminNavState();
}

class _AdminNavState extends State<AdminNav> {
  int _selectIndex = 0;


  List<Widget> _menu = [
    Home(),
    Center(child: Text("data")),
    Center(child: Text("data")),
    Center(child: Text("data")),

  ];

  void _tapIndex(int index){
    setState(() {
        _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _menu[_selectIndex],
      backgroundColor: HexColor("#2C3333"),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _tapIndex,
        currentIndex: _selectIndex,
        showUnselectedLabels: false,
        elevation: 30,
        items: [
          BottomNavigationBarItem(icon: Icon(Iconsax.home),label: "Home",backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Iconsax.alarm),label: "Demande",backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Iconsax.document_upload),label: "Ajout",backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Iconsax.setting),label: "Parametre",backgroundColor: Colors.black),

        ],
      ),
    );
  }
}
