//singlton class
//factory widget
//single instance
//only factory constructors return type,constructors not return type
import 'package:flutter_project_may/storage/hive2/models/user_model.dart';
import 'package:hive/hive.dart';

class HiveDb {
  HiveDb._internal(); //private named constructors
  static HiveDb instance = HiveDb._internal();

  factory HiveDb(){
    //HiveDb.instance
    return instance;
  }

  Future <List<User>> getUser() async {
    final db = await Hive.openBox<User>("userData");
    return db.values.toList();
  }

 Future <void> addUser(User user)async {
    final db=await Hive.openBox<User>("userData");
    db.put(user.id, user);

  }
}
