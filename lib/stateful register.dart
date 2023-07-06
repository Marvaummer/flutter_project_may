
import 'package:flutter/material.dart.';
import 'package:flutter_project_may/login.dart';

class Registerationpage extends StatefulWidget {


  @override
  State<Registerationpage> createState() => _RegisterationpageState();
}

class _RegisterationpageState extends State<Registerationpage> {
  //to validate the entire form
  final formkey =GlobalKey<FormState>();
  var confirmpass;
  bool showpwd=true;
  bool showpassword=true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateful Registration"),
      ),


      body:Form(
        key: formkey,
          child: Column(
            children: [
              const Text("Registation page",
                style: TextStyle(fontSize: 30),
              ),

              Padding(padding: EdgeInsets.all(8.0),
                  child:TextFormField(
                    textInputAction: TextInputAction.next,
                    //obscureText: showpwd,
                    //obscuringCharacter: "*",
                    decoration: InputDecoration(



                        border: OutlineInputBorder(),
                        hintText: "username"),
                    validator:  (email){
                    if(email!.isEmpty || !email.contains('@')){
                      return"Enter a validate email/field must not empty";
                    }
                      else{
                        return null;
                    }

                    },
                  )
              ),

              Padding(padding: EdgeInsets.all(8.0),
              child:TextFormField(
                obscureText: showpassword,
                obscuringCharacter: "*",
                decoration:  InputDecoration(

                    suffixIcon: IconButton(
                        onPressed: (){
                          setState(() {
                            if(showpassword){
                              showpassword=false;

                            }else{
                              showpassword=true;
                            }
                          });
                        }, icon: Icon(showpassword==true
                        ? Icons.visibility:Icons.visibility_off_sharp)),

                    border: OutlineInputBorder(),
                    hintText: "password"),
                validator: (password){
                  confirmpass=password;
                  if(password!.isEmpty || password.length<6){

                  return"password length should be greater than 6/must not be empty";
              }else {
                    return null;
                  }
                  },
              ),
              ),
              Padding(padding: EdgeInsets.all(8.0),
                child:TextFormField(
                  obscureText: showpwd,
                  obscuringCharacter: "*",
                  decoration:  InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: (){
                            setState(() {
                              if(showpwd){
                                showpwd=false;

                              }else{
                                showpwd=true;
                              }
                            });
                          }, icon: Icon(showpwd==true?
                      Icons.visibility:Icons.visibility_off_sharp)),
                      border: OutlineInputBorder(),
                      hintText: "confirmpassword"),
                  validator: (cpassword){
                    if(cpassword!=confirmpass|| cpassword!.isEmpty){

                      return"password missmatch /empty";
                    }else {
                      return null;
                    }
                  },
                ),
              ),
             // TextFormField(),
              ElevatedButton(onPressed: (){
                var isValid =formkey.currentState!.validate();
                if(isValid == true){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                  Loginpage()));
                }else{

                  }
              },
                  child: Text("Registration page"))
            ],
          )),
    );
  }
}
