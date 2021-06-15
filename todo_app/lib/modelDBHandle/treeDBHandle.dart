import 'dart:async';
import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import '../models/Tree.dart';
import 'package:sqflite/sqflite.dart';
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
  initDB() async {
    Directory documentsDirectory=await getApplicationDocumentsDirectory();
    String path=join(documentsDirectory.path,'Tree.db');
    return await openDatabase(path,version:1,onOpen:(db){},onCreate:(Database db,int version)async {
      await db.execute('CREATE TABLE Tree('
          'id INTEGER PRIMARY KEY,'
          'name TEXT,'
          'staticTree INT,'
          'type INT'
          'imageType TEXT'
          'imageColor TEXT'
          'usedWidgetName TEXT'
          ')');
    });
  }
  insertTree(Tree newTree) async{
    final db=await database;
    var table=await db.rawQuery('SELECT MAX(id)+1 as id FROM Tree');
    int id =table.first['id'];
    var raw =await db.rawInsert('INSERT Into Tree (id,name,staticTree,type,imageType,imageColor,usedWidgetName)'
        'VALUES(?,?,?,?)',
        [id,newTree.name, newTree.staticTree,newTree.type,newTree.imageType,newTree.imageColor,newTree.usedWidgetName]);
    return raw;
  }
  updateTR(Tree tree)async{
    final db=await database;
    Tree newTree=Tree(
        id:tree.id,
        name:tree.name,
        type:tree.type,
        imageType:tree.imageType,
        imageColor:tree.imageColor,
        usedWidgetName:tree.usedWidgetName,
    );
    var res=await db.update('Tree', newTree.toJson(),where:'id=?',whereArgs:[tree.id]);
    return res;
  }
  updateTree(Tree newTree)async{
    final db=await database;
    final res=await db.update('Tree', newTree.toJson(),where: 'id=?',whereArgs: [newTree.id]);
    return res;
  }
  getTree(int id)async{
    final db=await database;
    var res=await db.query('Tree',where:'id=?',whereArgs: [id]);
    return res.isNotEmpty?Tree.fromJson(res.first):null;
  }
  Future<List<Tree>> getAllTree()async{
    final db =await database;
    var res=await db.query('Tree');
    List<Tree> list=res.isNotEmpty?res.map((c)=>Tree.fromJson(c)).toList():[];
    return list;
  }
  Future<List<Tree>> getAllMainTree(int type)async{
    final db =await database;
    var res=await db.query('Tree',where:'type=?',whereArgs: [type]);
    List<Tree> list=res.isNotEmpty?res.map((c)=>Tree.fromJson(c)).toList():[];
    return list;
  }
  Future<List<Tree>> getAllSelfTree(int type)async{
    final db =await database;
    var res=await db.query('Tree',where:'type=?',whereArgs: [type]);
    List<Tree> list=res.isNotEmpty?res.map((c)=>Tree.fromJson(c)).toList():[];
    return list;
  }
  deleteTree (int id)async{
    final db=await database;
    return db.delete('Tree',where: 'id=?',whereArgs: [id]);
  }
  deleteAll()async{
    final db=await database;
    db.rawDelete('Delete * from Tree');
  }
}