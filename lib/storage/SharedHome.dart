import 'package:flutter/material.dart';
import 'package:flutter_project_may/storage/login%20using%20shared%20preference.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main(){
  runApp(MaterialApp(home: SharedHome(),));
}
class SharedHome extends StatefulWidget {
  @override
  State<SharedHome> createState() => _SharedHomeState();
}
class _SharedHomeState extends State<SharedHome> {
  late SharedPreferences preferences;
  late String username;

  @override
  void initState() {
    fetchdata();
    super.initState();
  }
  // to read data from shared preference
  void fetchdata() async{
    preferences = await SharedPreferences.getInstance();
    setState(() {
      username = preferences.getString('uname')!;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shared Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome $username",
              style: const TextStyle(fontSize: 30),
            ),
            ElevatedButton(onPressed: () {
              preferences.setBool('newuser', true);
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginPageShared()));
            }, child: Text("Log Out")),
          ],
        ),
      ),
    );
  }


}