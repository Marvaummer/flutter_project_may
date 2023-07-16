import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.green),
    home: ListView3(),
    debugShowCheckedModeBanner: false,
  ));
}

class ListView3 extends StatelessWidget {

  var names = ["anu", "marvu", "sandru", "minnu", "nooru", "sahuu",
    "tinuu", "hibuu", "gayu", "anu", "marvu", "sandru", "minnu", "nooru",
    "sahuu", "tinuu", "hibuu", "gayu", "anu",
    "marvu"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListView builder"),),

      body: ListView.builder(itemCount:names.length,itemBuilder: (context,index){
        return Card(
          child: Text(names[index]),
          color: Colors.amber,

        );
      }),
        floatingActionButton: FloatingActionButton(onPressed: (){},
        child: Icon(Icons.message)),
    );
  }
}
