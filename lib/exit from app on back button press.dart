

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: samplehome(),
    debugShowCheckedModeBanner: false,
  ));
}
class samplehome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  Future<bool> showAlert() async{  //showAlert return widget  comes
    return await showDialog(context: context, builder:(context){
      return AlertDialog(title: Text("Confirm exit!!!!"),
      content: Text("Do you want to exit"),
      actions: [
        TextButton(onPressed: (){
          Navigator.of(context).pop(true);
        }, child: Text("no")),
        TextButton(onPressed: (){
          Navigator.of(context).pop(false);
        }, child: Text("Yes")),
        TextButton(onPressed: (){
          Navigator.of(context).pop(false);
        }, child: Text("Cancel")),
      ],);
    });
  }

    return WillPopScope(child: Scaffold(
      body:Center(child: Text("Press back button to exit")),),
     onWillPop:showAlert );
  }


}
