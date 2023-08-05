
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
      //endDrawer: ,//Right side Drawer
      drawer:Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.yellow),

        child: Drawer(//leftside drawer
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/cat2.jpg")
                  )
                ),
                accountName: Text("chippuCat",style: TextStyle(fontSize: 20,color: Colors.black),),
                accountEmail:Text("chippu@gmail.com",style: TextStyle(fontSize: 15,color: Colors.black),),
              currentAccountPicture: Image.asset("assets/images/cat.jpg"),
              otherAccountsPictures: [Image.asset("assets/images/tree.jpg")],
              ),

              ListTile(
                leading: Icon(Icons.home),
                title: Text("home"),
              ),

              ListTile(
                leading: Icon(Icons.settings),
                title: Text("settings"),
              ),

              ListTile(
                leading: Icon(Icons.menu),
                title: Text("menu"),
              )

            ],

          ),
        ),
      ) ,
    );
  }
}
