import 'package:flutter/material.dart';
import 'package:flutter_project_may/Listview/Listview seperator.dart';
import 'package:flutter_project_may/passing%20data%20between%20screens/product%20details.dart';
import 'dummydata.dart';

void main() {
  runApp(MaterialApp(
    home: ProductList(),
    debugShowCheckedModeBanner: false,
    // named routes used in Navigator.pushNamed()
    routes: {
      "details": (context) => ProductDetails(),
      // "cart": (context) => ListView3(),
    },
  ));
}

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Products"),
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: products.map((e) => ListTile(
          leading: Image.asset(e["image"]),
          title: Text(e["name"]),
          onTap: ()=> gotodetails(context,e['id']),
          // onTap: ()=> Navigator.pushNamed(context, 'details',arguments: e['id']),
        )).toList(),
      ),
    );
  }

  void gotodetails(BuildContext context, id) {   // id = e['id'] - id of item that we tapped
    Navigator.pushNamed(context, "details", arguments: id);
  }
}
// e        -> each single map in the list
// list.map -> iterate all the map in the list as
// toList   -> used to convert the map values to List
//arguments -> data to be passed to the next screen