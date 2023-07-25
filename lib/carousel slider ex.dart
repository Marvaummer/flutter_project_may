import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Cslider(),debugShowCheckedModeBanner: false,));
}
class Cslider extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: CarouselSlider(items: List.generate(4, (index) =>
           //Card(color: Colors.green,
           //child: Center(child: Icon(Icons.ac_unit,size: 40,),),)
       Container(
         decoration: BoxDecoration(
         image: DecorationImage(
             //image: NetworkImage("https://images.unsplash.com/photo-1689571171604-888a8ed23110?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80")
image: AssetImage("assets/images/avacado.jpg")
         )
       ),
       )

      ),
          options: CarouselOptions(height: 600,aspectRatio: 16/9,
      viewportFraction: .6,initialPage: 0,enableInfiniteScroll: true,autoPlay: false,autoPlayInterval: Duration(seconds: 4),
          autoPlayCurve: Curves.elasticIn,
      enlargeCenterPage: true,
      enlargeFactor: .3,
      scrollDirection: Axis.horizontal)
      )
    );
  }
}
