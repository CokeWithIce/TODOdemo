import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Loading extends StatefulWidget{
  String loadUrl;
  Loading({Key key,this.loadUrl}):super(key:key);
  @override
  _LoadingState createState()=>_LoadingState();
}
class _LoadingState extends State<Loading>{
  @override
  initState(){
    _LoadingUrl();
    super.initState();
  }
  void _LoadingUrl()async{
    String _url=widget.loadUrl;

  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title:Text('加载中...')
      ),
      body: Center(
        child:Text('正在加载'),
      ),
    );
  }
}