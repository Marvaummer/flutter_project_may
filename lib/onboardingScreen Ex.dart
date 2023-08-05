import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_may/login.dart';
import 'package:flutter_project_may/splash%20Screen.dart';
import 'package:introduction_screen/introduction_screen.dart';

void main(){
  runApp(MaterialApp(home: OnBoardingEx(),));
}

class OnBoardingEx extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

PageDecoration pageDecoration=PageDecoration(
  titleTextStyle: TextStyle(color: Colors.purple,
      fontStyle:FontStyle.italic,
  fontSize: 30,
  fontWeight: FontWeight.bold,
  ),
  bodyTextStyle: TextStyle(fontSize: 18,color: Colors.red),
  imagePadding: EdgeInsets.all(20),
  boxDecoration: BoxDecoration(
    gradient: LinearGradient(colors: [
      Colors.green,
      Colors.yellow,
      Colors.deepOrange,
      Colors.redAccent,
    ],
    begin: Alignment.topRight,end: Alignment.bottomLeft)
  )

);


    return IntroductionScreen(
      pages: [
        PageViewModel(
          decoration: pageDecoration,
          image: Align(
            alignment: Alignment.topCenter,
            child: Image.asset("assets/images/cat.jpg"),

          ),
          title: "First page",
          body: "With microsoft 365 for families,you can create,organise"

        ),
        PageViewModel(
          decoration: pageDecoration,
            image: Align(
          alignment: Alignment.topCenter,
          child: Image.asset("assets/images/cat.jpg"),

        ),
            title: "First page",
            body: "With microsoft 365 for families,you can create,organise"
        ),
        PageViewModel(
          decoration: PageDecoration(titleTextStyle: TextStyle(color: Colors.purple,fontSize: 30,
          fontWeight: FontWeight.bold),
          bodyTextStyle: TextStyle(fontSize: 18,color: Colors.pink),
          imagePadding: EdgeInsets.all(20),
          ),
            image: Align(
              alignment: Alignment.topCenter,
              child: Image.asset("assets/images/cat.jpg"),

            ),
            title: "First page",
            body: "With microsoft 365 for families,you can create,organise"

        ),

      ],
      onDone: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Loginpage())),
      onSkip: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Splashpage())),
      showSkipButton: true,
      skip: Text("Skip"),
      next: Text("Next"),
      done: Text("Continue"),
      dotsDecorator: DotsDecorator(
        size: Size(10, 10),
        color: Colors.black,
        activeSize: Size(25, 10),
        activeColor: Colors.red,
        activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25)))
      ),
    );

  }
}
