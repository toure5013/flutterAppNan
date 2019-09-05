import 'package:sqflite/sqflite.dart';

dynamic getDatabasesPath() async{

  var db = await openDatabase('my_db.db');

}