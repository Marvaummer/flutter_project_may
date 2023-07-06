import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: RoWEx(),));
}
class RoWEx extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SizedBox(
          width: 100,
          height: 100,
          child: Row(
              children: [
                Icon(Icons.ac_unit_outlined,size: 20,),
                Icon(Icons.ac_unit_outlined,size: 20,),
                Icon(Icons.ac_unit_outlined,size: 20,),
                Icon(Icons.ac_unit_outlined,size: 20,),
                Icon(Icons.ac_unit_outlined,size: 20,),


              ]
          ),
        )
    );
  }
}