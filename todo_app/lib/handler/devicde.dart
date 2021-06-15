//获取驱动设备的相关数据
import 'dart:io';
import 'package:device_info/device_info.dart';
import 'package:flutter/services.dart';
class PlatformInfo{
  bool judgePlat(){
    if(!Platform.isAndroid){
      return false;
    }
    return true;
  }
  void endSys(){
    SystemChannels.platform.invokeMethod('SystemNavigator.pop');
  }
  Future getDeviceInfo() async{
    DeviceInfoPlugin deviceInfo=new DeviceInfoPlugin();
    if(judgePlat()){
      return deviceInfo;
    }else {
      return false;
    }
  }
}