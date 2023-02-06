import 'package:flutter/material.dart';

class BurgerProvider extends ChangeNotifier {
  var select = 0;
  var selburger = 0;
  int count = 0;
  int add = 0;
  List text = ['Burgers', 'Burrito', 'Big French', 'Burger'];
  List img = [
    'https://freepngimg.com/thumb/android/67382-food-big-hamburger-fast-burger-png-download-free.png',
    'https://www.pngmart.com/files/5/Burrito-Transparent-Background.png',
    'https://www.freepnglogos.com/uploads/fries-png/premium-french-fries-photos-7.png',
    'https://www.freepnglogos.com/uploads/fries-png/premium-french-fries-photos-7.png'
  ];

  void increment() {
    count++;
    notifyListeners();
  }

  void decrement() {
    count--;
    notifyListeners();
  }

  void addition() {
    add++;
    notifyListeners();
  }
}
