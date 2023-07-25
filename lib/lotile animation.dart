import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main(){
  runApp(MaterialApp(home: LotileAnim(),));
}
class LotileAnim extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: //Lottie.network("https://lottie.host/63f0a7fc-ef82-4b2e-9a53-70a9bc4c017d/0GfI3kN4PD.json")
      Lottie.asset("assets/animation/penguin.json"),
      ),
    );
  }
}
