import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home:ListView4(),
  ));
}
class ListView4 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("ListView 4"),),
      body: ListView.custom(
        ///Way 1
        //   childrenDelegate: SliverChildListDelegate([Row(
        //     children: [
        //       Text("Hello"),
        //     ],
        //   ),Text("helloo"),Text("helloo"),Text("Hellooo")],
        //   )),
      ///Way 1.a
       childrenDelegate: SliverChildListDelegate(List.generate(10, (index) => Text(("Helloo"))),
    ),
      ),
        ///Way 2
        //childrenDelegate: SliverChildBuilderDelegate(childCount: 15,(context,index)=>
        //Center(child: Text("Helloo"))),
    //)
    );
  }
}
