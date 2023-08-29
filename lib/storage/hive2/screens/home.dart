import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HiveHome extends StatelessWidget {
 final String email;//build porath instance variable
 const HiveHome({super.key, required this.email});

  @override
  Widget build(BuildContext context) {//build ulil local  variable
    return Scaffold(
      appBar: AppBar(title: Text("WELCOME $email"),),
    );
  }
}
