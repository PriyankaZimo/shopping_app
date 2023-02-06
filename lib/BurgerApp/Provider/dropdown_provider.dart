import 'package:flutter/cupertino.dart';

class DropDownProvider extends ChangeNotifier {
  late String selectedItem;
  List<String> items = ["Log Angeles","Angeles","Log","ewr"];
  List<String> get item =>items;

   String get selected=>selectedItem;
void setSelectItem(String s){
  selectedItem=s;
  notifyListeners();
}
}
