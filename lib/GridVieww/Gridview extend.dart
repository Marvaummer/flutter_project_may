
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Gridviewextend(),
  debugShowCheckedModeBanner: false,));
}
class Gridviewextend extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.extent(maxCrossAxisExtent: 70,
         // children: [],
          children:List.generate(10, (index) => Card(child: Center(child: Icon(Icons.account_balance),
          ),
          )),
        )
    );
  }
}
