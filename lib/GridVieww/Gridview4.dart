import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Gridview4(),
  debugShowCheckedModeBanner: false,),
  );
}
class Gridview4 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
    ///Way1
    //       childrenDelegate: SliverChildListDelegate([Card(child: Text("1"),
    //       ),
    //         Card(child: Text("2"),)
    // ]
    // ),
        ///way2
        //childrenDelegate: SliverChildListDelegate(List.generate(6, (index) =>Card(child: Text("1"),))),
        ///way3
    childrenDelegate:
    SliverChildBuilderDelegate(
    childCount: 20,
    (context, index) => const Padding(
    padding: EdgeInsets.all(8.0),
    child: Card(child: Center(child: Text("Hello"))),
    )),),
    );
  }
}
