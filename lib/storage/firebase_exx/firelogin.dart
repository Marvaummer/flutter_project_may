import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_may/storage/firebase_exx/FireBaseHelper.dart';
import 'package:flutter_project_may/storage/firebase_exx/fireRegistration.dart';
import 'Homefire.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: LoginFire(),
  ));
}

class LoginFire extends StatefulWidget {
  @override
  State<LoginFire> createState() => _LoginFireState();
}

class _LoginFireState extends State<LoginFire> {
  final email = TextEditingController();
  final pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Firebase Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              controller: email,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Email'),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: pass,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Password'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  String username = email.text.trim();
                  String password = pass.text.trim();

                  FireHelper().signIn(email:username,pass:password).then((value) {
                    if(value == null){
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context)=>HomeFire()));
                    }else{
                      ScaffoldMessenger.of(context).
                      showSnackBar(SnackBar(content: Text(value)));
                    }
                  });
                },
                child: const Text("Login Here")),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => FireRegistration()));
                },
                child: const Text("Register Here")),
          ],
        ),
      ),
    );
  }
}