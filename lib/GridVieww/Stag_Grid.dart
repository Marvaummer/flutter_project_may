///constructor
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
          crossAxisSpacing: 8,mainAxisSpacing: 8,
        children: [
          StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 2,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(fit: BoxFit.fill,
                      //  image: NetworkImage("https://5.imimg.com/data5/XN/BC/MY-22135420/wall-wallpaper-1000x1000.jpg"),
                        image: AssetImage("assets/images/apple.jpg")
                    ),
                ),
              ),
          ),
          StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 2,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(fit: BoxFit.fill,
                 // image: NetworkImage("https://5.imimg.com/data5/XN/BC/MY-22135420/wall-wallpaper-1000x1000.jpg"),
                    image: AssetImage("assets/images/apple.jpg")
                ),
              ),
            ),
          ),
          StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 1,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(fit: BoxFit.fill,
                 // image: NetworkImage("https://5.imimg.com/data5/XN/BC/MY-22135420/wall-wallpaper-1000x1000.jpg"),
                  image: AssetImage("assets/images/apple.jpg"),
                ),
              ),
            ),
          ),
          StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 1,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(fit: BoxFit.fill,
                 // image: NetworkImage("https://5.imimg.com/data5/XN/BC/MY-22135420/wall-wallpaper-1000x1000.jpg"),
                    image: AssetImage("assets/images/apple.jpg")
                ),
              ),
            ),
          ),
          StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 3,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(fit: BoxFit.fill,//contain,cover
                 // image: NetworkImage("https://5.imimg.com/data5/XN/BC/MY-22135420/wall-wallpaper-1000x1000.jpg"),
                    image: AssetImage("assets/images/apple.jpg")
                ),
              ),
            ),
          ),
          StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 3,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(fit: BoxFit.fill,
                 // image: NetworkImage("https://5.imimg.com/data5/XN/BC/MY-22135420/wall-wallpaper-1000x1000.jpg"),
                    image: AssetImage("assets/images/apple.jpg")
                ),
              ),
            ),
          ),

        ],),
      ),
    );
  }
}
