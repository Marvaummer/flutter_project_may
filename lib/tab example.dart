import 'package:flutter/material.dart';
import 'package:flutter_project_may/login.dart';
import 'package:flutter_project_may/splash%20Screen.dart';

void main() {
  runApp(MaterialApp(
    home: TabbarEx(),
    debugShowCheckedModeBanner: false,
  ));
}

class TabbarEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            title: const Text("WhatsApp"),
            actions: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.camera_alt),
              )
            ],
            bottom: const TabBar(tabs: [
              Column(
                children: [
                  Icon(Icons.people),
                  Text("Community")
                ],
              ),
              Text("Chats"),
              Text("Status"),
              Text("Calls")
            ]),
          ),
          body: TabBarView(
            children: [
              Loginpage(),
              const Center(
                child: Text("Chat"),
              ),
              Center(
                child: Text("Status"),
              ),
              Center(child: Text("Call")),
            ],
          )),
    );
  }
}