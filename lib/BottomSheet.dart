import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//To  perform event of gestures we use gesture detector /inkwell
//runtime:picture longpress
void main(){
  runApp(MaterialApp(home: BottomSheet(),));
}
class BottomSheet extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(child: GestureDetector(
        onLongPress: (){
          showsheet(context);
        },
          child: Image.asset("assets/images/tree.jpg")),
      ),//no gestures in image
    );
  }

  void showsheet(BuildContext context) {
    showModalBottomSheet(context: context, builder: (context)
    {
      return Container(
        child: Column
          (

          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: FaIcon(FontAwesomeIcons.facebook,color: Colors.blue,),
             // leading: Icon(Icons.share),
              title: Text("Facebook"),
            ),
            ListTile(
             // leading: Icon(Icons.copy),
              leading: FaIcon(FontAwesomeIcons.whatsapp,color: Colors.green,),
              title: Text("whatsapp"),
            ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.twitter,color: Colors.blue,),
              // leading: Icon(Icons.share),
              title: Text("twitter"),
            ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.youtube,color: Colors.red,),
              // leading: Icon(Icons.share),
              title: Text("youtube"),
            ),
          ],
        ),
      );
    });
  }
}
