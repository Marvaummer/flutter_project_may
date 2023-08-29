//import 'package:auth_sqlflite/screens/login_signup3.dart';
import 'package:sqflite/sqflite.dart'as sql;

import 'package:flutter_project_may/storage/New_db/SQLHelper3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_may/storage/New_db/loginsignup3.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Login_Signup3(),
    );
  }
}