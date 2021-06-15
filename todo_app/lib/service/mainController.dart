import 'package:flutter/material.dart';
import '../models/User.dart';
import '../handler/devicde.dart';

class mainController{
  mainController();
  void init(){
      PlatformInfo platformInfo=new PlatformInfo();
      if(platformInfo==false){
        platformInfo.endSys();
      }

  }
}