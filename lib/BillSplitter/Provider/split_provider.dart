import 'package:flutter/material.dart';
import 'package:shopping_app/BillSplitter/Model/split_model.dart';

import '../Components/param_list.dart';
import '../Components/sam_list.dart';
import '../Components/bharti_list.dart';

class SplitProvider extends ChangeNotifier {
  List<SplitModel> addImage = [];
  void onAdd() {
    if (addImage.length < 10) {
      addImage.add(SplitModel());
      notifyListeners();
    }
  }
  void onDelete() {
    if (addImage.length<0);
    addImage.removeAt(index);
    notifyListeners();
  }
  List item = [
    'Sam',
    'Param',
    'Bharti',
  ];
  int index=0;
  var col;
  var sel = true;
  bool select = true;
  int seleC = 0;

  selectCat() {
    switch (seleC) {
      case 0:
        return SamList();
      case 1:
        return ParamList();
      case 2:
        return BhartiList();
    }
  }

  selectText(bool val) {
    select = val;
    notifyListeners();
  }

  selectButton(bool val) {
    sel = val;
    notifyListeners();
  }
  addList(icn){
    index=icn;
  }
}
