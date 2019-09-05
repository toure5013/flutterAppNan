import 'package:sqflite/sqflite.dart';
import 'dart:io';
import 'package:path/path.dart';




Database db;
class DatabaseCreator{

  static const todoTable = 'todo';
  static const id = 'id';
  static const name = 'name';
  static const info = 'info';
  static const isDeleted = 'isDeleted';

//Database logs
  static void databaseLog(String FunctionName, String sql, [List<Map<String, dynamic>> selectQueryResult, int insertAndUpdateQueryResult , List<dynamic> params]){
    print(FunctionName);
    print(sql);
    if(selectQueryResult != null){
      print(selectQueryResult);
    }else{
      print(insertAndUpdateQueryResult);
    }
  }


//Table creation
Future<void> createTodoTable (Database db) async{
   //List of column of todoTable
  final todoSql = '''CREATE TABLE $todoTable
  (
    $id INTEGER PRIMARY KEY,
    $name TEXT,
    $info TEXT,
    $isDeleted BIT NOT NULL

  ) ''';
  await db.execute(todoSql);
}


//Get Dtabase path
  Future<String> getDatabasePath(String dbName) async {
    final databasePath = await getDatabasesPath();
    final path = join(databasePath, dbName);

    //make sure the folder exists
    if (await Directory(dirname(path)).exists()) {
      //await deleteDatabase(path);
    } else {
      await Directory(dirname(path)).create(recursive: true);
    }
    return path;
  }


//Open the database
  Future<void> initDatabase() async {
    final path = await getDatabasePath('todo_db');
    db = await openDatabase(path, version: 1, onCreate: onCreate);
    print(db);
  }

//Create the database
  Future<void> onCreate(Database db, int version) async {
    await createTodoTable(db);
  }
}