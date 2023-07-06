import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//func({int? a,required int b,int c=10})
//widget - collection of class,eg:-color,size etc
void main(){  //to run a program
  runApp(     //to attach the widget tree to the vi
      MaterialApp(//default theme of out app(multiplatform support)
        debugShowCheckedModeBanner: false,//to remove debug badge
    home: Firstpage(), //initial screen of our app,(home must be a widget it may be stateless/statefull)
  ));
}

class Firstpage  extends StatelessWidget{ //stateless mean firstpage do not undergo any state change
  @override
  Widget build(BuildContext context) {    //to create a widget tree(build context-> to monitor the widgets in the widget tree)
   return Scaffold(
    // backgroundColor: Colors.teal,//to a single color to the entire screen
     // appBar: AppBar(
     //   //centerTitle: true, //set the appbar title to center of appbar
     //   title:Text(
     //     "hello",
     //     style: TextStyle(fontSize: 20,color: Colors.pinkAccent),),
     // ),

     body: Container(
       //color: Colors.blueGrey,//to se single color to the entire screen
       decoration:  const BoxDecoration(//to set a image as screen background
         gradient: LinearGradient(colors: [
           Colors.red,
           Colors.lightGreen,
           Colors.blue,
           Colors.blueGrey
         ],
           begin: Alignment.bottomRight,
           end: Alignment.topLeft//linear gradient

           //image:DecorationImage(
           //fit: BoxFit.fill,//to fit the image to the entire screen

              // image:AssetImage("assets/images/tree.jpg")


            //  image: NetworkImage(
          // "https://images.unsplash.com/photo-1505356822725-08ad25f3ffe4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8eWVsbG93fGVufDB8fDB8fHww&auto=format&fit=crop&w=600&q=60")

    )
      ),
       child: Center(

         child: Column( //for column childrens will place from top left to botton left
           mainAxisAlignment: MainAxisAlignment.center, //to move the children to center of column
           children: [
             //Icon(Icons.favorite,color: Colors.red,size: 40,),
             Image.asset("assets/icons/dog.png"),
             //Image.network("https://icons.iconarchive.com/icons/hopstarter/keriyo-emoticons/256/Smiley-love-icon.png"),
             Text("Happy Smiley",
              // style: TextStyle(fontSize: 40,color: Colors.brown),
               style: GoogleFonts.pacifico(fontSize: 50,color: Colors.brown),
             )
           ],
         ),
       ),
     ),

     ///multichild widget
     //body:Center(
     //   child: Column(
     //     children: [
     //       Icon(Icons.favorite,color: Colors.red,size: 40,),
     //       Text("My application",style: TextStyle(fontSize: 20),)
     //     ],
     //   ),
     // ),


     ///single child icon /text
       //body:Center(
       // child: Text
       // ("hello",style: TextStyle
       // (fontSize: 20,
       //   color: Colors.pinkAccent),)),

     // Center(child: Icon(Icons.lan,size: 130,color: Colors.green,)),
   );

  }
}


   
