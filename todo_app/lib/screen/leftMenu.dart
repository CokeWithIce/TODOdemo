import 'package:flutter/material.dart';
import './leftMenu4User.dart';
import './leftMenu4MainTree.dart';
import './leftMenu4SelfTree.dart';


class leftMenu extends StatefulWidget {
  @override
  _leftMenuState createState() => _leftMenuState();
}

class _leftMenuState extends State<leftMenu> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
//        leftMenu4User(),
//        leftMenu4MainTree(),
        DecoratedBox(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[300], width: 1.0)),
        ),
//        leftMenu4SelfTree(),
        Positioned(
          left:10,
          bottom: 10,
          child:Text('233'),
        )
      ],
    );
  }
}
