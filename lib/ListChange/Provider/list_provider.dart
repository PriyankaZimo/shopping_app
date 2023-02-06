import 'package:flutter/cupertino.dart';

import '../Components/biscuit_list.dart';
import '../Components/cake_list.dart';
import '../Components/pastry_list.dart';

class ListProvider extends ChangeNotifier{

  List item = ['Cake', 'Pastry', 'Biscuits', 'Cake'];
  late int col;
  int select=0;


  selectCategories() {
    switch (select) {
      case 0:
        return CakeList();
      case 1:
        return PastryList();
      case 2:
        return BiscuitList();
      case 3:
        return CakeList();
    }
  }
}