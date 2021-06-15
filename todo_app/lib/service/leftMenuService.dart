import '../models/Tree.dart';
import '../modelDBHandle/treeDBHandle.dart';
class leftMenuService {
  /*leftMenuService._();
  static final leftMenuService lms=leftMenuService._();*/
  List<Tree> getMainList(){
    List<Tree> reList=[
      new Tree(id:1,name:"重要事件",staticTree:1,type:1,imageType:"star",imageColor:"redAccent",usedWidgetName: "importEvent"),
      new Tree(id:2,name:"已计划日程",staticTree:2,type:2,imageType:"date_range",imageColor:"black",usedWidgetName: "plannedEvent"),
      new Tree(id:3,name:"分配给我",staticTree:3,type:3,imageType:"perm_identity",imageColor:"lightGreenAccent",usedWidgetName: "assignedEvent"),
      new Tree(id:4,name:"任务",staticTree:4,type:4,imageType:"home",imageColor:"lightBlueAccent",usedWidgetName: "allEvent"),
    ];
    DBProvider.db.getAllMainTree(1).then((List<Tree> list){
      if(list.length>0){
        reList=list;
      }else {
        /*for (int i = 0; i < reList.length; i++) {
          this.insertTree(reList[i]);
        }*/
      }
        return reList;
      }).catchError((){
      return reList;
    });
    return reList;
  }
  void insertTree(Tree tree){
    DBProvider.db.insertTree(tree);
  }
  List<Tree> getSelfList(){
    List<Tree> reList=new List<Tree>();
    DBProvider.db.getAllSelfTree(2).then((List<Tree> list){
      reList=list;
      return reList;
    }).catchError((){
      return reList;
    }).whenComplete((){
      return new List<Tree>();
    });
    return reList;
  }
}