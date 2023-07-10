import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_may/Home.dart';

void main(){
  runApp(MaterialApp(home: Listview()));
}


class Listview extends StatelessWidget {

var names = ["anu", "marvu", "sandru", "minnu", "nooru", "sahuu",
  "tinuu", "hibuu", "gayu", "anu", "marvu", "sandru", "minnu", "nooru",
  "sahuu", "tinuu", "hibuu", "gayu", "anu",
  "marvu"];
var images = ["assets/images/apple.jpg",
"assets/images/banana.jpg",
  "assets/images/grapes.jpg",
  "assets/images/pineapple.jpg",
  "assets/images/orange.jpg",
  "assets/images/apple.jpg",
  "assets/images/banana.jpg",
  "assets/images/grapes.jpg",
  "assets/images/pineapple.jpg",
  "assets/images/orange.jpg",
  "assets/images/apple.jpg",
  "assets/images/banana.jpg",
  "assets/images/grapes.jpg",
  "assets/images/pineapple.jpg",
  "assets/images/orange.jpg",
  "assets/images/apple.jpg",
  "assets/images/banana.jpg",
  "assets/images/grapes.jpg",
  "assets/images/pineapple.jpg",
  "assets/images/orange.jpg"];
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: Text("listview"),
    ),
    body: ListView(
      children: List.generate(20, (index) => Card(     //list.generator are another way of creating list without using[]
        color: Colors.blue,
        child: ListTile(
         // leading: Image.asset("assets/icons/pineapple.jpg"),
          leading:Icon(Icons.person),
          title: Text("My name"),
          subtitle: Text("hello"),
          trailing: Text("11:30"),
        ),
      )),
    ),
  );
  }
}
