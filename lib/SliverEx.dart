import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: SliverEx(),));
}
class SliverEx extends StatelessWidget {
// Sliver - custom scrollable area,eg:instagram

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [SliverAppBar(
          floating: false,
          pinned: true,
          title: Text("Sliver AppBar"),
          bottom: AppBar(
            elevation: 0,
            title: Container(width:double.infinity,
            height: 40,
            color: Colors.white,
            child: TextField(decoration: InputDecoration(
              hintText: "search Here",
              prefixIcon: Icon(Icons.search),
              suffixIcon: Icon(Icons.camera_alt),

            ),),),
          ),

        ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            childCount: 30,(context,index)=>Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)
            ),
            height: 80,
            child: Text(style: TextStyle(fontSize: 30),"user $index",),
          )
          )),
        ],
      ),
    );
  }
}
//wrap with safearea-scroll avumbo cut avvan irikkan, phn features app not effect