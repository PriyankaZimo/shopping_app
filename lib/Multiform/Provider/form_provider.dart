
import 'package:flutter/cupertino.dart';

import '../user_model.dart';

class FormProvider extends ChangeNotifier {
  List<User> logData = [];
  void onAdd() {
    if (logData.length < 10) {
      logData.add(User());
      notifyListeners();
    }
  }

  void onDelete(int index) {
    if (logData.length<0);
    logData.removeAt(index);
    notifyListeners();
  }
}
