//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_may/Home.dart';
import 'package:flutter_project_may/Listview/ListView.Custom.dart';
import 'package:flutter_project_may/Listview/Listview%20seperator.dart';
import 'package:flutter_project_may/login.dart';
void main(){
  runApp(MaterialApp(
    home: BottomNavBar(),
    debugShowCheckedModeBanner: false,
  ));
}
class BottomNavBar  extends StatefulWidget {
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int index=0;
  var Screen=[
    ListView4(),
    ListView2(),
    Loginpage(),
    Homepage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BottomNavBar"),),
      bottomNavigationBar:BottomNavigationBar(
        onTap: (tapindex){
          setState(() {
            index=tapindex;
          });
          },
        backgroundColor: Colors.green,
          currentIndex: index,
        selectedItemColor: Colors.yellow,
         // type: BottomNavigationBarType.fixed
          type: BottomNavigationBarType.shifting ,//slideshow
          items: const[
        BottomNavigationBarItem(
      backgroundColor: Colors.green,//applicable for bottom navigateion bar type shifting
      icon: Icon(Icons.contacts_sharp),
          label:"Contact"),
        BottomNavigationBarItem(
          backgroundColor: Colors.red,
            icon: Icon(Icons.search),
            label:"Search"),
        BottomNavigationBarItem(
          backgroundColor: Colors.yellow,
            icon: Icon(Icons.add_box_rounded),
            label:"View"),
        BottomNavigationBarItem(
            backgroundColor: Colors.amber,
            icon: Icon(Icons.home),
            label:"Home")
      ] ) ,
      body: Screen[index],
    );
  }
}
