import 'package:flutter/material.dart';

class commData{
  commData._();
  static final commData cd=commData._();
  Map<String,IconData> iconsData={
    'star':Icons.star,
    'date_range':Icons.date_range,
    'perm_identity':Icons.perm_identity,
    'home':Icons.home,
  };
  Map<String,Color> colorsData={
    'redAccent':Colors.redAccent,
    'black':Colors.black,
    'lightGreenAccent':Colors.lightGreenAccent,
    'lightBlueAccent':Colors.lightBlueAccent,
  };
}