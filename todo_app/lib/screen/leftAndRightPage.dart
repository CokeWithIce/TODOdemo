import 'package:flutter/material.dart';
import './Navigation/leftMenu.dart';
class leftAndRight extends StatefulWidget{
  @override
  _leftAndRightState createState()=>_leftAndRightState();
}
class _leftAndRightState extends State<leftAndRight> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: <Widget>[
        Container(
            height: MediaQuery.of(context).size.height,
            width: 150,
            decoration:BoxDecoration(
            )  ,
            child:Container(
              child: leftMenu(),
            )
        ),
        Container(
            height:MediaQuery.of(context).size.height,
            width:MediaQuery.of(context).size.width-150,
            decoration:BoxDecoration(
              color:Colors.lightGreenAccent.shade200,
            )  ,
            child:Container(

            )
        ),
      ],
    );
  }
}