import 'package:flutter/cupertino.dart';

class SliderProvider extends ChangeNotifier{
double firstSliderValue = 20;
double secSliderValue = 20;
double thirdSliderValue = 20;
var select=true;
 selectText(bool val){
   select=val;
   notifyListeners();

 }

}