import 'package:flutter/cupertino.dart';

import '../widgets/AvailList/availability_list.dart';


class AvailabilityProvider extends ChangeNotifier {
  bool change = true;
  var select = 0;


  selectCat() {
    switch (select) {
      case 0:
        return AvailabilityList();
      case 1:
        return SizedBox();
    }
  }

  /// AvailabilityText
  selectButton(int index) {
    select = index;
    notifyListeners();
  }

  /// DropDowm
  setSelection(select) {
    change = select;
    notifyListeners();
  }

}
