import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../addtime_model.dart';
import '../setAvailabilitymodel.dart';

class SetAvailProvider extends ChangeNotifier {
  late SetAvailabilityModel setAvailabilityModel;
  AddTimeModel addTimeModel =AddTimeModel();

  List<AddTimeModel> addTime = [];
  List<SetAvailabilityModel>availList=[];
  bool load = false;
  String message='';

  onAdd() {
    if (addTime.length < 5) {
      addTime.add(AddTimeModel());
      notifyListeners();
    }
  }

  onDelete(int index) {
    if (addTime.length < 0) {
      addTime.removeAt(index);
      notifyListeners();
    }
  }

  String selectItem = 'Time Zone';
  var items = [
    '',
    'Time Zone',
    'Item 4',
    'Item 5',
  ];

  setSelectedItem(value) {
    selectItem = value;
    notifyListeners();
  }

  selectButton(int i, bool val) {
    time[i]['select'] = val;
    notifyListeners();
    print(val);
  }

  List time = [
    {"txt": "Sunday", "select": false},
    {"txt": "Monday", "select": false},
    {"txt": "Tuesday", "select": false},
    {"txt": "Wednesday", "select": false},
    {"txt": "Thursday", 'select': false}
  ];
}

//"userId":"62eb589c480e1448b4269337"
