import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Expandedd()));
}

class Expandedd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("expanded"),
      ),
      body: Container(
        color: Colors.yellow,
        height: MediaQuery.of(context).size.height,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hello"),
            Icon(Icons.ac_unit),
            Expanded(child: Image.asset("assets/images/greenary.jpg")),
            Expanded(child: Image.asset("assets/images/greenary.jpg"))
          ],
        ),
      ),
    );
  }
}