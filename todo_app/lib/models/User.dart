class User {
  int id;
  String age;
  String desc;
  String name;
  String nickName;
  int sex;


  User({this.id,this.age,this.desc,this.name,this.nickName,this.sex});
  User.fromJson(Map<String,dynamic>json){
    this.id=json["Iidd"];
    this.age=json["age"];
    this.desc=json["desc"];
    this.name=json["name"];
    this.nickName=json["nickName"];
    this.sex=json["sex"];

  }
  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data=new Map<String,dynamic>();
    data['id']=this.id;
    data['age']=this.age;
    data['desc']=this.desc;
    data['name']=this.name;
    data['nickName']=this.nickName;
    data['sex']=this.sex;
  }
}