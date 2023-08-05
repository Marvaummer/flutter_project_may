import 'package:flutter/material.dart';
import 'package:flutter_project_may/storage/login%20using%20shared%20preference.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(){
  runApp(MaterialApp(home: RegistrationPage(),
  debugShowCheckedModeBanner: false,));
}
class RegistrationPage extends StatefulWidget {
  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final name = TextEditingController();
  final uname = TextEditingController();
  final pwd = TextEditingController();
  final phone=TextEditingController();
  late SharedPreferences preferences;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: name,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Name"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: uname,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "UserName"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: pwd,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Password"),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: phone,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Phonenumber"),
              ),
            ),

            ElevatedButton(onPressed: () =>storeddataandgotologin(), child: const Text("Register Here"))
          ],
        ),
      ),
    );
  }
  void storeddataandgotologin() async{
    String personname=name.text;
    String username=uname.text;
    String password=pwd.text;
    String phonenumber=phone.text;

    preferences=await SharedPreferences.getInstance()!;
    preferences.setString("name", personname);
    preferences.setString("uname", username);
    preferences.setString("pwd", password);
    preferences.setString("phome", phonenumber);
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginPageShared()));
  }
}