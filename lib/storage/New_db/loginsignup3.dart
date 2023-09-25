// import 'package:auth_sqlflite/screens/login.dart';
// import 'package:auth_sqlflite/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_may/storage/New_db/Signup3.dart';
import 'package:flutter_project_may/storage/New_db/login3.dart';
void main(){
  runApp(MaterialApp(home:Login_Signup3()));
}
class Login_Signup3 extends StatefulWidget {
  const Login_Signup3({Key? key}) : super(key: key);

  @override
  State<Login_Signup3> createState() => _Login_Signup3State();
}

class _Login_Signup3State extends State<Login_Signup3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 80.0),
              child: Text("Hello There!",style: TextStyle(fontSize: 40,color:Colors.purple,fontWeight: FontWeight.bold),),
            ),
            const Padding(

              padding: EdgeInsets.all(25.0),
              child: Text(
                "Automatic identity verification which enable you to verify your identity",textAlign: TextAlign.center,style: TextStyle(color: Colors.black),),
            ),
            Image.network('https://img.freepik.com/free-vector/sign-up-concept-illustration_114360-7875.jpg?w=740&t=st=1693665218~exp=1693665818~hmac=055cc52616af4c1f0afd50da2d4181f60b5665936655df11384a7b880d5d809a'),


            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blueAccent.shade700),
                    minimumSize: MaterialStateProperty.all(Size(330, 50)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Login3()));
                  }, child: Text("Login",style: TextStyle(color: Colors.white),)),
            ),
            SizedBox(height: 30,),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.pink),
                    minimumSize: MaterialStateProperty.all(Size(330, 50)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),

                        )
                    )
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Signup_Form3()));
                }, child: Text("Sign Up",style: TextStyle(color: Colors.white),)),
          ],
        ),
      ),
    );
  }
}