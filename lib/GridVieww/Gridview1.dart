import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: GridView1(),
  ));
}
class GridView1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 80),
        //  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //    crossAxisCount: 3,
        //  crossAxisSpacing: 30,
        // mainAxisSpacing: 10,),
      children: List.generate(10, (index) => Card(child: Center(
        child: Image.asset("assets/icons/cat.png"),
      ),)),),
    );
  }
}

