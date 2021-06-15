class Event {
  int id;
  int fatherEventId;
  int createUserId;
  int realizeUserId;
  int step;
  String title;
  String desc;
  String createTime;
  String endTime;
  int importance;
  int userId;
  Event({this.id,this.fatherEventId,this.createUserId,this.realizeUserId,this.step,this.title,this.desc,this.createTime,this.endTime,this.importance,this.userId}) ;
  Event.formJson(Map<String,dynamic> json){
    this.id=json["id"];
    this.fatherEventId=json["fatherEventId"];
    this.createUserId=json["createUserId"];
    this.realizeUserId=json["realizeUserId"];
    this.step=json["step"];
    this.title=json["title"];
    this.desc=json["desc"];
    this.createTime=json["createTime"];
    this.endTime=json["endTime"];
    this.importance=json["importance"];
    this.userId=json["userId"];
  }
  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data=new Map<String, dynamic>();
    data['id']=this.id;
    data['fatherEventId']=this.fatherEventId;
    data['createUserId']=this.createUserId;
    data['realizeUserId']=this.realizeUserId;
    data['step']=this.step;
    data['title']=this.title;
    data['desc']=this.desc;
    data['createTime']=this.createTime;
    data['endTime']=this.endTime;
    data['importance']=this.importance;
    data['userId']=this.userId;
  }
}