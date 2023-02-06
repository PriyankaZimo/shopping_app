import 'package:flutter/material.dart';

class UnAvailProvider extends ChangeNotifier{

  String selectBranch="Item 1";

  bool selection=true;
  setSelect(select) {
    selection = select;
    notifyListeners();
  }
  var branch = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  setBranch(value) {
    selectBranch = value;
    notifyListeners();
  }


  setButton(int i, bool val) {
    unaAvail[i]['select'] = val;
    notifyListeners();
    print(val);
  }
  List unaAvail = [
    {"txt": "Sunday", "select": false},
    {"txt": "Monday", "select": false},
    {"txt": "Tuesday", "select": false},
    {"txt": "Wednesday", "select": false},
    {"txt": "Thursday", 'select': false}
  ];
}