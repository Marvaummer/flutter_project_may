//import 'package:flutter/cupertino.dart';]

import 'package:flutter/material.dart';
//import 'package:flutter_project_may/registration.dart';
import 'package:flutter_project_may/stateful%20register.dart';
import 'Home.dart';

void main(){
  runApp(MaterialApp(
  home: Loginpage(),
debugShowCheckedModeBanner: false,
  ));
}

class Loginpage extends StatelessWidget {
  // Loginpage({ super.key});
String username="admin@123";
String password="abc123";

//for fetching

final uname = TextEditingController();
final pass = TextEditingController();



  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar:AppBar(title: Text("Login Page"),),
     body: Column(
       children: [
         Image.asset("assets/icons/dog.png",height: 100,width: 100,),
         Padding(
           padding: const EdgeInsets.all(12.0),
           child: TextField(
             controller: uname,
             decoration: InputDecoration(
                 border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(30)
                 ),


             hintText:"username",
             helperText: "username must be an email",
             labelText: "username",
             prefixIcon: const Icon(Icons.person)
             ),

           ),
         ),


         Padding(
           padding: const EdgeInsets.only(left: 12,right: 12,bottom: 12),
           child: TextField(
             controller: pass,
             obscureText: true,
             obscuringCharacter: "*",
             decoration: InputDecoration(
                 border:OutlineInputBorder(
                   borderRadius: BorderRadius.circular(30)
                 ),
                   hintText:"password",
                 helperText: "username must be an email",
               labelText: "password",
               prefixIcon: const Icon(Icons.visibility_off_sharp),
               suffixIcon: Icon(Icons.visibility)
                  ),
           ),
         ),



       ElevatedButton(
           onPressed: (){

         if(uname.text != "" && pass.text != "") {
           if (uname.text == username && pass.text == password) {
             Navigator.of(context).push(MaterialPageRoute
               (builder: (context) => Homepage()));
           } else {
             ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
               content: Text("Email/password are incorrect"),
               backgroundColor: Colors.red,));
           }
         }else{
           ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
             content: Text("field must not be empty"),
             backgroundColor: Colors.red,));
         }
         },
           child:const Text("Login")),
         TextButton(
             onPressed: (){
           Navigator.of(context).push(MaterialPageRoute(
               builder: (context)=>Registerationpage()));
         },
             child:const Text("Not a user!!!!!Register Here..."))
       ],
     ),
   );
  }
}
