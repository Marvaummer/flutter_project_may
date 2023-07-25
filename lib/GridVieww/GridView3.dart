import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: GridView3(),
  ));
}

class GridView3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 70,
        children: List.generate(
            15,
                (index) => Container(
                decoration:BoxDecoration(
                  color: Colors.orange,),
                child: Column(
                  children: [
                    Image.asset("assets/icons/Smiley-love-icon.png",height: 20,width: 40,),
                    const Text(
                      "Smilie",
                      style: TextStyle(color: Colors.yellow),)
                  ],
                ))),
      ),
    );
  }
}