import 'package:flutter/material.dart';
import '../../models/Tree.dart';
import '../../service/leftMenuService.dart';
import '../../handler/commData.dart';
class leftMenu4SelfTree extends StatefulWidget{
  @override
  _LM4STSate createState()=>_LM4STSate();
}
class _LM4STSate extends State<leftMenu4SelfTree>{
  List<Tree> selfList=new List<Tree>();

  @override
  void initState() {
    leftMenuService lms=new leftMenuService();
    selfList= lms.getSelfList();
    // TODO: implement initState
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        shrinkWrap:true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: selfList.length,
        itemBuilder: (context,index){
          return GestureDetector(
            onTap:(){Scaffold.of(context).showSnackBar(SnackBar(content: Text('ok'),));},
            child: Container(
              padding: const EdgeInsets.only(top:10,bottom:10),
              decoration: BoxDecoration(
              ),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left:11,right: 6),
                    child:Icon(commData.cd.iconsData[selfList[index].imageType],color: commData.cd.colorsData[selfList[index].imageColor],),
                  ),
                  Text(selfList[index].name),
                ],
              ),
            ),
          );
        }
    );
  }
}