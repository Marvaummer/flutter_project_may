
import 'package:flutter/material.dart';
import 'package:flutter_project_may/storage/hive2/database/hivedb.dart';
import 'package:flutter_project_may/storage/hive2/models/user_model.dart';
import 'package:flutter_project_may/storage/hive2/screens/Register.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

import '../../Home.dart';
import 'home.dart';
void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
  await Hive.openBox<User>("userData");


  runApp(GetMaterialApp(home: HiveLoginPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class HiveLoginPage extends StatelessWidget {
   HiveLoginPage({Key? key}) : super(key: key);
  final email=TextEditingController();
  final pass=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Using Hive"),),
      body: Padding(padding: EdgeInsets.all(10.0),
      child: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: email,
            decoration: InputDecoration(
              hintText: 'username'
            ),
          ),
          SizedBox(height: 20,),
          TextField(
            controller: pass,
            decoration: InputDecoration(
                hintText: 'password'
            ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: ()async{
            final userslist=await HiveDb.instance.getUser();
            checkUserExist(userslist);
          },
              child: Text("Login")),
          TextButton(onPressed: (){
            Get.to(HiveRegistration());
              }, child: Text("Not a User? Registration Here...")),
        ],
      ),
      ),
    ),
    );
  }

 Future <void> checkUserExist(List<User> userslist) async{
    final lemail=email.text.trim();
    final lpass = pass.text.trim();

    bool userFound=false;

    if(lemail !=''&& lpass !=''){
      await Future.forEach(userslist, (element) => (regUserFromHive){
        if(lemail == regUserFromHive.email && lpass == regUserFromHive.password){
          userFound=true;
        }else{
          userFound=false;
        }
      });
      if(userFound == true){
        Get.offAll(()=>HiveHome(email:lemail));//pop and push navigator pakaram
        Get.snackbar("success", "Login success $lemail",colorText: Colors.green);
      }else{
        Get.snackbar("Error", "No User Found!!!!!!",colorText: Colors.red);
      }
    }else{
      Get.snackbar("Error", "Field Must Not be Empty!!!!",colorText: Colors.red);
    }
 }
}
