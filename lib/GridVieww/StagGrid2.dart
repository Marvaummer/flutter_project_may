///Card

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_may/GridVieww/My%20widget%20using%20flutter%20refractoring.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
void main(){
  runApp(MaterialApp(home: StagGrid(),));
}
class StagGrid extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Staggered Grid"),),
      body:
      SingleChildScrollView(
        child: StaggeredGrid.count(crossAxisCount: 3,
          //crossAxisSpacing: 8,mainAxisSpacing: 8,

          children:[
            StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 3,
              child: Mywidget(label: Text("Hello"), onpress: (){},bgColor: Colors.red,image: Image.asset("assets/icons/Smiley-love-icon.png"),),
            ),

            StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 3,
                child: Card(
                  child: Center(child: Text("1"),),color: Colors.yellow,)
            ),


            StaggeredGridTile.count(crossAxisCellCount: 3, mainAxisCellCount: 2,
              child: Card(child: Center(child: Text("2"),),color: Colors.blue,)
            ),

            StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 2,
              child: Card(child: Center(child: Text("3"),),color: Colors.green)
            ),

            StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 2,
                child: Card(
                  child: Center(child: Text("1"),),color: Colors.pink,)
            ),

          ],),
      ),
    );
  }
}
