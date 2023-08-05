import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: DrawerEx(),));
}
class DrawerEx extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Drawer"),
      ),
    drawer: Drawer(
      child: Container(
        child: ListTile(leading:  Text("vgfhvjhn",),
      ),
    ),
    ),
    );
  }
}
