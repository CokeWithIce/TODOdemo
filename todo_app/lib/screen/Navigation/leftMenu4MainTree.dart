import 'package:flutter/material.dart';
import '../../models/Tree.dart';
import '../../service/leftMenuService.dart';
import '../../handler/commData.dart';
class leftMenu4MainTree extends StatefulWidget{
  @override
  _leftMenu4TreeState createState()=>_leftMenu4TreeState();
}
class _leftMenu4TreeState extends State<leftMenu4MainTree>{
  List<Tree> mainList=new List<Tree>();

  @override
  void initState() {
    leftMenuService lms=new leftMenuService();
    // TODO: implement initState
    mainList= lms.getMainList();

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        shrinkWrap:true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: mainList.length,
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
                    child:Icon(commData.cd.iconsData[mainList[index].imageType],color: commData.cd.colorsData[mainList[index].imageColor],),
                  ),
                  Text(mainList[index].name),
                ],
              ),
            ),
          );
        }
    );
  }
}