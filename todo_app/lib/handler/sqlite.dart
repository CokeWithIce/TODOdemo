import 'dart:async';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqlite_api.dart';

class DBProvider{
  DBProvider._();
  static final DBProvider db =DBProvider._();
  Database _database;
  Future<Database> get database async{
    if(_database!=null){
      return _database;
    }
    _database=await initDB();
    return _database;
  }
  initDB()async{

  }
}