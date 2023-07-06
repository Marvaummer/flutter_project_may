

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    theme:ThemeData(primarySwatch: Colors.blue),
      home: Homepage(),
  debugShowCheckedModeBanner: false,));
}

class Homepage  extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MyHome")),
      body:ListView(

          children:[
             Center(
                child: Text("Fruits",style:GoogleFonts.delaGothicOne(
              fontSize: 30,color: Colors.lightBlue))),
            Card(
           child: ListTile(
                leading: Image.asset("assets/images/apple.jpg"),
              title: Text("Apple"),
              subtitle: Row(
                children: [
                  Text("\$200"),
                ],
              ),
              trailing: Icon(Icons.shopping_cart),
            ),
            ),
            Card(
           child: ListTile(
              leading: Image.asset("assets/icons/banana3.png"),
              title: Text("Banana"),
              subtitle: Text("\$300"),
              trailing: Icon(Icons.shopping_cart),
            ),
            ),
           Card(
    child:ListTile(
      leading:Image.asset("assets/images/orange.jpg"),
      title: Text("Orange"),
      subtitle: Text("\$300"),
      trailing: Icon(Icons.shopping_cart),
    ),
           ),

    Card(
    child:ListTile(
      leading:  Image.asset("assets/images/pineapple.jpg"),
      title: Text("Pineapple"),
      subtitle: Text("\$300"),
      trailing:Row(
    mainAxisSize: MainAxisSize.min,
    children: [Icon(Icons.favorite),
    SizedBox(width: 20),
      Icon(Icons.shopping_cart),
    ],
    )

    ),
    ),
    Card(
      color: Colors.green,
    elevation: 5,
    shadowColor: Colors.black,
    child:ListTile(
      leading:  CircleAvatar(backgroundImage: AssetImage("assets/images/grapes.jpg")),//background immage-provider ahn then Assetimmage/network image kodukkanm
      title: Text("Grapes"),
      subtitle: Text("\$300"),
      trailing: IconButton(onPressed: () {},
    icon: const Icon(Icons.shopping_cart)),
    ),
    ),

        ],
      ),
    );
  }
}

