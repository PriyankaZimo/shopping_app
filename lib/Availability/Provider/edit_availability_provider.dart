import 'package:flutter/cupertino.dart';

class EditAvailProvider extends ChangeNotifier{


  bool selection=true;
  setEditAvail(select, bool val) {
    selection = select;
    notifyListeners();
  }
  List editAvail = [
    {"txt": "Sunday", "select": false},
    {"txt": "Monday", "select": false},
    {"txt": "Tuesday", "select": false},
    {"txt": "Wednesday", "select": false},
    {"txt": "Thursday", 'select': false}
  ];
  setButton(int i, bool val) {
    editAvail[i]['select'] = val;
    notifyListeners();
    print(val);
  }
}