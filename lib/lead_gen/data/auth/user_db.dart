import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class UserDBHelper{
  static Database? _db;
  static const String id = 'id';
  static const String name = 'name';
  static const String phone = 'phone';
  static const String email = 'email';
  static const String businessName = 'businessName';
  static const String tableName = 'lead_table';
  static const String databaseName = 'lead_gen.db';

  Future<Database?> get database async{
    if(_db!=null){
      return _db;
    }else{
      _db = await initDatabase();
      return _db;
    }
  }

  initDatabase() async{
    Directory rootDirectory = await getApplicationDocumentsDirectory();
    String path = join(rootDirectory.path,databaseName);
    final db = await openDatabase(path,version: 1,onCreate: onCreate);
    return db;
  }

  onCreate(Database db, int version) async{
    await db.execute(
      "CREATE TABLE $tableName($id INTEGER,$name TEXT,$email TEXT,$phone TEXT,$businessName TEXT)");
  }

  Future<int?>saveUserData(data) async{
    final db = await database;

    Map<String,dynamic> userData = {
      id: data['id'],
      name: data['name'],
      phone: data['phone'],
      email: data['email'],
      businessName: data['business_name']
    };

    final result = await db?.insert(tableName, userData);

    return result;
  }

  Future<int?> deleteUser() async{
    final db = await database;
    try{
      final result = await db?.rawDelete('DELETE FROM $tableName');

      return result;
    }catch(e){
      debugPrint(e.toString());
    }
    return null;
  }

  Future<List<Map<String,dynamic>>?> getUserData() async{
    final db = await database;

    final data = await db?.rawQuery('SELECT * FROM $tableName');

    return data?.toList();
  }
}