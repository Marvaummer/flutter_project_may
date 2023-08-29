import 'package:flutter/material.dart';
import 'FireBaseHelper.dart';
import 'firelogin.dart';

class HomeFire extends StatelessWidget {
  const HomeFire({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              FireHelper().signOut().then((value) {
                Navigator.of(context)
                    .push(MaterialPageRoute(
                    builder: (context) => LoginFire()));
              });
            },
            child: Text("Sign_Out")),
      ),
    );
  }
}