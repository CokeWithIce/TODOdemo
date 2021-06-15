import 'package:flutter/material.dart';

class leftMenu4User extends StatefulWidget{
  @override
  _leftMenu4UserState createState()=>_leftMenu4UserState();
}
class _leftMenu4UserState extends State<leftMenu4User> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 5, right: 5,bottom:10),
      child: Row(
        children: <Widget>[
          Container(
              margin: const EdgeInsets.only(left:1),
              child:Row(
                children: <Widget>[
                  ClipOval(
                    child: Container(
                      padding:const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color:Colors.black12,
                      ),
                      child: Icon(Icons.person),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left:3,right:5),
                    child: Text('用户1'),
                  )
                ],
              )
          ),
          Container(
              child:Column(

              )
          )
        ],
      ),
    );
  }
}