import 'package:flutter/material.dart';

class TestProvider extends ChangeNotifier{
  bool punch=false;
 var textVal="";
  isPunch(){
    if(punch==false){
      punch=true;
      textVal="punch on";
      print("wswaq");
      notifyListeners();
    }else{
      punch=false;
      textVal="punch off";
      print("tswaq");
      notifyListeners();
    }
  }
}