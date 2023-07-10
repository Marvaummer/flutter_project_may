
import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.green),
    home: ListView3(),
    debugShowCheckedModeBanner: false,
  ));
}
class ListView3 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
return Scaffold(
  appBar: AppBar(title: Text("List Seperator"),
  ),
  body: ListView.separated
    (itemBuilder: (c,index){
    return Card(color: Colors.amber,
      child: Text("hello"),
    );
  },
      separatorBuilder: (context,index){
    if(index % 5 ==0) {
    return Divider(color: Colors.red,);
    }
    return Text("");
      },
      itemCount: 10),
);
  }
}