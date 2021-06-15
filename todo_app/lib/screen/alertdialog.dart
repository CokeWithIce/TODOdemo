import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../handler/devicde.dart';
class alertDialog extends StatefulWidget {
  List<String> lists;
  bool closeSys;

  alertDialog({Key key, List<String> lists,bool closeSys}) :super(key: key);

  @override
  _alertDialogHandler createState() => _alertDialogHandler();
}

class _alertDialogHandler extends State<alertDialog> {
  List<String> _list;
  bool _closeSys;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AlertDialog(
      title: new Text('标题'),
      content: new SingleChildScrollView(
        child: Container(
          child: new ListView.builder(
            itemCount: _list.length,
            itemBuilder: (context,index){
              final String item=_list[index];
              return new Center(
                child: Text(item),
              );
            },
          ),
        ),
      ),
      actions: <Widget>[
        new FlatButton(
          child: new Text('确定'),
          onPressed: () {
            if(_closeSys){
              PlatformInfo platformInfo=new PlatformInfo();
              platformInfo.endSys();
            }
            Navigator.of(context).pop();
          },
        ),
      ],);
  }

  @override
  void initState() {
    // TODO: implement initState
    this._list = widget.lists;
    this._closeSys = widget.closeSys;
    super.initState();
  }
}