import 'package:sqflite/sqflite.dart' as sql;

class SQLHelper {
  //create database
  // OpenDb - user defined method to create db
  static Future<sql.Database> OpenDb() async {
    return sql.openDatabase('contact', version: 1,
        onCreate: (sql.Database db, int version) async {
          await createTable(db);
        });
  }

  //create Table
  static Future<void> createTable(sql.Database db) async {
    await db.execute("""CREATE TABLE Addnewuser(
       id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
       name TEXT,
       email Text,
       password TEXT
      )""");
  }

  //create database
  static Future<sql.Database>openDb()async{
    return sql.openDatabase('datauser',version: 1,
        onCreate:(sql.Database db,int version)async{
          await createTable(db);
        });
  }

// insert data to database
  static Future<int> AddNewUser(String cname, String cemail,String cpassword) async {
    final db = await SQLHelper.OpenDb(); // to open database
    final data = {"name": cname, "email": cemail,"password":cpassword};
    final id = db.insert('user', data);
    return id;
  }

// read all the data from db
  static Future<List<Map<String,dynamic>>> readData() async{
    final db = await SQLHelper.OpenDb();
    return db.query("mycontacts",orderBy: 'id');// read all the datas by id
  }

// to upadate a single value
  static Future<int> updateContact(int? id, String name, String email,String password) async {
    final db = await SQLHelper.OpenDb();
    final udata = {'name':name,'email':email,'password':password};
    final result = await db.update("mycontacts", udata, where: "id=?",whereArgs: [id]);
    return result;

  }

  static Future<void> deleteData(int? id) async {
    final db = await SQLHelper.OpenDb();
    try {
      db.delete('mycontacts', where: "id=?", whereArgs: [id]);
    }catch(e){
      print(e);
    }
  }
}