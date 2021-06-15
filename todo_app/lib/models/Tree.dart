class Tree {
  int id;
// 名字
  String name;
//  主要的树（1）还是自建的树（2）
  int staticTree;
//  类型有几种，
  int type;
//  文字前面的图片类型。
  String imageType;
//  图片的颜色。
  String imageColor;
//  使用的右边组件的名称。
  String usedWidgetName;
  Tree({this.id,this.name,this.staticTree,this.type,this.imageType,this.imageColor,this.usedWidgetName});
  Tree.fromJson(Map<String,dynamic> json){
    this.id=json['id'];
    this.name=json['name'];
    this.staticTree=json['staticTree'];
    this.type=json['type'];
    this.type=json['imageType'];
    this.type=json['imageColor'];
    this.type=json['usedWidgetName'];
  }
  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data=new Map<String, dynamic>();
    data['id']=this.id;
    data['name']=this.name;
    data['staticTree']=this.staticTree;
    data['type']=this.type;
    data['imageType']=this.imageType;
    data['imageColor']=this.imageColor;
    data['usedWidgetName']=this.usedWidgetName;
  }
}