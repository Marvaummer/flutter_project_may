import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login.dart';

void main(){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Splashpage(),
      ));
}

class Splashpage  extends StatefulWidget{
  @override
  State<Splashpage> createState() => _SplashpageState();//create and initial state for the screen
}

class _SplashpageState extends State<Splashpage> {//initial state of splashpage
  //there are two functionalities in state class
  //initState(){} and setState(){}
  //initState(){} -> what will happen when app or screen is loaded initially
  // setState(){} -> what change will occur on a widget or screen

  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
     Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
      return Loginpage();
     }));
    });

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Container(
        decoration:  const BoxDecoration(
            image:DecorationImage(
              fit: BoxFit.fill,
                image:AssetImage("assets/images/tree.jpg")


            )
        ),
        child: Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Icon(Icons.favorite,color: Colors.red,size: 40,),
              Image.asset("assets/icons/dog.png",
              height: 200,
                  width: 200,
              ),

              Text("Happy Smiley",
                style: GoogleFonts.pacifico(
                    fontSize: 50,
                    color: Colors.brown),
              )
            ],
          ),
        ),
      ),

    );

  }
}



